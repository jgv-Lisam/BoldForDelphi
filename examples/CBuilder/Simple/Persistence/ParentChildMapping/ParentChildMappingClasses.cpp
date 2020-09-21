/*****************************************/
/*      This file is autogenerated       */
/*   Any manual changes will be LOST!    */
/*****************************************/
/* Generated 2002-01-08 10:36:22         */
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

#include "ParentChildMappingClasses.hpp"

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

#include "ParentChildMappingClasses_impl.cpp"

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

// TAircraft

TBAString* __fastcall TAircraft::_Get_M_Name()
{
  // assert(ValidateMember("TAircraft", "Name", 0, __classid(TBAString)));
  TBAString *result = dynamic_cast<TBAString*>(BoldMembers[0]);
  return result;
};

String __fastcall TAircraft::_GetName()
{
  String result = M_Name->AsString;
  return result;
}

void __fastcall TAircraft::_SetName(String NewValue)
{
  M_Name->AsString = NewValue;
}

void __fastcall TAircraftList::Add(TAircraft *NewObject)
{
  if (NewObject != NULL)
  {
    AddElement(NewObject);
  }
}

int __fastcall TAircraftList::IndexOf(TAircraft *anObject)
{
  int result = IndexOfElement(anObject);
  return result;
}

int __fastcall TAircraftList::Includes(TAircraft *anObject) // boolean?
{
  int result = IncludesElement(anObject);
  return result;
}

TAircraft* __fastcall TAircraftList::AddNew()
{
  TAircraft *result = dynamic_cast<TAircraft*>(InternalAddNew());
  return result;
}

void __fastcall TAircraftList::Insert(int index, TAircraft *NewObject)
{
  if (NewObject != NULL)
  {
    InsertElement(index, NewObject);
  }
}

TAircraft* __fastcall TAircraftList::GetBoldObject(int index)
{
  TAircraft *result = dynamic_cast<TAircraft*>(GetElement(index));
  return result;
}

void __fastcall TAircraftList::SetBoldObject(int index, TAircraft *NewObject)
{
  SetElement(index, NewObject);
}

// TVehicle

TBAString* __fastcall TVehicle::_Get_M_Model()
{
  // assert(ValidateMember("TVehicle", "Model", 0, __classid(TBAString)));
  TBAString *result = dynamic_cast<TBAString*>(BoldMembers[0]);
  return result;
};

String __fastcall TVehicle::_GetModel()
{
  String result = M_Model->AsString;
  return result;
}

void __fastcall TVehicle::_SetModel(String NewValue)
{
  M_Model->AsString = NewValue;
}

void __fastcall TVehicleList::Add(TVehicle *NewObject)
{
  if (NewObject != NULL)
  {
    AddElement(NewObject);
  }
}

int __fastcall TVehicleList::IndexOf(TVehicle *anObject)
{
  int result = IndexOfElement(anObject);
  return result;
}

int __fastcall TVehicleList::Includes(TVehicle *anObject) // boolean?
{
  int result = IncludesElement(anObject);
  return result;
}

TVehicle* __fastcall TVehicleList::AddNew()
{
  TVehicle *result = dynamic_cast<TVehicle*>(InternalAddNew());
  return result;
}

void __fastcall TVehicleList::Insert(int index, TVehicle *NewObject)
{
  if (NewObject != NULL)
  {
    InsertElement(index, NewObject);
  }
}

TVehicle* __fastcall TVehicleList::GetBoldObject(int index)
{
  TVehicle *result = dynamic_cast<TVehicle*>(GetElement(index));
  return result;
}

void __fastcall TVehicleList::SetBoldObject(int index, TVehicle *NewObject)
{
  SetElement(index, NewObject);
}

// TJet

TBABoolean* __fastcall TJet::_Get_M_ThrustVector()
{
  // assert(ValidateMember("TJet", "ThrustVector", 1, __classid(TBABoolean)));
  TBABoolean *result = dynamic_cast<TBABoolean*>(BoldMembers[1]);
  return result;
};

Boolean __fastcall TJet::_GetThrustVector()
{
  Boolean result = M_ThrustVector->AsBoolean;
  return result;
}

void __fastcall TJet::_SetThrustVector(Boolean NewValue)
{
  M_ThrustVector->AsBoolean = NewValue;
}

void __fastcall TJetList::Add(TJet *NewObject)
{
  if (NewObject != NULL)
  {
    AddElement(NewObject);
  }
}

int __fastcall TJetList::IndexOf(TJet *anObject)
{
  int result = IndexOfElement(anObject);
  return result;
}

int __fastcall TJetList::Includes(TJet *anObject) // boolean?
{
  int result = IncludesElement(anObject);
  return result;
}

TJet* __fastcall TJetList::AddNew()
{
  TJet *result = dynamic_cast<TJet*>(InternalAddNew());
  return result;
}

void __fastcall TJetList::Insert(int index, TJet *NewObject)
{
  if (NewObject != NULL)
  {
    InsertElement(index, NewObject);
  }
}

TJet* __fastcall TJetList::GetBoldObject(int index)
{
  TJet *result = dynamic_cast<TJet*>(GetElement(index));
  return result;
}

void __fastcall TJetList::SetBoldObject(int index, TJet *NewObject)
{
  SetElement(index, NewObject);
}

// TPropeller

TBAInteger* __fastcall TPropeller::_Get_M_NoOfBlades()
{
  // assert(ValidateMember("TPropeller", "NoOfBlades", 1, __classid(TBAInteger)));
  TBAInteger *result = dynamic_cast<TBAInteger*>(BoldMembers[1]);
  return result;
};

Integer __fastcall TPropeller::_GetNoOfBlades()
{
  Integer result = M_NoOfBlades->AsInteger;
  return result;
}

void __fastcall TPropeller::_SetNoOfBlades(Integer NewValue)
{
  M_NoOfBlades->AsInteger = NewValue;
}

void __fastcall TPropellerList::Add(TPropeller *NewObject)
{
  if (NewObject != NULL)
  {
    AddElement(NewObject);
  }
}

int __fastcall TPropellerList::IndexOf(TPropeller *anObject)
{
  int result = IndexOfElement(anObject);
  return result;
}

int __fastcall TPropellerList::Includes(TPropeller *anObject) // boolean?
{
  int result = IncludesElement(anObject);
  return result;
}

TPropeller* __fastcall TPropellerList::AddNew()
{
  TPropeller *result = dynamic_cast<TPropeller*>(InternalAddNew());
  return result;
}

void __fastcall TPropellerList::Insert(int index, TPropeller *NewObject)
{
  if (NewObject != NULL)
  {
    InsertElement(index, NewObject);
  }
}

TPropeller* __fastcall TPropellerList::GetBoldObject(int index)
{
  TPropeller *result = dynamic_cast<TPropeller*>(GetElement(index));
  return result;
}

void __fastcall TPropellerList::SetBoldObject(int index, TPropeller *NewObject)
{
  SetElement(index, NewObject);
}

// TBus

TBAString* __fastcall TBus::_Get_M_NoOfPassengers()
{
  // assert(ValidateMember("TBus", "NoOfPassengers", 1, __classid(TBAString)));
  TBAString *result = dynamic_cast<TBAString*>(BoldMembers[1]);
  return result;
};

String __fastcall TBus::_GetNoOfPassengers()
{
  String result = M_NoOfPassengers->AsString;
  return result;
}

void __fastcall TBus::_SetNoOfPassengers(String NewValue)
{
  M_NoOfPassengers->AsString = NewValue;
}

void __fastcall TBusList::Add(TBus *NewObject)
{
  if (NewObject != NULL)
  {
    AddElement(NewObject);
  }
}

int __fastcall TBusList::IndexOf(TBus *anObject)
{
  int result = IndexOfElement(anObject);
  return result;
}

int __fastcall TBusList::Includes(TBus *anObject) // boolean?
{
  int result = IncludesElement(anObject);
  return result;
}

TBus* __fastcall TBusList::AddNew()
{
  TBus *result = dynamic_cast<TBus*>(InternalAddNew());
  return result;
}

void __fastcall TBusList::Insert(int index, TBus *NewObject)
{
  if (NewObject != NULL)
  {
    InsertElement(index, NewObject);
  }
}

TBus* __fastcall TBusList::GetBoldObject(int index)
{
  TBus *result = dynamic_cast<TBus*>(GetElement(index));
  return result;
}

void __fastcall TBusList::SetBoldObject(int index, TBus *NewObject)
{
  SetElement(index, NewObject);
}

// TTruck

TBAString* __fastcall TTruck::_Get_M_MaxLoad()
{
  // assert(ValidateMember("TTruck", "MaxLoad", 1, __classid(TBAString)));
  TBAString *result = dynamic_cast<TBAString*>(BoldMembers[1]);
  return result;
};

String __fastcall TTruck::_GetMaxLoad()
{
  String result = M_MaxLoad->AsString;
  return result;
}

void __fastcall TTruck::_SetMaxLoad(String NewValue)
{
  M_MaxLoad->AsString = NewValue;
}

void __fastcall TTruckList::Add(TTruck *NewObject)
{
  if (NewObject != NULL)
  {
    AddElement(NewObject);
  }
}

int __fastcall TTruckList::IndexOf(TTruck *anObject)
{
  int result = IndexOfElement(anObject);
  return result;
}

int __fastcall TTruckList::Includes(TTruck *anObject) // boolean?
{
  int result = IncludesElement(anObject);
  return result;
}

TTruck* __fastcall TTruckList::AddNew()
{
  TTruck *result = dynamic_cast<TTruck*>(InternalAddNew());
  return result;
}

void __fastcall TTruckList::Insert(int index, TTruck *NewObject)
{
  if (NewObject != NULL)
  {
    InsertElement(index, NewObject);
  }
}

TTruck* __fastcall TTruckList::GetBoldObject(int index)
{
  TTruck *result = dynamic_cast<TTruck*>(GetElement(index));
  return result;
}

void __fastcall TTruckList::SetBoldObject(int index, TTruck *NewObject)
{
  SetElement(index, NewObject);
}

char *GeneratedCodeCRC()
{
  return "1625269196";
}

void __fastcall InstallObjectListClasses(TBoldGeneratedClassList *BoldObjectListClasses)
{
  BoldObjectListClasses->AddObjectEntry("BusinessClassesRoot", __classid(TBusinessClassesRootList));
  BoldObjectListClasses->AddObjectEntry("Aircraft", __classid(TAircraftList));
  BoldObjectListClasses->AddObjectEntry("Vehicle", __classid(TVehicleList));
  BoldObjectListClasses->AddObjectEntry("Jet", __classid(TJetList));
  BoldObjectListClasses->AddObjectEntry("Propeller", __classid(TPropellerList));
  BoldObjectListClasses->AddObjectEntry("Bus", __classid(TBusList));
  BoldObjectListClasses->AddObjectEntry("Truck", __classid(TTruckList));
}

void __fastcall InstallBusinessClasses(TBoldGeneratedClassList *BoldObjectClasses)
{
  BoldObjectClasses->AddObjectEntry("BusinessClassesRoot", __classid(TBusinessClassesRoot));
  BoldObjectClasses->AddObjectEntry("Aircraft", __classid(TAircraft));
  BoldObjectClasses->AddObjectEntry("Vehicle", __classid(TVehicle));
  BoldObjectClasses->AddObjectEntry("Jet", __classid(TJet));
  BoldObjectClasses->AddObjectEntry("Propeller", __classid(TPropeller));
  BoldObjectClasses->AddObjectEntry("Bus", __classid(TBus));
  BoldObjectClasses->AddObjectEntry("Truck", __classid(TTruck));
}

// the codedestricptor is initialized automatically

TBoldGeneratedCodeDescriptor *CodeDescriptor = GeneratedCodes()->AddGeneratedCodeDescriptorWithFunc("ParentChildMappingClasses", &InstallBusinessClasses, &InstallObjectListClasses, GeneratedCodeCRC());

// but should be unloaded manually when it is not needed anymore

void unregisterCode()
{
  if (CodeDescriptor != NULL)
  {
    GeneratedCodes()->Remove(CodeDescriptor);
  }
}

