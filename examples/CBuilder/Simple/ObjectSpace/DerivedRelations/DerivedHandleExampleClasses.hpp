/*****************************************/
/*      This file is autogenerated       */
/*   Any manual changes will be LOST!    */
/*****************************************/
/* Generated 2002-01-04 11:20:39         */
/*****************************************/
/* This file should be stored in the     */
/* same directory as the form/datamodule */
/* with the corresponding model          */
/*****************************************/
/* Copyright notice:                     */
/*                                       */
/*****************************************/

#if !defined (DerivedHandleExampleClasses_HPP)
#define DerivedHandleExampleClasses_HPP

// interface uses

// interface dependancies

// attribute dependancies
#include "BoldAttributes.hpp"

#include <Classes.hpp>
#include <Controls.hpp>
#include <SysUtils.hpp>
#include "BoldDefs.hpp"
#include "BoldSubscription.hpp"
#include "BoldDeriver.hpp"
#include "BoldElements.hpp"
#include "BoldDomainElement.hpp"
#include "BoldSystemRT.hpp"
#include "BoldSystem.hpp"

void unregisterCode();

// forward declarations of all classes }

class TBusinessClassesRoot;
class TBusinessClassesRootList;
class TPerson;
class TPersonList;
class TProject;
class TProjectList;
class TProjectParticipators;
class TProjectParticipatorsList;

class DELPHICLASS TBusinessClassesRoot;
class TBusinessClassesRoot : public Boldsystem::TBoldObject
{
typedef Boldsystem::TBoldObject inherited;
private:
protected:
public:
  #pragma option push -w-inl
  inline __fastcall TBusinessClassesRoot(Boldsystem::TBoldSystem* aBoldSystem) : Boldsystem::TBoldObject(aBoldSystem, true) { }
  #pragma option pop

};

class DELPHICLASS TPerson;
class TPerson : public TBusinessClassesRoot
{
typedef TBusinessClassesRoot inherited;
private:
  TBAString* __fastcall _Get_M_Name();
  String __fastcall _GetName();
  void __fastcall _SetName(String NewValue);
  TProjectList* __fastcall _GetparticipatesIn();
  TProjectParticipatorsList* __fastcall _GetProjectParticipators();
  TProjectList* __fastcall _GetleadsProject();
  TProjectList* __fastcall _GetmemberOf();
  TPersonList* __fastcall _Getassociates();
protected:
  virtual TBoldDeriveAndResubscribe __fastcall GetDeriveMethodForMember(TBoldMember *Member);
  virtual TBoldReverseDerive __fastcall GetReverseDeriveMethodForMember(TBoldMember *Member);
public:
  #pragma option push -w-inl
  inline __fastcall TPerson(Boldsystem::TBoldSystem* aBoldSystem) : TBusinessClassesRoot(aBoldSystem) { }
  #pragma option pop

  void __fastcall CompleteCreate(void);
  __property TBAString* M_Name = {read=_Get_M_Name};
  __property TProjectList* M_participatesIn = {read=_GetparticipatesIn};
  __property TProjectParticipatorsList* M_ProjectParticipators = {read=_GetProjectParticipators};
  __property TProjectList* M_leadsProject = {read=_GetleadsProject};
  __property TProjectList* M_memberOf = {read=_GetmemberOf};
  __property TPersonList* M_associates = {read=_Getassociates};
  __property String Name = {read=_GetName, write=_SetName};
  __property TProjectList* participatesIn = {read=_GetparticipatesIn};
  __property TProjectParticipatorsList* ProjectParticipators = {read=_GetProjectParticipators};
  __property TProjectList* leadsProject = {read=_GetleadsProject};
  __property TProjectList* memberOf = {read=_GetmemberOf};
  __property TPersonList* associates = {read=_Getassociates};
};

class DELPHICLASS TProject;
class TProject : public TBusinessClassesRoot
{
typedef TBusinessClassesRoot inherited;
private:
  TBAString* __fastcall _Get_M_Name();
  String __fastcall _GetName();
  void __fastcall _SetName(String NewValue);
  TPersonList* __fastcall _Getparticipator();
  TProjectParticipatorsList* __fastcall _GetProjectParticipators();
  TPerson* __fastcall _GetprojectLeader();
  TBoldObjectReference* __fastcall _Get_M_projectLeader();
  void __fastcall _SetprojectLeader(TPerson *value);
  TPersonList* __fastcall _GetallMembers();
protected:
public:
  #pragma option push -w-inl
  inline __fastcall TProject(Boldsystem::TBoldSystem* aBoldSystem) : TBusinessClassesRoot(aBoldSystem) { }
  #pragma option pop

  void __fastcall CompleteCreate(void);
  __property TBAString* M_Name = {read=_Get_M_Name};
  __property TPersonList* M_participator = {read=_Getparticipator};
  __property TProjectParticipatorsList* M_ProjectParticipators = {read=_GetProjectParticipators};
  __property TBoldObjectReference* M_projectLeader = {read=_Get_M_projectLeader};
  __property TPersonList* M_allMembers = {read=_GetallMembers};
  __property String Name = {read=_GetName, write=_SetName};
  __property TPersonList* participator = {read=_Getparticipator};
  __property TProjectParticipatorsList* ProjectParticipators = {read=_GetProjectParticipators};
  __property TPerson* projectLeader = {read=_GetprojectLeader, write=_SetprojectLeader};
  __property TPersonList* allMembers = {read=_GetallMembers};
};

class DELPHICLASS TProjectParticipators;
class TProjectParticipators : public TBusinessClassesRoot
{
typedef TBusinessClassesRoot inherited;
private:
  TProject* __fastcall _GetparticipatesIn();
  TBoldObjectReference* __fastcall _Get_M_participatesIn();
  TPerson* __fastcall _Getparticipator();
  TBoldObjectReference* __fastcall _Get_M_participator();
protected:
public:
  #pragma option push -w-inl
  inline __fastcall TProjectParticipators(Boldsystem::TBoldSystem* aBoldSystem) : TBusinessClassesRoot(aBoldSystem) { }
  #pragma option pop

  __property TBoldObjectReference* M_participatesIn = {read=_Get_M_participatesIn};
  __property TBoldObjectReference* M_participator = {read=_Get_M_participator};
  __property TProject* participatesIn = {read=_GetparticipatesIn};
  __property TPerson* participator = {read=_Getparticipator};
};

class DELPHICLASS TBusinessClassesRootList;
class TBusinessClassesRootList : public TBoldObjectList
{
protected:
  TBusinessClassesRoot* __fastcall GetBoldObject(int index);
  void __fastcall SetBoldObject(int index, TBusinessClassesRoot *NewObject);
public:
  int __fastcall Includes(TBusinessClassesRoot *anObject);
  int __fastcall IndexOf(TBusinessClassesRoot *anObject);
  void __fastcall Add(TBusinessClassesRoot *NewObject);
  TBusinessClassesRoot* __fastcall AddNew();
  void __fastcall Insert(int index, TBusinessClassesRoot *NewObject);
  __property TBusinessClassesRoot* BoldObjects[int index] = {read=GetBoldObject, write=SetBoldObject};
};

class DELPHICLASS TPersonList;
class TPersonList : public TBusinessClassesRootList
{
protected:
  TPerson* __fastcall GetBoldObject(int index);
  void __fastcall SetBoldObject(int index, TPerson *NewObject);
public:
  int __fastcall Includes(TPerson *anObject);
  int __fastcall IndexOf(TPerson *anObject);
  void __fastcall Add(TPerson *NewObject);
  TPerson* __fastcall AddNew();
  void __fastcall Insert(int index, TPerson *NewObject);
  __property TPerson* BoldObjects[int index] = {read=GetBoldObject, write=SetBoldObject};
};

class DELPHICLASS TProjectList;
class TProjectList : public TBusinessClassesRootList
{
protected:
  TProject* __fastcall GetBoldObject(int index);
  void __fastcall SetBoldObject(int index, TProject *NewObject);
public:
  int __fastcall Includes(TProject *anObject);
  int __fastcall IndexOf(TProject *anObject);
  void __fastcall Add(TProject *NewObject);
  TProject* __fastcall AddNew();
  void __fastcall Insert(int index, TProject *NewObject);
  __property TProject* BoldObjects[int index] = {read=GetBoldObject, write=SetBoldObject};
};

class DELPHICLASS TProjectParticipatorsList;
class TProjectParticipatorsList : public TBusinessClassesRootList
{
protected:
  TProjectParticipators* __fastcall GetBoldObject(int index);
  void __fastcall SetBoldObject(int index, TProjectParticipators *NewObject);
public:
  int __fastcall Includes(TProjectParticipators *anObject);
  int __fastcall IndexOf(TProjectParticipators *anObject);
  void __fastcall Add(TProjectParticipators *NewObject);
  TProjectParticipators* __fastcall AddNew();
  void __fastcall Insert(int index, TProjectParticipators *NewObject);
  __property TProjectParticipators* BoldObjects[int index] = {read=GetBoldObject, write=SetBoldObject};
};


char* GeneratedCodeCRC();

#endif
 