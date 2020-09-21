/*****************************************/
/*      This file is autogenerated       */
/*   Any manual changes will be LOST!    */
/*****************************************/
/* Generated 2002-01-10 14:22:22         */
/*****************************************/
/* This file should be stored in the     */
/* same directory as the form/datamodule */
/* with the corresponding model          */
/*****************************************/
/* Copyright notice:                     */
/*                                       */
/*****************************************/

#if !defined (ModelEvClasses_HPP)
#define ModelEvClasses_HPP

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
class TOrder;
class TOrderList;
class TOrderItem;
class TOrderItemList;
class TPerson;
class TPersonList;
class TProduct;
class TProductList;

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

class DELPHICLASS TOrder;
class TOrder : public TBusinessClassesRoot
{
typedef TBusinessClassesRoot inherited;
private:
  TBADate* __fastcall _Get_M_orderDate();
  TDate __fastcall _GetorderDate();
  void __fastcall _SetorderDate(TDate NewValue);
  TBACurrency* __fastcall _Get_M_totalCost();
  Currency __fastcall _GettotalCost();
  TBAInteger* __fastcall _Get_M_discount();
  Integer __fastcall _Getdiscount();
  void __fastcall _Setdiscount(Integer NewValue);
  TPerson* __fastcall _GetPerson();
  TBoldObjectReference* __fastcall _Get_M_Person();
  void __fastcall _SetPerson(TPerson *value);
  TOrderItemList* __fastcall _GetOrderItem();
protected:
public:
  #pragma option push -w-inl
  inline __fastcall TOrder(Boldsystem::TBoldSystem* aBoldSystem) : TBusinessClassesRoot(aBoldSystem) { }
  #pragma option pop

  __property TBADate* M_orderDate = {read=_Get_M_orderDate};
  __property TBACurrency* M_totalCost = {read=_Get_M_totalCost};
  __property TBAInteger* M_discount = {read=_Get_M_discount};
  __property TBoldObjectReference* M_Person = {read=_Get_M_Person};
  __property TOrderItemList* M_OrderItem = {read=_GetOrderItem};
  __property TDate orderDate = {read=_GetorderDate, write=_SetorderDate};
  __property Currency totalCost = {read=_GettotalCost};
  __property Integer discount = {read=_Getdiscount, write=_Setdiscount};
  __property TPerson* Person = {read=_GetPerson, write=_SetPerson};
  __property TOrderItemList* OrderItem = {read=_GetOrderItem};
};

class DELPHICLASS TOrderItem;
class TOrderItem : public TBusinessClassesRoot
{
typedef TBusinessClassesRoot inherited;
private:
  TBAInteger* __fastcall _Get_M_qty();
  Integer __fastcall _Getqty();
  void __fastcall _Setqty(Integer NewValue);
  TOrder* __fastcall _GetOrder();
  TBoldObjectReference* __fastcall _Get_M_Order();
  void __fastcall _SetOrder(TOrder *value);
  TProduct* __fastcall _GetProduct();
  TBoldObjectReference* __fastcall _Get_M_Product();
  void __fastcall _SetProduct(TProduct *value);
protected:
public:
  #pragma option push -w-inl
  inline __fastcall TOrderItem(Boldsystem::TBoldSystem* aBoldSystem) : TBusinessClassesRoot(aBoldSystem) { }
  #pragma option pop

  __property TBAInteger* M_qty = {read=_Get_M_qty};
  __property TBoldObjectReference* M_Order = {read=_Get_M_Order};
  __property TBoldObjectReference* M_Product = {read=_Get_M_Product};
  __property Integer qty = {read=_Getqty, write=_Setqty};
  __property TOrder* Order = {read=_GetOrder, write=_SetOrder};
  __property TProduct* Product = {read=_GetProduct, write=_SetProduct};
};

class DELPHICLASS TPerson;
class TPerson : public TBusinessClassesRoot
{
typedef TBusinessClassesRoot inherited;
private:
  TBAString* __fastcall _Get_M_fullName();
  String __fastcall _GetfullName();
  void __fastcall _SetfullName(String NewValue);
  TOrderList* __fastcall _GetOrder();
protected:
public:
  #pragma option push -w-inl
  inline __fastcall TPerson(Boldsystem::TBoldSystem* aBoldSystem) : TBusinessClassesRoot(aBoldSystem) { }
  #pragma option pop

  __property TBAString* M_fullName = {read=_Get_M_fullName};
  __property TOrderList* M_Order = {read=_GetOrder};
  __property String fullName = {read=_GetfullName, write=_SetfullName};
  __property TOrderList* Order = {read=_GetOrder};
};

class DELPHICLASS TProduct;
class TProduct : public TBusinessClassesRoot
{
typedef TBusinessClassesRoot inherited;
private:
  TBACurrency* __fastcall _Get_M_cost();
  Currency __fastcall _Getcost();
  void __fastcall _Setcost(Currency NewValue);
  TBAString* __fastcall _Get_M_description();
  String __fastcall _Getdescription();
  void __fastcall _Setdescription(String NewValue);
  TOrderItemList* __fastcall _GetOrderItem();
protected:
public:
  #pragma option push -w-inl
  inline __fastcall TProduct(Boldsystem::TBoldSystem* aBoldSystem) : TBusinessClassesRoot(aBoldSystem) { }
  #pragma option pop

  __property TBACurrency* M_cost = {read=_Get_M_cost};
  __property TBAString* M_description = {read=_Get_M_description};
  __property TOrderItemList* M_OrderItem = {read=_GetOrderItem};
  __property Currency cost = {read=_Getcost, write=_Setcost};
  __property String description = {read=_Getdescription, write=_Setdescription};
  __property TOrderItemList* OrderItem = {read=_GetOrderItem};
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

class DELPHICLASS TOrderList;
class TOrderList : public TBusinessClassesRootList
{
protected:
  TOrder* __fastcall GetBoldObject(int index);
  void __fastcall SetBoldObject(int index, TOrder *NewObject);
public:
  int __fastcall Includes(TOrder *anObject);
  int __fastcall IndexOf(TOrder *anObject);
  void __fastcall Add(TOrder *NewObject);
  TOrder* __fastcall AddNew();
  void __fastcall Insert(int index, TOrder *NewObject);
  __property TOrder* BoldObjects[int index] = {read=GetBoldObject, write=SetBoldObject};
};

class DELPHICLASS TOrderItemList;
class TOrderItemList : public TBusinessClassesRootList
{
protected:
  TOrderItem* __fastcall GetBoldObject(int index);
  void __fastcall SetBoldObject(int index, TOrderItem *NewObject);
public:
  int __fastcall Includes(TOrderItem *anObject);
  int __fastcall IndexOf(TOrderItem *anObject);
  void __fastcall Add(TOrderItem *NewObject);
  TOrderItem* __fastcall AddNew();
  void __fastcall Insert(int index, TOrderItem *NewObject);
  __property TOrderItem* BoldObjects[int index] = {read=GetBoldObject, write=SetBoldObject};
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

class DELPHICLASS TProductList;
class TProductList : public TBusinessClassesRootList
{
protected:
  TProduct* __fastcall GetBoldObject(int index);
  void __fastcall SetBoldObject(int index, TProduct *NewObject);
public:
  int __fastcall Includes(TProduct *anObject);
  int __fastcall IndexOf(TProduct *anObject);
  void __fastcall Add(TProduct *NewObject);
  TProduct* __fastcall AddNew();
  void __fastcall Insert(int index, TProduct *NewObject);
  __property TProduct* BoldObjects[int index] = {read=GetBoldObject, write=SetBoldObject};
};


char* GeneratedCodeCRC();

#endif
 