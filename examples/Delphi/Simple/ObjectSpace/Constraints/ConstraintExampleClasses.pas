(*****************************************)
(*      This file is autogenerated       *)
(*   Any manual changes will be LOST!    *)
(*****************************************)
(* Generated 2002-04-05 15:28:11         *)
(*****************************************)
(* This file should be stored in the     *)
(* same directory as the form/datamodule *)
(* with the corresponding model          *)
(*****************************************)
(* Copyright notice:                     *)
(*                                       *)
(*****************************************)

unit ConstraintExampleClasses;

{$DEFINE ConstraintExampleClasses_unitheader}
{$INCLUDE ConstraintExampleClasses_Interface.inc}

uses
  // implementation uses
  // implementation dependencies
  // other
  BoldGeneratedCodeDictionary;

{ Includefile for methodimplementations }

{$INCLUDE ConstraintExampleClasses.inc}

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

{ TCustomer }

function TCustomer._Get_M_name: TBAString;
begin
  assert(ValidateMember('TCustomer', 'name', 0, TBAString));
  Result := TBAString(BoldMembers[0]);
end;

function TCustomer._Getname: String;
begin
  Result := M_name.AsString;
end;

procedure TCustomer._Setname(NewValue: String);
begin
  M_name.AsString := NewValue;
end;

function TCustomer._Get_M_creditLimit: TBACurrency;
begin
  assert(ValidateMember('TCustomer', 'creditLimit', 1, TBACurrency));
  Result := TBACurrency(BoldMembers[1]);
end;

function TCustomer._GetcreditLimit: Currency;
begin
  Result := M_creditLimit.AsCurrency;
end;

procedure TCustomer._SetcreditLimit(NewValue: Currency);
begin
  M_creditLimit.AsCurrency := NewValue;
end;

function TCustomer._Get_M_shippingaddress: TBAString;
begin
  assert(ValidateMember('TCustomer', 'shippingaddress', 2, TBAString));
  Result := TBAString(BoldMembers[2]);
end;

function TCustomer._Getshippingaddress: String;
begin
  Result := M_shippingaddress.AsString;
end;

procedure TCustomer._Setshippingaddress(NewValue: String);
begin
  M_shippingaddress.AsString := NewValue;
end;

function TCustomer._Get_M_creditCardNo: TBAString;
begin
  assert(ValidateMember('TCustomer', 'creditCardNo', 3, TBAString));
  Result := TBAString(BoldMembers[3]);
end;

function TCustomer._GetcreditCardNo: String;
begin
  Result := M_creditCardNo.AsString;
end;

procedure TCustomer._SetcreditCardNo(NewValue: String);
begin
  M_creditCardNo.AsString := NewValue;
end;

function TCustomer._Getorders: TOrderList;
begin
  assert(ValidateMember('TCustomer', 'orders', 4, TOrderList));
  Result := TOrderList(BoldMembers[4]);
end;

procedure TCustomerList.Add(NewObject: TCustomer);
begin
  if Assigned(NewObject) then
    AddElement(NewObject);
end;

function TCustomerList.IndexOf(anObject: TCustomer): Integer;
begin
  result := IndexOfElement(anObject);
end;

function TCustomerList.Includes(anObject: TCustomer) : Boolean;
begin
  result := IncludesElement(anObject);
end;

function TCustomerList.AddNew: TCustomer;
begin
  result := TCustomer(InternalAddNew);
end;

procedure TCustomerList.Insert(index: Integer; NewObject: TCustomer);
begin
  if assigned(NewObject) then
    InsertElement(index, NewObject);
end;

function TCustomerList.GetBoldObject(index: Integer): TCustomer;
begin
  result := TCustomer(GetElement(index));
end;

procedure TCustomerList.SetBoldObject(index: Integer; NewObject: TCustomer);
begin;
  SetElement(index, NewObject);
end;

{ TOrder }

function TOrder._Get_M_orderDate: TBADate;
begin
  assert(ValidateMember('TOrder', 'orderDate', 0, TBADate));
  Result := TBADate(BoldMembers[0]);
end;

function TOrder._GetorderDate: TDate;
begin
  Result := M_orderDate.AsDate;
end;

procedure TOrder._SetorderDate(NewValue: TDate);
begin
  M_orderDate.AsDate := NewValue;
end;

function TOrder._Get_M_shippingDate: TBADate;
begin
  assert(ValidateMember('TOrder', 'shippingDate', 1, TBADate));
  Result := TBADate(BoldMembers[1]);
end;

function TOrder._GetshippingDate: TDate;
begin
  Result := M_shippingDate.AsDate;
end;

procedure TOrder._SetshippingDate(NewValue: TDate);
begin
  M_shippingDate.AsDate := NewValue;
end;

function TOrder._Get_M_orderSum: TBAFloat;
begin
  assert(ValidateMember('TOrder', 'orderSum', 2, TBAFloat));
  Result := TBAFloat(BoldMembers[2]);
end;

function TOrder._GetorderSum: double;
begin
  Result := M_orderSum.AsFloat;
end;

function TOrder._Get_M_customer: TBoldObjectReference;
begin
  assert(ValidateMember('TOrder', 'customer', 3, TBoldObjectReference));
  Result := TBoldObjectReference(BoldMembers[3]);
end;

function TOrder._Getcustomer: TCustomer;
begin
  assert(not assigned(M_customer.BoldObject) or (M_customer.BoldObject is TCustomer), SysUtils.format(BoldMemberAssertInvalidObjectType, [ClassName, 'customer', M_customer.BoldObject.ClassName, 'TCustomer']));
  Result := TCustomer(M_customer.BoldObject);
end;

procedure TOrder._Setcustomer(value: TCustomer);
begin
  M_customer.BoldObject := value;
end;

function TOrder._Getitems: TOrderItemList;
begin
  assert(ValidateMember('TOrder', 'items', 4, TOrderItemList));
  Result := TOrderItemList(BoldMembers[4]);
end;

procedure TOrderList.Add(NewObject: TOrder);
begin
  if Assigned(NewObject) then
    AddElement(NewObject);
end;

function TOrderList.IndexOf(anObject: TOrder): Integer;
begin
  result := IndexOfElement(anObject);
end;

function TOrderList.Includes(anObject: TOrder) : Boolean;
begin
  result := IncludesElement(anObject);
end;

function TOrderList.AddNew: TOrder;
begin
  result := TOrder(InternalAddNew);
end;

procedure TOrderList.Insert(index: Integer; NewObject: TOrder);
begin
  if assigned(NewObject) then
    InsertElement(index, NewObject);
end;

function TOrderList.GetBoldObject(index: Integer): TOrder;
begin
  result := TOrder(GetElement(index));
end;

procedure TOrderList.SetBoldObject(index: Integer; NewObject: TOrder);
begin;
  SetElement(index, NewObject);
end;

{ TOrderItem }

function TOrderItem._Get_M_qty: TBAInteger;
begin
  assert(ValidateMember('TOrderItem', 'qty', 0, TBAInteger));
  Result := TBAInteger(BoldMembers[0]);
end;

function TOrderItem._Getqty: Integer;
begin
  Result := M_qty.AsInteger;
end;

procedure TOrderItem._Setqty(NewValue: Integer);
begin
  M_qty.AsInteger := NewValue;
end;

function TOrderItem._Get_M_itemSum: TBAFloat;
begin
  assert(ValidateMember('TOrderItem', 'itemSum', 1, TBAFloat));
  Result := TBAFloat(BoldMembers[1]);
end;

function TOrderItem._GetitemSum: double;
begin
  Result := M_itemSum.AsFloat;
end;

function TOrderItem._Get_M_order: TBoldObjectReference;
begin
  assert(ValidateMember('TOrderItem', 'order', 2, TBoldObjectReference));
  Result := TBoldObjectReference(BoldMembers[2]);
end;

function TOrderItem._Getorder: TOrder;
begin
  assert(not assigned(M_order.BoldObject) or (M_order.BoldObject is TOrder), SysUtils.format(BoldMemberAssertInvalidObjectType, [ClassName, 'order', M_order.BoldObject.ClassName, 'TOrder']));
  Result := TOrder(M_order.BoldObject);
end;

procedure TOrderItem._Setorder(value: TOrder);
begin
  M_order.BoldObject := value;
end;

function TOrderItem._Get_M_part: TBoldObjectReference;
begin
  assert(ValidateMember('TOrderItem', 'part', 3, TBoldObjectReference));
  Result := TBoldObjectReference(BoldMembers[3]);
end;

function TOrderItem._Getpart: TPart;
begin
  assert(not assigned(M_part.BoldObject) or (M_part.BoldObject is TPart), SysUtils.format(BoldMemberAssertInvalidObjectType, [ClassName, 'part', M_part.BoldObject.ClassName, 'TPart']));
  Result := TPart(M_part.BoldObject);
end;

procedure TOrderItem._Setpart(value: TPart);
begin
  M_part.BoldObject := value;
end;

procedure TOrderItemList.Add(NewObject: TOrderItem);
begin
  if Assigned(NewObject) then
    AddElement(NewObject);
end;

function TOrderItemList.IndexOf(anObject: TOrderItem): Integer;
begin
  result := IndexOfElement(anObject);
end;

function TOrderItemList.Includes(anObject: TOrderItem) : Boolean;
begin
  result := IncludesElement(anObject);
end;

function TOrderItemList.AddNew: TOrderItem;
begin
  result := TOrderItem(InternalAddNew);
end;

procedure TOrderItemList.Insert(index: Integer; NewObject: TOrderItem);
begin
  if assigned(NewObject) then
    InsertElement(index, NewObject);
end;

function TOrderItemList.GetBoldObject(index: Integer): TOrderItem;
begin
  result := TOrderItem(GetElement(index));
end;

procedure TOrderItemList.SetBoldObject(index: Integer; NewObject: TOrderItem);
begin;
  SetElement(index, NewObject);
end;

{ TPart }

function TPart._Get_M_name: TBAString;
begin
  assert(ValidateMember('TPart', 'name', 0, TBAString));
  Result := TBAString(BoldMembers[0]);
end;

function TPart._Getname: String;
begin
  Result := M_name.AsString;
end;

procedure TPart._Setname(NewValue: String);
begin
  M_name.AsString := NewValue;
end;

function TPart._Get_M_price: TBACurrency;
begin
  assert(ValidateMember('TPart', 'price', 1, TBACurrency));
  Result := TBACurrency(BoldMembers[1]);
end;

function TPart._Getprice: Currency;
begin
  Result := M_price.AsCurrency;
end;

procedure TPart._Setprice(NewValue: Currency);
begin
  M_price.AsCurrency := NewValue;
end;

function TPart._Getorderitems: TOrderItemList;
begin
  assert(ValidateMember('TPart', 'orderitems', 2, TOrderItemList));
  Result := TOrderItemList(BoldMembers[2]);
end;

procedure TPartList.Add(NewObject: TPart);
begin
  if Assigned(NewObject) then
    AddElement(NewObject);
end;

function TPartList.IndexOf(anObject: TPart): Integer;
begin
  result := IndexOfElement(anObject);
end;

function TPartList.Includes(anObject: TPart) : Boolean;
begin
  result := IncludesElement(anObject);
end;

function TPartList.AddNew: TPart;
begin
  result := TPart(InternalAddNew);
end;

procedure TPartList.Insert(index: Integer; NewObject: TPart);
begin
  if assigned(NewObject) then
    InsertElement(index, NewObject);
end;

function TPartList.GetBoldObject(index: Integer): TPart;
begin
  result := TPart(GetElement(index));
end;

procedure TPartList.SetBoldObject(index: Integer; NewObject: TPart);
begin;
  SetElement(index, NewObject);
end;

function GeneratedCodeCRC: String;
begin
  result := '33704237';
end;

procedure InstallObjectListClasses(BoldObjectListClasses: TBoldGeneratedClassList);
begin
  BoldObjectListClasses.AddObjectEntry('BusinessClassesRoot', TBusinessClassesRootList);
  BoldObjectListClasses.AddObjectEntry('Customer', TCustomerList);
  BoldObjectListClasses.AddObjectEntry('Order', TOrderList);
  BoldObjectListClasses.AddObjectEntry('OrderItem', TOrderItemList);
  BoldObjectListClasses.AddObjectEntry('Part', TPartList);
end;

procedure InstallBusinessClasses(BoldObjectClasses: TBoldGeneratedClassList);
begin
  BoldObjectClasses.AddObjectEntry('BusinessClassesRoot', TBusinessClassesRoot);
  BoldObjectClasses.AddObjectEntry('Customer', TCustomer);
  BoldObjectClasses.AddObjectEntry('Order', TOrder);
  BoldObjectClasses.AddObjectEntry('OrderItem', TOrderItem);
  BoldObjectClasses.AddObjectEntry('Part', TPart);
end;

var
  CodeDescriptor: TBoldGeneratedCodeDescriptor;

initialization
  CodeDescriptor := GeneratedCodes.AddGeneratedCodeDescriptorWithFunc('ConstraintExampleClasses', InstallBusinessClasses, InstallObjectListClasses, GeneratedCodeCRC);
finalization
  GeneratedCodes.Remove(CodeDescriptor);
end.

 