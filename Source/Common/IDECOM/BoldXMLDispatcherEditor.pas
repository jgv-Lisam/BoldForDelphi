unit BoldXMLDispatcherEditor;

interface

uses
  DesignEditors,
  DesignIntf;

type
  { forward declarations }
  TBoldXMLDispatcherEditor = class;

  { TBoldXMLDispatcherEditor }
  TBoldXMLDispatcherEditor = class(TDefaultEditor)
  protected
    procedure EditProperty(const PropertyEditor: IProperty; var Continue: Boolean); override;
  public
    procedure ExecuteVerb(Index: Integer); override;
    function GetVerb(Index: Integer): string; override;
    function GetVerbCount: Integer; override;
  end;

implementation

uses
  BoldComConst;

{ TBoldXMLDispatcherEditor }

procedure TBoldXMLDispatcherEditor.EditProperty(
  const PropertyEditor: IProperty; var Continue: Boolean);
begin
  if PropertyEditor.GetName = 'Actions' then // do not localize
  begin
    PropertyEditor.Edit;
    Continue := False;
  end;
end;

procedure TBoldXMLDispatcherEditor.ExecuteVerb(Index: Integer);
begin
  inherited;
  case Index of
    0: Edit;
  end;
end;

function TBoldXMLDispatcherEditor.GetVerb(Index: Integer): string;
begin
  case Index of
    0: Result := sEditActions;
  end;
end;

function TBoldXMLDispatcherEditor.GetVerbCount: Integer;
begin
  Result := 1;
end;

end.
