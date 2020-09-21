/*****************************************/
/*      This file is autogenerated       */
/*   Any manual changes will be LOST!    */
/*****************************************/
/* Generated 2001-12-05 11:40:13         */
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

#include "ComboBoxClasses.hpp"

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

// implementation dependancies

#include "BoldGeneratedCodeDictionary.hpp"

// Includefiles for methodimplementations

#include "ComboBoxClasses_impl.cpp"

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

// TFood

TBAString* __fastcall TFood::_Get_M_Name()
{
  // assert(ValidateMember("TFood", "Name", 0, TBAString));
  TBAString *result = dynamic_cast<TBAString*>(BoldMembers[0]);
  return result;
};

String __fastcall TFood::_GetName()
{
  String result = M_Name->AsString;
  return result;
}

void __fastcall TFood::_SetName(String NewValue)
{
  M_Name->AsString = NewValue;
}

TPersonList* __fastcall TFood::_GetIsFavouredBy()
{
  // assert(ValidateMember("TFood", "IsFavouredBy", 1, TPersonList));
  TPersonList *result = dynamic_cast<TPersonList*>(BoldMembers[1]);
  return result;
}

void __fastcall TFoodList::Add(TFood *NewObject)
{
  if (NewObject != NULL)
  {
    AddElement(NewObject);
  }
}

int __fastcall TFoodList::IndexOf(TFood *anObject)
{
  int result = IndexOfElement(anObject);
  return result;
}

int __fastcall TFoodList::Includes(TFood *anObject) // boolean?
{
  int result = IncludesElement(anObject);
  return result;
}

TFood* __fastcall TFoodList::AddNew()
{
  TFood *result = dynamic_cast<TFood*>(InternalAddNew());
  return result;
}

void __fastcall TFoodList::Insert(int index, TFood *NewObject)
{
  if (NewObject != NULL)
  {
    InsertElement(index, NewObject);
  }
}

TFood* __fastcall TFoodList::GetBoldObject(int index)
{
  TFood *result = dynamic_cast<TFood*>(GetElement(index));
  return result;
}

void __fastcall TFoodList::SetBoldObject(int index, TFood *NewObject)
{
  SetElement(index, NewObject);
}

// TPerson

TBAString* __fastcall TPerson::_Get_M_Name()
{
  // assert(ValidateMember("TPerson", "Name", 0, TBAString));
  TBAString *result = dynamic_cast<TBAString*>(BoldMembers[0]);
  return result;
};

String __fastcall TPerson::_GetName()
{
  String result = M_Name->AsString;
  return result;
}

void __fastcall TPerson::_SetName(String NewValue)
{
  M_Name->AsString = NewValue;
}

TBAString* __fastcall TPerson::_Get_M_AttendsSchool()
{
  // assert(ValidateMember("TPerson", "AttendsSchool", 1, TBAString));
  TBAString *result = dynamic_cast<TBAString*>(BoldMembers[1]);
  return result;
};

String __fastcall TPerson::_GetAttendsSchool()
{
  String result = M_AttendsSchool->AsString;
  return result;
}

void __fastcall TPerson::_SetAttendsSchool(String NewValue)
{
  M_AttendsSchool->AsString = NewValue;
}

TBAString* __fastcall TPerson::_Get_M_Major()
{
  // assert(ValidateMember("TPerson", "Major", 2, TBAString));
  TBAString *result = dynamic_cast<TBAString*>(BoldMembers[2]);
  return result;
};

String __fastcall TPerson::_GetMajor()
{
  String result = M_Major->AsString;
  return result;
}

void __fastcall TPerson::_SetMajor(String NewValue)
{
  M_Major->AsString = NewValue;
}

TBAString* __fastcall TPerson::_Get_M_FavouriteMusic()
{
  // assert(ValidateMember("TPerson", "FavouriteMusic", 3, TBAString));
  TBAString *result = dynamic_cast<TBAString*>(BoldMembers[3]);
  return result;
};

String __fastcall TPerson::_GetFavouriteMusic()
{
  String result = M_FavouriteMusic->AsString;
  return result;
}

void __fastcall TPerson::_SetFavouriteMusic(String NewValue)
{
  M_FavouriteMusic->AsString = NewValue;
}

TBoldObjectReference* __fastcall TPerson::_Get_M_PreferredFood()
{
  // assert(ValidateMember("TPerson", "PreferredFood", 4, TBoldObjectReference));
  TBoldObjectReference *result = dynamic_cast<TBoldObjectReference*>(BoldMembers[4]);
  return result;
}

TFood* _fastcall TPerson::_GetPreferredFood()
{
  // assert(not assigned(M_PreferredFood->BoldObject) or (M_PreferredFood->BoldObject is TFood), SysUtils.format(BoldMemberAssertInvalidObjectType, [ClassName, PreferredFood, M_PreferredFood->BoldObject->ClassName, TFood]));
  TFood *result = dynamic_cast<TFood*>(M_PreferredFood->BoldObject);
  return result;
}

void __fastcall TPerson::_SetPreferredFood(TFood *value)
{
  M_PreferredFood->BoldObject = value;
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

// TSchool

TBAString* __fastcall TSchool::_Get_M_Name()
{
  // assert(ValidateMember("TSchool", "Name", 0, TBAString));
  TBAString *result = dynamic_cast<TBAString*>(BoldMembers[0]);
  return result;
};

String __fastcall TSchool::_GetName()
{
  String result = M_Name->AsString;
  return result;
}

void __fastcall TSchool::_SetName(String NewValue)
{
  M_Name->AsString = NewValue;
}

void __fastcall TSchoolList::Add(TSchool *NewObject)
{
  if (NewObject != NULL)
  {
    AddElement(NewObject);
  }
}

int __fastcall TSchoolList::IndexOf(TSchool *anObject)
{
  int result = IndexOfElement(anObject);
  return result;
}

int __fastcall TSchoolList::Includes(TSchool *anObject) // boolean?
{
  int result = IncludesElement(anObject);
  return result;
}

TSchool* __fastcall TSchoolList::AddNew()
{
  TSchool *result = dynamic_cast<TSchool*>(InternalAddNew());
  return result;
}

void __fastcall TSchoolList::Insert(int index, TSchool *NewObject)
{
  if (NewObject != NULL)
  {
    InsertElement(index, NewObject);
  }
}

TSchool* __fastcall TSchoolList::GetBoldObject(int index)
{
  TSchool *result = dynamic_cast<TSchool*>(GetElement(index));
  return result;
}

void __fastcall TSchoolList::SetBoldObject(int index, TSchool *NewObject)
{
  SetElement(index, NewObject);
}

char *GeneratedCodeCRC()
{
  return "1616966516";
}

void __fastcall InstallObjectListClasses(TBoldGeneratedClassList *BoldObjectListClasses)
{
  BoldObjectListClasses->AddObjectEntry("BusinessClassesRootList", __classid(TBusinessClassesRootList));
  BoldObjectListClasses->AddObjectEntry("FoodList", __classid(TFoodList));
  BoldObjectListClasses->AddObjectEntry("PersonList", __classid(TPersonList));
  BoldObjectListClasses->AddObjectEntry("SchoolList", __classid(TSchoolList));
}

void __fastcall InstallBusinessClasses(TBoldGeneratedClassList *BoldObjectClasses)
{
  BoldObjectClasses->AddObjectEntry("BusinessClassesRoot", __classid(TBusinessClassesRoot));
  BoldObjectClasses->AddObjectEntry("Food", __classid(TFood));
  BoldObjectClasses->AddObjectEntry("Person", __classid(TPerson));
  BoldObjectClasses->AddObjectEntry("School", __classid(TSchool));
}

// the codedestricptor is initialized automatically

TBoldGeneratedCodeDescriptor *CodeDescriptor = GeneratedCodes()->AddGeneratedCodeDescriptorWithFunc("ComboBoxClasses", &InstallBusinessClasses, &InstallObjectListClasses, GeneratedCodeCRC());

// but should be unloaded manually when it is not needed anymore

void unregisterCode()
{
  if (CodeDescriptor != NULL)
  {
    GeneratedCodes()->Remove(CodeDescriptor);
  }
}
 