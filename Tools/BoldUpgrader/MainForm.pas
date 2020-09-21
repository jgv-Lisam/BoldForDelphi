unit MainForm;

interface

uses
  SysUtils,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  StdCtrls,
  DirectoryTraverser,
  ComCtrls,
  BoldModelLoader,
  ExtCtrls,
  BoldSubscription,
  BoldBld,
  BoldModelLink,
  BoldLogHandler,
  BoldTypeNameEditor,
  BoldModel,
  BoldTypeNameHandle,
  Grids,
  Outline,
  DirOutln, BoldAbstractModel;

type
  TForm1 = class(TForm)
    edPath: TEdit;
    RichEdit1: TRichEdit;
    btnStart: TButton;
    OpenDialog2: TOpenDialog;
    Label1: TLabel;
    ListBox1: TListBox;
    Label2: TLabel;
    Label3: TLabel;
    BoldModel1: TBoldModel;
    btnLoadModel: TButton;
    StringDescendants: TMemo;
    Label4: TLabel;
    BoldTypeNameHandle1: TBoldTypeNameHandle;
    btnLoadDic: TButton;
    OpenDialog1: TOpenDialog;
    btnEditDic: TButton;
    btnCleanup: TButton;
    cbDFMastext: TCheckBox;
    DirectoryOutline1: TDirectoryOutline;
    btnDirChoose: TButton;
    procedure btnStartClick(Sender: TObject);
    procedure UpdaterFile(CurrentDirectory: String; CurrentFile: TSearchRec);
    procedure CleanupFile(CurrentDirectory: String; CurrentFile: TSearchRec);
    procedure btnLoadDicClick(Sender: TObject);
    procedure btnLoadModelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnEditDicClick(Sender: TObject);
    procedure btnCleanupClick(Sender: TObject);
    procedure btnDirChooseClick(Sender: TObject);
    procedure ChangeDirectory(Sender: TObject);
  private
    { Private declarations }
    ModelLoadOK : Boolean;
    M_Members: TStringList;
    NonStringAttributes: TStringList;
    AttributeNames: TStringList;
    AttributeAccessors: TStringList;
  public
    { Public declarations }

  end;

var
  abort : boolean;
  Form1: TForm1;

implementation

uses
  Bold1To2Upgrader,
  BoldTypeNameDictionary,
  FileReplacer;

{$R *.DFM}

Type
  TFileType = (ftpas, ftinc, ftdfm, ftdpk);
var
  FileType: TFileType;


procedure TForm1.btnStartClick(Sender: TObject);
var
  Updater: TDirectoryTraverser;
begin
  DirectoryOutline1.Visible := false;
  if ListBox1.Selected[3] and not ModelLoadOK then
  begin
    ShowMessage( 'ModelAware updates requested, but no model loaded' );
    exit;
  end;

  Updater := TDirectoryTraverser.Create(nil);
  Updater.onFile := UpdaterFile;
  abort := false;
  BtnStart.Caption := 'Working';
  replacements.Clear;
  replacementCount := 0;
  Updater.Path := edPath.text;

  FileType := ftPas;
  Updater.Mask := '*.pas';
  updater.execute;

  FileType := ftinc;
  Updater.Mask := '*.inc';
  updater.execute;

  FileType := ftdfm;
  Updater.Mask := '*.dfm';
  Updater.Execute;

  FileType := ftdpk;
  Updater.Mask := '*.dpk';
  Updater.Execute;

  btnStart.Caption := 'Done!';
  Beep;
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.AddStrings( replacements );
  Updater.Free;
end;

procedure TForm1.UpdaterFile(CurrentDirectory: String;
  CurrentFile: TSearchRec);
var
  i : integer;
  FileContents : TStringList;
  Wastext : Boolean;
begin
  if abort then exit;
  try

    Caption := CurrentFile.Name + '/' + IntToStr( replacementCount );
    application.processMessages;
    i := replacements.Count;
    FileContents := TStringList.Create;

    case FileType of
      ftDFM:
      begin
        WasText := dfmToStrList( CurrentDirectory+CurrentFile.Name, FileContents );

        if ListBox1.Selected[1] then
          UpdateComponents( FileContents );
        if ListBox1.Selected[4] then
          UpdateOptionalComponents( FileContents, CurrentDirectory+CurrentFile.Name );

        if ListBox1.Selected[6] then
          UpdateRootHandle( FileContents );

        if ListBox1.Selected[7] then
            UpdateDFMTo206( FileContents );

        if ListBox1.Selected[8] then
            Update20to25( FileContents );

        if replacements.count <> i then
          StrListToDfm(CurrentDirectory+CurrentFile.Name, FileContents,
            (cbDFMastext.State = cbChecked) or
            ((cbDFMastext.state = cbGrayed) and wasText));
      end;
      ftInc, ftPas:
      begin
        FileContents.loadfromFile(CurrentDirectory+CurrentFile.Name);
        if pos( '(*    This file is autogenerated    *)' , FileContents.Text ) = 0 then
        begin
          if ListBox1.Selected[0] then
            UpdateIdentifiers( FileContents );
          if ListBox1.Selected[2] then
            UpdateUnitNames( FileContents );
          if ListBox1.Selected[3] and ModelLoadOK then
            UpdateModelAware( FileContents, M_Members, NonStringAttributes, AttributeNames, AttributeAccessors );

        end;

        if replacements.count <> i then
          FileContents.SaveToFile( CurrentDirectory+CurrentFile.Name);
      end;
      ftdpk: begin
        FileContents.loadfromFile(CurrentDirectory+CurrentFile.Name);
        if ListBox1.Selected[5] then
          UpdatePackages( FileContents );
        if replacements.count <> i then
          FileContents.SaveToFile( CurrentDirectory+CurrentFile.Name);
      end;
    end;

    FileContents.Free;

    Caption := CurrentFile.Name + '/' + IntToStr( replacementCount );
    application.processMessages;
    if replacements.count <> i then
      replacements.Insert(i, '******** ' + CurrentFile.Name);
  except
    on e : exception do begin
      if MessageDlg('Convert failed for '+CurrentDirectory+CurrentFile.Name+' reason: '+#13+#10+
        e.message + #13#10+#13#10 +'Do you want to abort?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      abort := true;
    end;
  end;

end;

procedure TForm1.btnLoadDicClick(Sender: TObject);
begin
  If OpenDialog2.Execute then
    BoldTypeNameHandle1.Dictionary.LoadFromFile( OpenDialog2.FileName );
end;

procedure TForm1.btnLoadModelClick(Sender: TObject);
var
  Link : TBoldModelLink;
  i, j, k : integer;
  StringDescendant: Boolean;
  Mapping: TBoldTypeNameMapping;
  ModelName: String;

begin
  Modelname := ModelLoader.ModelLoadDialog('');
  if Modelname <> '' then
  begin
    ModelLoader.ModelFileToBoldModel(ModelName, BoldModel1);
    ModelLoadOk := true;
    M_Members := TStringList.Create;
    NonStringAttributes := TStringList.Create;
    AttributeNames:= TStringList.Create;
    AttributeAccessors:= TStringList.Create;
    for i := 0 to BoldModel1.MoldModel.Classes.Count-1 do
    begin
      for j := 0 to BoldModel1.MoldModel.Classes[i].Attributes.Count-1 do
      begin
        M_Members.Add(BoldModel1.MoldModel.Classes[i].Attributes[j].ExpandedDelphiName);

        StringDescendant := false;
        for k := 0 to StringDescendants.Lines.Count-1 do
          if UpperCase( BoldModel1.MoldModel.Classes[i].Attributes[j].BoldType) = UpperCase( StringDescendants.Lines[k]) then
            StringDescendant := true;
        if not StringDescendant then
          NonStringAttributes.Add( BoldModel1.MoldModel.Classes[i].Attributes[j].ExpandedDelphiName );

        Mapping:= BoldTypeNameHandle1.Dictionary.MappingForModelName[ BoldModel1.MoldModel.Classes[i].Attributes[j].BoldType];
        if Assigned(Mapping) then
        begin
          AttributeNames.Add( BoldModel1.MoldModel.Classes[i].Attributes[j].ExpandedDelphiName);
          AttributeAccessors.Add( Mapping.Accessor );
        end;
      end;

      for j := 0 to BoldModel1.MoldModel.Classes[i].Roles.Count-1 do
        if not BoldModel1.MoldModel.Classes[i].Roles[j].Multi then
        begin
          M_Members.Add(BoldModel1.MoldModel.Classes[i].Roles[j].ExpandedDelphiName);
        end;
    end;
    ListBox1.Selected[3] := true;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
{  ListBox1.Selected[0] := true;
  ListBox1.Selected[1] := true;
  ListBox1.Selected[2] := true;
  ListBox1.Selected[4] := true;
  ListBox1.Selected[5] := true;
  ListBox1.Selected[6] := true;}

  ListBox1.Selected[8] := true;
end;

procedure TForm1.btnEditDicClick(Sender: TObject);
begin
  With TBoldTypeNameEditorForm.Create(nil) do begin
    LoadFromDictionary( BoldTypeNameHandle1.Dictionary );
    if ShowModal = mrOK then
    begin
      SaveToDictionary( BoldTypeNameHandle1.Dictionary );
      BoldTypeNameHandle1.Dictionary.SaveToFile( ExtractFilePAth( ParamStr( 0) ) + 'BoldUpgrader.dic' );
      ShowMessage( 'The dictionary has been saved as '+ExtractFilePAth( ParamStr( 0) ) + 'BoldUpgrader.dic' );
    end;
    Free;
  end;
end;

procedure TForm1.btnCleanupClick(Sender: TObject);
var
  Updater: TDirectoryTraverser;
begin
  DirectoryOutline1.Visible := false;
  if MessageDlg('Are you sure you want to remove all comments inserted by the tool?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    Updater := TDirectoryTraverser.Create(nil);
    Updater.onFile := CleanupFile;
    abort := false;
    btnStart.Caption := 'Working';
    replacements.Clear;
    replacementCount := 0;
    Updater.Path := edPath.text;
    Updater.Execute;
    Updater.Free;
  end;
end;

procedure TForm1.CleanupFile(CurrentDirectory: String;
  CurrentFile: TSearchRec);
var
  i : integer;
  FileContents : TStringList;
begin
  if abort then exit;
  try
    Caption := CurrentFile.Name + '/' + IntToStr( replacementCount );
    application.processMessages;
    i := replacements.Count;
    FileContents := TStringList.Create;

    FileContents.loadfromFile(CurrentDirectory+CurrentFile.Name);
    if pos( '(*    This file is autogenerated    *)' , FileContents.Text ) = 0 then
      CleanUpComments(FileContents );
    if replacements.count <> i then
      FileContents.SaveToFile( CurrentDirectory+CurrentFile.Name);

    FileContents.Free;

    Caption := CurrentFile.Name + '/' + IntToStr( replacementCount );
    application.processMessages;
    if replacements.count <> i then
      replacements.Insert(i, '******** ' + CurrentFile.Name);
  except
    on e : exception do begin
      if MessageDlg('Cleanup failed for '+CurrentDirectory+CurrentFile.Name+' reason: '+#13+#10+
        e.message + #13#10+#13#10 +'Do you want to abort?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      abort := true;
    end;
  end;

end;

procedure TForm1.btnDirChooseClick(Sender: TObject);
begin
  DirectoryOutLine1.visible := true;
end;

procedure TForm1.ChangeDirectory(Sender: TObject);
begin
  EdPath.Text := DirectoryOutline1.Directory;
end;

end.
