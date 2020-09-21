/*****************************************/
/*      This file is autogenerated       */
/*   Any manual changes will be LOST!    */
/*****************************************/
/* Generated 2002-01-18 15:11:31         */
/*****************************************/
/* This file should be stored in the     */
/* same directory as the form/datamodule */
/* with the corresponding model          */
/*****************************************/
/* Copyright notice:                     */
/*                                       */
/*****************************************/

#include <vcl.h>
#pragma hdrstop

#include "BldOwnClasses.hpp"

// interface uses

// interface dependancies

// attribute dependancies
#pragma link "BoldAttributes"

#pragma link "BoldDefs"
#pragma link "BoldSubscription"
#pragma link "BoldDeriver"
#pragma link "BoldElements"
#pragma link "BoldDomainElement"
#pragma link "BoldSystemRT"
#pragma link "BoldSystem"
#pragma link "BoldGeneratedCodeDictionary"

// implementation uses
#include "dialogs.hpp"
#pragma link "dialogs"

// implementation dependancies

#include "BoldGeneratedCodeDictionary.hpp"

// Includefiles for methodimplementations

#include "Building.cpp"
#include "Person.cpp"
#include "ResidentialBuilding.cpp"

#define BoldMemberAssertInvalidObjectType = "Object of singlelink (%s.%s) is of wrong type (is %s, should be %s)";

// TBusinessClassesRoot

void __fastcall TBusinessClassesRootList::Add(TBusinessClassesRoot *NewObject)
{
  if (NewObject != NULL)
  {
    AddElement(NewObject);
  }
}

int __fastcall TBusinessClassesRootList::IndexOf(TBusinessClassesRoot *anObject)
{
  int result = IndexOfElement(anObject);
  return result;
}

int __fastcall TBusinessClassesRootList::Includes(TBusinessClassesRoot *anObject) // boolean?
{
  int result = IncludesElement(anObject);
  return result;
}

TBusinessClassesRoot* __fastcall TBusinessClassesRootList::AddNew()
{
  TBusinessClassesRoot *result = dynamic_cast<TBusinessClassesRoot*>(InternalAddNew());
  return result;
}

void __fastcall TBusinessClassesRootList::Insert(int index, TBusinessClassesRoot *NewObject)
{
  if (NewObject != NULL)
  {
    InsertElement(index, NewObject);
  }
}

TBusinessClassesRoot* __fastcall TBusinessClassesRootList::GetBoldObject(int index)
{
  TBusinessClassesRoot *result = dynamic_cast<TBusinessClassesRoot*>(GetElement(index));
  return result;
}

void __fastcall TBusinessClassesRootList::SetBoldObject(int index, TBusinessClassesRoot *NewObject)
{
  SetElement(index, NewObject);
}

// TBuilding

TBAInteger* __fastcall TBuilding::_Get_M_ZipCode()
{
  // assert(ValidateMember("TBuilding", "ZipCode", 0, __classid(TBAInteger)));
  TBAInteger *result = dynamic_cast<TBAInteger*>(BoldMembers[0]);
  return result;
};

Integer __fastcall TBuilding::_GetZipCode()
{
  Integer result = M_ZipCode->AsInteger;
  return result;
}

void __fastcall TBuilding::_SetZipCode(Integer NewValue)
{
  M_ZipCode->AsInteger = NewValue;
}

TBAString* __fastcall TBuilding::_Get_M_Address()
{
  // assert(ValidateMember("TBuilding", "Address", 1, __classid(TBAString)));
  TBAString *result = dynamic_cast<TBAString*>(BoldMembers[1]);
  return result;
};

String __fastcall TBuilding::_GetAddress()
{
  String result = M_Address->AsString;
  return result;
}

void __fastcall TBuilding::_SetAddress(String NewValue)
{
  M_Address->AsString = NewValue;
}

TPersonList* __fastcall TBuilding::_GetOwners()
{
  // assert(ValidateMember("TBuilding", "Owners", 2, __classid(TPersonList)));
  TPersonList *result = dynamic_cast<TPersonList*>(BoldMembers[2]);
  return result;
}

TOwnershipList* __fastcall TBuilding::_GetOwnership()
{
  // assert(ValidateMember("TBuilding", "Ownership", 3, __classid(TOwnershipList)));
  TOwnershipList *result = dynamic_cast<TOwnershipList*>(BoldMembers[3]);
  return result;
}

void __fastcall TBuildingList::Add(TBuilding *NewObject)
{
  if (NewObject != NULL)
  {
    AddElement(NewObject);
  }
}

int __fastcall TBuildingList::IndexOf(TBuilding *anObject)
{
  int result = IndexOfElement(anObject);
  return result;
}

int __fastcall TBuildingList::Includes(TBuilding *anObject) // boolean?
{
  int result = IncludesElement(anObject);
  return result;
}

TBuilding* __fastcall TBuildingList::AddNew()
{
  TBuilding *result = dynamic_cast<TBuilding*>(InternalAddNew());
  return result;
}

void __fastcall TBuildingList::Insert(int index, TBuilding *NewObject)
{
  if (NewObject != NULL)
  {
    InsertElement(index, NewObject);
  }
}

TBuilding* __fastcall TBuildingList::GetBoldObject(int index)
{
  TBuilding *result = dynamic_cast<TBuilding*>(GetElement(index));
  return result;
}

void __fastcall TBuildingList::SetBoldObject(int index, TBuilding *NewObject)
{
  SetElement(index, NewObject);
}

// TOwnership

TBoldObjectReference* __fastcall TOwnership::_Get_M_Owners()
{
  // assert(ValidateMember("TOwnership", "Owners", 0, __classid(TBoldObjectReference)));
  TBoldObjectReference *result = dynamic_cast<TBoldObjectReference*>(BoldMembers[0]);
  return result;
}

TPerson* _fastcall TOwnership::_GetOwners()
{
  // assert(not assigned(M_Owners->BoldObject) or (M_Owners->BoldObject is TPerson), SysUtils.format(BoldMemberAssertInvalidObjectType, [ClassName, Owners, M_Owners->BoldObject->ClassName, __classid(TPerson)]));
  TPerson *result = dynamic_cast<TPerson*>(M_Owners->BoldObject);
  return result;
}

TBoldObjectReference* __fastcall TOwnership::_Get_M_OwnedBuildings()
{
  // assert(ValidateMember("TOwnership", "OwnedBuildings", 1, __classid(TBoldObjectReference)));
  TBoldObjectReference *result = dynamic_cast<TBoldObjectReference*>(BoldMembers[1]);
  return result;
}

TBuilding* _fastcall TOwnership::_GetOwnedBuildings()
{
  // assert(not assigned(M_OwnedBuildings->BoldObject) or (M_OwnedBuildings->BoldObject is TBuilding), SysUtils.format(BoldMemberAssertInvalidObjectType, [ClassName, OwnedBuildings, M_OwnedBuildings->BoldObject->ClassName, __classid(TBuilding)]));
  TBuilding *result = dynamic_cast<TBuilding*>(M_OwnedBuildings->BoldObject);
  return result;
}

void __fastcall TOwnershipList::Add(TOwnership *NewObject)
{
  if (NewObject != NULL)
  {
    AddElement(NewObject);
  }
}

int __fastcall TOwnershipList::IndexOf(TOwnership *anObject)
{
  int result = IndexOfElement(anObject);
  return result;
}

int __fastcall TOwnershipList::Includes(TOwnership *anObject) // boolean?
{
  int result = IncludesElement(anObject);
  return result;
}

TOwnership* __fastcall TOwnershipList::AddNew()
{
  TOwnership *result = dynamic_cast<TOwnership*>(InternalAddNew());
  return result;
}

void __fastcall TOwnershipList::Insert(int index, TOwnership *NewObject)
{
  if (NewObject != NULL)
  {
    InsertElement(index, NewObject);
  }
}

TOwnership* __fastcall TOwnershipList::GetBoldObject(int index)
{
  TOwnership *result = dynamic_cast<TOwnership*>(GetElement(index));
  return result;
}

void __fastcall TOwnershipList::SetBoldObject(int index, TOwnership *NewObject)
{
  SetElement(index, NewObject);
}

// TPerson

TBAString* __fastcall TPerson::_Get_M_FirstName()
{
  // assert(ValidateMember("TPerson", "FirstName", 0, __classid(TBAString)));
  TBAString *result = dynamic_cast<TBAString*>(BoldMembers[0]);
  return result;
};

String __fastcall TPerson::_GetFirstName()
{
  String result = M_FirstName->AsString;
  return result;
}

void __fastcall TPerson::_SetFirstName(String NewValue)
{
  M_FirstName->AsString = NewValue;
}

TBAString* __fastcall TPerson::_Get_M_LastName()
{
  // assert(ValidateMember("TPerson", "LastName", 1, __classid(TBAString)));
  TBAString *result = dynamic_cast<TBAString*>(BoldMembers[1]);
  return result;
};

String __fastcall TPerson::_GetLastName()
{
  String result = M_LastName->AsString;
  return result;
}

void __fastcall TPerson::_SetLastName(String NewValue)
{
  M_LastName->AsString = NewValue;
}

TBACurrency* __fastcall TPerson::_Get_M_Assets()
{
  // assert(ValidateMember("TPerson", "Assets", 2, __classid(TBACurrency)));
  TBACurrency *result = dynamic_cast<TBACurrency*>(BoldMembers[2]);
  return result;
};

Currency __fastcall TPerson::_GetAssets()
{
  Currency result = M_Assets->AsCurrency;
  return result;
}

void __fastcall TPerson::_SetAssets(Currency NewValue)
{
  M_Assets->AsCurrency = NewValue;
}

TBABoolean* __fastcall TPerson::_Get_M_IsMarried()
{
  // assert(ValidateMember("TPerson", "IsMarried", 3, __classid(TBABoolean)));
  TBABoolean *result = dynamic_cast<TBABoolean*>(BoldMembers[3]);
  return result;
};

Boolean __fastcall TPerson::_GetIsMarried()
{
  Boolean result = M_IsMarried->AsBoolean;
  return result;
}

void __fastcall TPerson::_SetIsMarried(Boolean NewValue)
{
  M_IsMarried->AsBoolean = NewValue;
}

TBoldObjectReference* __fastcall TPerson::_Get_M_Home()
{
  // assert(ValidateMember("TPerson", "Home", 4, __classid(TBoldObjectReference)));
  TBoldObjectReference *result = dynamic_cast<TBoldObjectReference*>(BoldMembers[4]);
  return result;
}

TResidential_Building* _fastcall TPerson::_GetHome()
{
  // assert(not assigned(M_Home->BoldObject) or (M_Home->BoldObject is TResidential_Building), SysUtils.format(BoldMemberAssertInvalidObjectType, [ClassName, Home, M_Home->BoldObject->ClassName, __classid(TResidential_Building)]));
  TResidential_Building *result = dynamic_cast<TResidential_Building*>(M_Home->BoldObject);
  return result;
}

void __fastcall TPerson::_SetHome(TResidential_Building *value)
{
  M_Home->BoldObject = value;
}

TBuildingList* __fastcall TPerson::_GetOwnedBuildings()
{
  // assert(ValidateMember("TPerson", "OwnedBuildings", 5, __classid(TBuildingList)));
  TBuildingList *result = dynamic_cast<TBuildingList*>(BoldMembers[5]);
  return result;
}

TOwnershipList* __fastcall TPerson::_GetOwnership()
{
  // assert(ValidateMember("TPerson", "Ownership", 6, __classid(TOwnershipList)));
  TOwnershipList *result = dynamic_cast<TOwnershipList*>(BoldMembers[6]);
  return result;
}

void __fastcall TPersonList::Add(TPerson *NewObject)
{
  if (NewObject != NULL)
  {
    AddElement(NewObject);
  }
}

int __fastcall TPersonList::IndexOf(TPerson *anObject)
{
  int result = IndexOfElement(anObject);
  return result;
}

int __fastcall TPersonList::Includes(TPerson *anObject) // boolean?
{
  int result = IncludesElement(anObject);
  return result;
}

TPerson* __fastcall TPersonList::AddNew()
{
  TPerson *result = dynamic_cast<TPerson*>(InternalAddNew());
  return result;
}

void __fastcall TPersonList::Insert(int index, TPerson *NewObject)
{
  if (NewObject != NULL)
  {
    InsertElement(index, NewObject);
  }
}

TPerson* __fastcall TPersonList::GetBoldObject(int index)
{
  TPerson *result = dynamic_cast<TPerson*>(GetElement(index));
  return result;
}

void __fastcall TPersonList::SetBoldObject(int index, TPerson *NewObject)
{
  SetElement(index, NewObject);
}

// TResidential_Building

TBACurrency* __fastcall TResidential_Building::_Get_M_TotalRent()
{
  // assert(ValidateMember("TResidential_Building", "TotalRent", 4, __classid(TBACurrency)));
  TBACurrency *result = dynamic_cast<TBACurrency*>(BoldMembers[4]);
  return result;
};

Currency __fastcall TResidential_Building::_GetTotalRent()
{
  Currency result = M_TotalRent->AsCurrency;
  return result;
}

void __fastcall TResidential_Building::_SetTotalRent(Currency NewValue)
{
  M_TotalRent->AsCurrency = NewValue;
}

TPersonList* __fastcall TResidential_Building::_GetResidents()
{
  // assert(ValidateMember("TResidential_Building", "Residents", 5, __classid(TPersonList)));
  TPersonList *result = dynamic_cast<TPersonList*>(BoldMembers[5]);
  return result;
}

void __fastcall TResidential_BuildingList::Add(TResidential_Building *NewObject)
{
  if (NewObject != NULL)
  {
    AddElement(NewObject);
  }
}

int __fastcall TResidential_BuildingList::IndexOf(TResidential_Building *anObject)
{
  int result = IndexOfElement(anObject);
  return result;
}

int __fastcall TResidential_BuildingList::Includes(TResidential_Building *anObject) // boolean?
{
  int result = IncludesElement(anObject);
  return result;
}

TResidential_Building* __fastcall TResidential_BuildingList::AddNew()
{
  TResidential_Building *result = dynamic_cast<TResidential_Building*>(InternalAddNew());
  return result;
}

void __fastcall TResidential_BuildingList::Insert(int index, TResidential_Building *NewObject)
{
  if (NewObject != NULL)
  {
    InsertElement(index, NewObject);
  }
}

TResidential_Building* __fastcall TResidential_BuildingList::GetBoldObject(int index)
{
  TResidential_Building *result = dynamic_cast<TResidential_Building*>(GetElement(index));
  return result;
}

void __fastcall TResidential_BuildingList::SetBoldObject(int index, TResidential_Building *NewObject)
{
  SetElement(index, NewObject);
}

char *GeneratedCodeCRC()
{
  return "1104765102";
}

void __fastcall InstallObjectListClasses(TBoldGeneratedClassList *BoldObjectListClasses)
{
  BoldObjectListClasses->AddObjectEntry("BusinessClassesRoot", __classid(TBusinessClassesRootList));
  BoldObjectListClasses->AddObjectEntry("Building", __classid(TBuildingList));
  BoldObjectListClasses->AddObjectEntry("Ownership", __classid(TOwnershipList));
  BoldObjectListClasses->AddObjectEntry("Person", __classid(TPersonList));
  BoldObjectListClasses->AddObjectEntry("Residential_Building", __classid(TResidential_BuildingList));
}

void __fastcall InstallBusinessClasses(TBoldGeneratedClassList *BoldObjectClasses)
{
  BoldObjectClasses->AddObjectEntry("BusinessClassesRoot", __classid(TBusinessClassesRoot));
  BoldObjectClasses->AddObjectEntry("Building", __classid(TBuilding));
  BoldObjectClasses->AddObjectEntry("Ownership", __classid(TOwnership));
  BoldObjectClasses->AddObjectEntry("Person", __classid(TPerson));
  BoldObjectClasses->AddObjectEntry("Residential_Building", __classid(TResidential_Building));
}

// the codedestricptor is initialized automatically

TBoldGeneratedCodeDescriptor *CodeDescriptor = GeneratedCodes()->AddGeneratedCodeDescriptorWithFunc("BldOwnClasses", &InstallBusinessClasses, &InstallObjectListClasses, GeneratedCodeCRC());

// but should be unloaded manually when it is not needed anymore

void unregisterCode()
{
  if (CodeDescriptor != NULL)
  {
    GeneratedCodes()->Remove(CodeDescriptor);
  }
}
 