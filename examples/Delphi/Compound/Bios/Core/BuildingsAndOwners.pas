(*****************************************)
(*      This file is autogenerated       *)
(*   Any manual changes will be LOST!    *)
(*****************************************)
(* Generated 2002-04-15 15:11:17         *)
(*****************************************)
(* This file should be stored in the     *)
(* same directory as the form/datamodule *)
(* with the corresponding model          *)
(*****************************************)
(* Copyright notice:                     *)
(*                                       *)
(*****************************************)

unit BuildingsAndOwners;

{$DEFINE BuildingsAndOwners_unitheader}
{$INCLUDE BuildingsAndOwners_Interface.inc}

uses
  // implementation uses
  dialogs,
  // implementation dependencies
  // other
  BoldGeneratedCodeDictionary;

{ Includefile for methodimplementations }

{$INCLUDE Building.inc}
{$INCLUDE Person.inc}
{$INCLUDE ResidentialBuilding.inc}

const
  BoldMemberAssertInvalidObjectType: string = 'Object of singlelink (%s.%s) is of wrong type (is %s, should be %s)';

{ TBusinessClassesRoot }

procedure TBusinessClassesRootList.Add(NewObject: TBusinessClassesRoot);
begin
  if Assigned(NewObject) then
    AddElement(NewObject);
end;

function TBusinessClassesRootList.IndexOf(anObject: TBusinessClassesRoot): Integer;
begin
  result := IndexOfElement(anObject);
end;

function TBusinessClassesRootList.Includes(anObject: TBusinessClassesRoot) : Boolean;
begin
  result := IncludesElement(anObject);
end;

function TBusinessClassesRootList.AddNew: TBusinessClassesRoot;
begin
  result := TBusinessClassesRoot(InternalAddNew);
end;

procedure TBusinessClassesRootList.Insert(index: Integer; NewObject: TBusinessClassesRoot);
begin
  if assigned(NewObject) then
    InsertElement(index, NewObject);
end;

function TBusinessClassesRootList.GetBoldObject(index: Integer): TBusinessClassesRoot;
begin
  result := TBusinessClassesRoot(GetElement(index));
end;

procedure TBusinessClassesRootList.SetBoldObject(index: Integer; NewObject: TBusinessClassesRoot);
begin;
  SetElement(index, NewObject);
end;

{ TBuilding }

function TBuilding._Get_M_ZipCode: TBAInteger;
begin
  assert(ValidateMember('TBuilding', 'ZipCode', 0, TBAInteger));
  Result := TBAInteger(BoldMembers[0]);
end;

function TBuilding._GetZipCode: Integer;
begin
  Result := M_ZipCode.AsInteger;
end;

procedure TBuilding._SetZipCode(NewValue: Integer);
begin
  M_ZipCode.AsInteger := NewValue;
end;

function TBuilding._Get_M_Address: TBAString;
begin
  assert(ValidateMember('TBuilding', 'Address', 1, TBAString));
  Result := TBAString(BoldMembers[1]);
end;

function TBuilding._GetAddress: String;
begin
  Result := M_Address.AsString;
end;

procedure TBuilding._SetAddress(NewValue: String);
begin
  M_Address.AsString := NewValue;
end;

function TBuilding._GetOwners: TPersonList;
begin
  assert(ValidateMember('TBuilding', 'Owners', 2, TPersonList));
  Result := TPersonList(BoldMembers[2]);
end;

function TBuilding._GetOwnership: TOwnershipList;
begin
  assert(ValidateMember('TBuilding', 'Ownership', 3, TOwnershipList));
  Result := TOwnershipList(BoldMembers[3]);
end;

procedure TBuildingList.Add(NewObject: TBuilding);
begin
  if Assigned(NewObject) then
    AddElement(NewObject);
end;

function TBuildingList.IndexOf(anObject: TBuilding): Integer;
begin
  result := IndexOfElement(anObject);
end;

function TBuildingList.Includes(anObject: TBuilding) : Boolean;
begin
  result := IncludesElement(anObject);
end;

function TBuildingList.AddNew: TBuilding;
begin
  result := TBuilding(InternalAddNew);
end;

procedure TBuildingList.Insert(index: Integer; NewObject: TBuilding);
begin
  if assigned(NewObject) then
    InsertElement(index, NewObject);
end;

function TBuildingList.GetBoldObject(index: Integer): TBuilding;
begin
  result := TBuilding(GetElement(index));
end;

procedure TBuildingList.SetBoldObject(index: Integer; NewObject: TBuilding);
begin;
  SetElement(index, NewObject);
end;

{ TOwnership }

function TOwnership._Get_M_Owners: TBoldObjectReference;
begin
  assert(ValidateMember('TOwnership', 'Owners', 0, TBoldObjectReference));
  Result := TBoldObjectReference(BoldMembers[0]);
end;

function TOwnership._GetOwners: TPerson;
begin
  assert(not assigned(M_Owners.BoldObject) or (M_Owners.BoldObject is TPerson), SysUtils.format(BoldMemberAssertInvalidObjectType, [ClassName, 'Owners', M_Owners.BoldObject.ClassName, 'TPerson']));
  Result := TPerson(M_Owners.BoldObject);
end;

function TOwnership._Get_M_OwnedBuildings: TBoldObjectReference;
begin
  assert(ValidateMember('TOwnership', 'OwnedBuildings', 1, TBoldObjectReference));
  Result := TBoldObjectReference(BoldMembers[1]);
end;

function TOwnership._GetOwnedBuildings: TBuilding;
begin
  assert(not assigned(M_OwnedBuildings.BoldObject) or (M_OwnedBuildings.BoldObject is TBuilding), SysUtils.format(BoldMemberAssertInvalidObjectType, [ClassName, 'OwnedBuildings', M_OwnedBuildings.BoldObject.ClassName, 'TBuilding']));
  Result := TBuilding(M_OwnedBuildings.BoldObject);
end;

procedure TOwnershipList.Add(NewObject: TOwnership);
begin
  if Assigned(NewObject) then
    AddElement(NewObject);
end;

function TOwnershipList.IndexOf(anObject: TOwnership): Integer;
begin
  result := IndexOfElement(anObject);
end;

function TOwnershipList.Includes(anObject: TOwnership) : Boolean;
begin
  result := IncludesElement(anObject);
end;

function TOwnershipList.AddNew: TOwnership;
begin
  result := TOwnership(InternalAddNew);
end;

procedure TOwnershipList.Insert(index: Integer; NewObject: TOwnership);
begin
  if assigned(NewObject) then
    InsertElement(index, NewObject);
end;

function TOwnershipList.GetBoldObject(index: Integer): TOwnership;
begin
  result := TOwnership(GetElement(index));
end;

procedure TOwnershipList.SetBoldObject(index: Integer; NewObject: TOwnership);
begin;
  SetElement(index, NewObject);
end;

{ TPerson }

function TPerson._Get_M_FirstName: TBAString;
begin
  assert(ValidateMember('TPerson', 'FirstName', 0, TBAString));
  Result := TBAString(BoldMembers[0]);
end;

function TPerson._GetFirstName: String;
begin
  Result := M_FirstName.AsString;
end;

procedure TPerson._SetFirstName(NewValue: String);
begin
  M_FirstName.AsString := NewValue;
end;

function TPerson._Get_M_LastName: TBAString;
begin
  assert(ValidateMember('TPerson', 'LastName', 1, TBAString));
  Result := TBAString(BoldMembers[1]);
end;

function TPerson._GetLastName: String;
begin
  Result := M_LastName.AsString;
end;

procedure TPerson._SetLastName(NewValue: String);
begin
  M_LastName.AsString := NewValue;
end;

function TPerson._Get_M_Assets: TBACurrency;
begin
  assert(ValidateMember('TPerson', 'Assets', 2, TBACurrency));
  Result := TBACurrency(BoldMembers[2]);
end;

function TPerson._GetAssets: Currency;
begin
  Result := M_Assets.AsCurrency;
end;

procedure TPerson._SetAssets(NewValue: Currency);
begin
  M_Assets.AsCurrency := NewValue;
end;

function TPerson._Get_M_IsMarried: TBABoolean;
begin
  assert(ValidateMember('TPerson', 'IsMarried', 3, TBABoolean));
  Result := TBABoolean(BoldMembers[3]);
end;

function TPerson._GetIsMarried: Boolean;
begin
  Result := M_IsMarried.AsBoolean;
end;

procedure TPerson._SetIsMarried(NewValue: Boolean);
begin
  M_IsMarried.AsBoolean := NewValue;
end;

function TPerson._Get_M_Home: TBoldObjectReference;
begin
  assert(ValidateMember('TPerson', 'Home', 4, TBoldObjectReference));
  Result := TBoldObjectReference(BoldMembers[4]);
end;

function TPerson._GetHome: TResidential_Building;
begin
  assert(not assigned(M_Home.BoldObject) or (M_Home.BoldObject is TResidential_Building), SysUtils.format(BoldMemberAssertInvalidObjectType, [ClassName, 'Home', M_Home.BoldObject.ClassName, 'TResidential_Building']));
  Result := TResidential_Building(M_Home.BoldObject);
end;

procedure TPerson._SetHome(value: TResidential_Building);
begin
  M_Home.BoldObject := value;
end;

function TPerson._GetOwnedBuildings: TBuildingList;
begin
  assert(ValidateMember('TPerson', 'OwnedBuildings', 5, TBuildingList));
  Result := TBuildingList(BoldMembers[5]);
end;

function TPerson._GetOwnership: TOwnershipList;
begin
  assert(ValidateMember('TPerson', 'Ownership', 6, TOwnershipList));
  Result := TOwnershipList(BoldMembers[6]);
end;

procedure TPersonList.Add(NewObject: TPerson);
begin
  if Assigned(NewObject) then
    AddElement(NewObject);
end;

function TPersonList.IndexOf(anObject: TPerson): Integer;
begin
  result := IndexOfElement(anObject);
end;

function TPersonList.Includes(anObject: TPerson) : Boolean;
begin
  result := IncludesElement(anObject);
end;

function TPersonList.AddNew: TPerson;
begin
  result := TPerson(InternalAddNew);
end;

procedure TPersonList.Insert(index: Integer; NewObject: TPerson);
begin
  if assigned(NewObject) then
    InsertElement(index, NewObject);
end;

function TPersonList.GetBoldObject(index: Integer): TPerson;
begin
  result := TPerson(GetElement(index));
end;

procedure TPersonList.SetBoldObject(index: Integer; NewObject: TPerson);
begin;
  SetElement(index, NewObject);
end;

{ TResidential_Building }

function TResidential_Building._Get_M_TotalRent: TBACurrency;
begin
  assert(ValidateMember('TResidential_Building', 'TotalRent', 4, TBACurrency));
  Result := TBACurrency(BoldMembers[4]);
end;

function TResidential_Building._GetTotalRent: Currency;
begin
  Result := M_TotalRent.AsCurrency;
end;

procedure TResidential_Building._SetTotalRent(NewValue: Currency);
begin
  M_TotalRent.AsCurrency := NewValue;
end;

function TResidential_Building._GetResidents: TPersonList;
begin
  assert(ValidateMember('TResidential_Building', 'Residents', 5, TPersonList));
  Result := TPersonList(BoldMembers[5]);
end;

procedure TResidential_BuildingList.Add(NewObject: TResidential_Building);
begin
  if Assigned(NewObject) then
    AddElement(NewObject);
end;

function TResidential_BuildingList.IndexOf(anObject: TResidential_Building): Integer;
begin
  result := IndexOfElement(anObject);
end;

function TResidential_BuildingList.Includes(anObject: TResidential_Building) : Boolean;
begin
  result := IncludesElement(anObject);
end;

function TResidential_BuildingList.AddNew: TResidential_Building;
begin
  result := TResidential_Building(InternalAddNew);
end;

procedure TResidential_BuildingList.Insert(index: Integer; NewObject: TResidential_Building);
begin
  if assigned(NewObject) then
    InsertElement(index, NewObject);
end;

function TResidential_BuildingList.GetBoldObject(index: Integer): TResidential_Building;
begin
  result := TResidential_Building(GetElement(index));
end;

procedure TResidential_BuildingList.SetBoldObject(index: Integer; NewObject: TResidential_Building);
begin;
  SetElement(index, NewObject);
end;

function GeneratedCodeCRC: String;
begin
  result := '1104765102';
end;

procedure InstallObjectListClasses(BoldObjectListClasses: TBoldGeneratedClassList);
begin
  BoldObjectListClasses.AddObjectEntry('BusinessClassesRoot', TBusinessClassesRootList);
  BoldObjectListClasses.AddObjectEntry('Building', TBuildingList);
  BoldObjectListClasses.AddObjectEntry('Ownership', TOwnershipList);
  BoldObjectListClasses.AddObjectEntry('Person', TPersonList);
  BoldObjectListClasses.AddObjectEntry('Residential_Building', TResidential_BuildingList);
end;

procedure InstallBusinessClasses(BoldObjectClasses: TBoldGeneratedClassList);
begin
  BoldObjectClasses.AddObjectEntry('BusinessClassesRoot', TBusinessClassesRoot);
  BoldObjectClasses.AddObjectEntry('Building', TBuilding);
  BoldObjectClasses.AddObjectEntry('Ownership', TOwnership);
  BoldObjectClasses.AddObjectEntry('Person', TPerson);
  BoldObjectClasses.AddObjectEntry('Residential_Building', TResidential_Building);
end;

var
  CodeDescriptor: TBoldGeneratedCodeDescriptor;

initialization
  CodeDescriptor := GeneratedCodes.AddGeneratedCodeDescriptorWithFunc('BuildingsAndOwners', InstallBusinessClasses, InstallObjectListClasses, GeneratedCodeCRC);
finalization
  GeneratedCodes.Remove(CodeDescriptor);
end.

