
/////////////////////////////////////////////////////////
//                                                     //
//              Bold for Delphi                        //
//          This source code is distributed            //
//              as part of the examples.               //
//    Copyright (c) 2002 BoldSoft AB, Sweden           //
//                                                     //
/////////////////////////////////////////////////////////

unit BusinessClasses_PersistenceInterfaces;

interface

uses


  BoldValueInterfaces,
  BoldValueSpaceInterfaces,
  BoldMeta,
  BoldId,
  BoldExternalPersistenceSupport;

type
  IPersistentBusinessClassesRoot = interface;
  IPersistentbribesisBribedBy = interface;
  IPersistentContact = interface;
  IPersistentCustomer = interface;
  IPersistentEmployee = interface;
  IPersistentItem = interface;
  IPersistentOrder = interface;
  IPersistentPart = interface;
  IPersistentVendor = interface;

  TBusinessClassesRootPersistenceAdapter = class;
  TbribesisBribedByPersistenceAdapter = class;
  TContactPersistenceAdapter = class;
  TCustomerPersistenceAdapter = class;
  TEmployeePersistenceAdapter = class;
  TItemPersistenceAdapter = class;
  TOrderPersistenceAdapter = class;
  TPartPersistenceAdapter = class;
  TVendorPersistenceAdapter = class;

  IPersistentBusinessClassesRoot = interface(IPersistentBoldObject)
  ['{67E62F15-804E-40D9-9CB6-F537756DC0E7}']  

  end;

  IPersistentbribesisBribedBy = interface(IPersistentBusinessClassesRoot)
  ['{81BC5DCB-848B-4C9D-8428-8B344B14A44F}']  
    function Get_M_isBribedBy: IBoldObjectIdRef;
    function Get_isBribedBy: IPersistentVendor;
    procedure Set_isBribedBy(const NewValue: IPersistentVendor);
    function Get_isBribedBy_Type: TMoldClass;
    function Get_M_bribes: IBoldObjectIdRef;
    function Get_bribes: IPersistentEmployee;
    procedure Set_bribes(const NewValue: IPersistentEmployee);
    function Get_bribes_Type: TMoldClass;

    property M_isBribedBy: IBoldObjectIdRef read Get_M_isBribedBy;
    property isBribedBy: IPersistentVendor read Get_isBribedBy write Set_isBribedBy;
    property isBribedBy_Type: TMoldClass read Get_isBribedBy_Type;
    property M_bribes: IBoldObjectIdRef read Get_M_bribes;
    property bribes: IPersistentEmployee read Get_bribes write Set_bribes;
    property bribes_Type: TMoldClass read Get_bribes_Type;
  end;

  IPersistentContact = interface(IPersistentBusinessClassesRoot)
  ['{C4B1D4D8-15CB-4F37-A228-9F8FD4F098CE}']  
    function Get_M_Name: IBoldStringContent;
    function Get_Name: String;
    procedure Set_Name(NewValue: String);

    function Get_M_Customer: IBoldObjectIdRef;
    function Get_Customer: IPersistentCustomer;
    procedure Set_Customer(const NewValue: IPersistentCustomer);
    function Get_Customer_Type: TMoldClass;

    property M_Name: IBoldStringContent read Get_M_Name;
    property Name: String read Get_Name write Set_Name;

    property M_Customer: IBoldObjectIdRef read Get_M_Customer;
    property Customer: IPersistentCustomer read Get_Customer write Set_Customer;
    property Customer_Type: TMoldClass read Get_Customer_Type;
  end;

  IPersistentCustomer = interface(IPersistentBusinessClassesRoot)
  ['{A1FF5F21-7907-4389-A199-BBB7B0597871}']  
    function Get_M_Name: IBoldStringContent;
    function Get_Name: String;
    procedure Set_Name(NewValue: String);

    function Get_M_CustomerID: IBoldIntegerContent;
    function Get_CustomerID: integer;
    procedure Set_CustomerID(NewValue: integer);

    function Get_M_IsMarried: IBoldIntegerContent;
    function Get_IsMarried: integer;
    procedure Set_IsMarried(NewValue: integer);

    function Get_Contacts: IBoldObjectIdListRef;
    function Get_Contacts_Type: TMoldClass;
    function Get_orders: IBoldObjectIdListRef;
    function Get_orders_Type: TMoldClass;

    property M_Name: IBoldStringContent read Get_M_Name;
    property Name: String read Get_Name write Set_Name;

    property M_CustomerID: IBoldIntegerContent read Get_M_CustomerID;
    property CustomerID: integer read Get_CustomerID write Set_CustomerID;

    property M_IsMarried: IBoldIntegerContent read Get_M_IsMarried;
    property IsMarried: integer read Get_IsMarried write Set_IsMarried;

    property Contacts: IBoldObjectIdListRef read Get_Contacts;
    property Contacts_Type: TMoldClass read Get_Contacts_Type;
    property orders: IBoldObjectIdListRef read Get_orders;
    property orders_Type: TMoldClass read Get_orders_Type;
  end;

  IPersistentEmployee = interface(IPersistentBusinessClassesRoot)
  ['{857BD95A-1556-4A37-87F7-E9A804F34EEE}']  
    function Get_M_EmployeeNo: IBoldIntegerContent;
    function Get_EmployeeNo: integer;
    procedure Set_EmployeeNo(NewValue: integer);

    function Get_M_LastName: IBoldStringContent;
    function Get_LastName: String;
    procedure Set_LastName(NewValue: String);

    function Get_M_FirstName: IBoldStringContent;
    function Get_FirstName: String;
    procedure Set_FirstName(NewValue: String);

    function Get_orders: IBoldObjectIdListRef;
    function Get_orders_Type: TMoldClass;
    function Get_isBribedBy: IBoldObjectIdListRef;
    function Get_isBribedBy_Type: TMoldClass;

    property M_EmployeeNo: IBoldIntegerContent read Get_M_EmployeeNo;
    property EmployeeNo: integer read Get_EmployeeNo write Set_EmployeeNo;

    property M_LastName: IBoldStringContent read Get_M_LastName;
    property LastName: String read Get_LastName write Set_LastName;

    property M_FirstName: IBoldStringContent read Get_M_FirstName;
    property FirstName: String read Get_FirstName write Set_FirstName;

    property orders: IBoldObjectIdListRef read Get_orders;
    property orders_Type: TMoldClass read Get_orders_Type;
    property isBribedBy: IBoldObjectIdListRef read Get_isBribedBy;
    property isBribedBy_Type: TMoldClass read Get_isBribedBy_Type;
  end;

  IPersistentItem = interface(IPersistentBusinessClassesRoot)
  ['{46029D8B-2546-4448-A58D-1675DEFA9670}']  
    function Get_M_Qty: IBoldIntegerContent;
    function Get_Qty: integer;
    procedure Set_Qty(NewValue: integer);

    function Get_M_Discount: IBoldIntegerContent;
    function Get_Discount: integer;
    procedure Set_Discount(NewValue: integer);

    function Get_M_OrderNo: IBoldIntegerContent;
    function Get_OrderNo: integer;
    procedure Set_OrderNo(NewValue: integer);

    function Get_M_ItemNo: IBoldIntegerContent;
    function Get_ItemNo: integer;
    procedure Set_ItemNo(NewValue: integer);

    function Get_M_Order: IBoldObjectIdRef;
    function Get_Order: IPersistentOrder;
    procedure Set_Order(const NewValue: IPersistentOrder);
    function Get_Order_Type: TMoldClass;
    function Get_M_Part: IBoldObjectIdRef;
    function Get_Part: IPersistentPart;
    procedure Set_Part(const NewValue: IPersistentPart);
    function Get_Part_Type: TMoldClass;

    property M_Qty: IBoldIntegerContent read Get_M_Qty;
    property Qty: integer read Get_Qty write Set_Qty;

    property M_Discount: IBoldIntegerContent read Get_M_Discount;
    property Discount: integer read Get_Discount write Set_Discount;

    property M_OrderNo: IBoldIntegerContent read Get_M_OrderNo;
    property OrderNo: integer read Get_OrderNo write Set_OrderNo;

    property M_ItemNo: IBoldIntegerContent read Get_M_ItemNo;
    property ItemNo: integer read Get_ItemNo write Set_ItemNo;

    property M_Order: IBoldObjectIdRef read Get_M_Order;
    property Order: IPersistentOrder read Get_Order write Set_Order;
    property Order_Type: TMoldClass read Get_Order_Type;
    property M_Part: IBoldObjectIdRef read Get_M_Part;
    property Part: IPersistentPart read Get_Part write Set_Part;
    property Part_Type: TMoldClass read Get_Part_Type;
  end;

  IPersistentOrder = interface(IPersistentBusinessClassesRoot)
  ['{0A3EDFB1-1342-408C-BBE4-D975204C600C}']  
    function Get_M_OrderNo: IBoldIntegerContent;
    function Get_OrderNo: integer;
    procedure Set_OrderNo(NewValue: integer);

    function Get_M_ShipDate: IBoldDateContent;
    function Get_ShipDate: TDateTime;
    procedure Set_ShipDate(NewValue: TDateTime);

    function Get_M_SaleDate: IBoldDateContent;
    function Get_SaleDate: TDateTime;
    procedure Set_SaleDate(NewValue: TDateTime);

    function Get_M_AmountPaid: IBoldCurrencyContent;
    function Get_AmountPaid: Currency;
    procedure Set_AmountPaid(NewValue: Currency);

    function Get_M_Customer: IBoldObjectIdRef;
    function Get_Customer: IPersistentCustomer;
    procedure Set_Customer(const NewValue: IPersistentCustomer);
    function Get_Customer_Type: TMoldClass;
    function Get_items: IBoldObjectIdListRef;
    function Get_items_Type: TMoldClass;
    function Get_M_responsible: IBoldObjectIdRef;
    function Get_responsible: IPersistentEmployee;
    procedure Set_responsible(const NewValue: IPersistentEmployee);
    function Get_responsible_Type: TMoldClass;

    property M_OrderNo: IBoldIntegerContent read Get_M_OrderNo;
    property OrderNo: integer read Get_OrderNo write Set_OrderNo;

    property M_ShipDate: IBoldDateContent read Get_M_ShipDate;
    property ShipDate: TDateTime read Get_ShipDate write Set_ShipDate;

    property M_SaleDate: IBoldDateContent read Get_M_SaleDate;
    property SaleDate: TDateTime read Get_SaleDate write Set_SaleDate;

    property M_AmountPaid: IBoldCurrencyContent read Get_M_AmountPaid;
    property AmountPaid: Currency read Get_AmountPaid write Set_AmountPaid;

    property M_Customer: IBoldObjectIdRef read Get_M_Customer;
    property Customer: IPersistentCustomer read Get_Customer write Set_Customer;
    property Customer_Type: TMoldClass read Get_Customer_Type;
    property items: IBoldObjectIdListRef read Get_items;
    property items_Type: TMoldClass read Get_items_Type;
    property M_responsible: IBoldObjectIdRef read Get_M_responsible;
    property responsible: IPersistentEmployee read Get_responsible write Set_responsible;
    property responsible_Type: TMoldClass read Get_responsible_Type;
  end;

  IPersistentPart = interface(IPersistentBusinessClassesRoot)
  ['{283F5BAC-1564-45DD-A771-CEDD10EB9E48}']  
    function Get_M_PartNo: IBoldIntegerContent;
    function Get_PartNo: integer;
    procedure Set_PartNo(NewValue: integer);

    function Get_M_Description: IBoldStringContent;
    function Get_Description: String;
    procedure Set_Description(NewValue: String);

    function Get_M_Cost: IBoldCurrencyContent;
    function Get_Cost: Currency;
    procedure Set_Cost(NewValue: Currency);

    function Get_M_ListPrice: IBoldCurrencyContent;
    function Get_ListPrice: Currency;
    procedure Set_ListPrice(NewValue: Currency);

    function Get_M_Vendor: IBoldObjectIdRef;
    function Get_Vendor: IPersistentVendor;
    procedure Set_Vendor(const NewValue: IPersistentVendor);
    function Get_Vendor_Type: TMoldClass;
    function Get_items: IBoldObjectIdListRef;
    function Get_items_Type: TMoldClass;

    property M_PartNo: IBoldIntegerContent read Get_M_PartNo;
    property PartNo: integer read Get_PartNo write Set_PartNo;

    property M_Description: IBoldStringContent read Get_M_Description;
    property Description: String read Get_Description write Set_Description;

    property M_Cost: IBoldCurrencyContent read Get_M_Cost;
    property Cost: Currency read Get_Cost write Set_Cost;

    property M_ListPrice: IBoldCurrencyContent read Get_M_ListPrice;
    property ListPrice: Currency read Get_ListPrice write Set_ListPrice;

    property M_Vendor: IBoldObjectIdRef read Get_M_Vendor;
    property Vendor: IPersistentVendor read Get_Vendor write Set_Vendor;
    property Vendor_Type: TMoldClass read Get_Vendor_Type;
    property items: IBoldObjectIdListRef read Get_items;
    property items_Type: TMoldClass read Get_items_Type;
  end;

  IPersistentVendor = interface(IPersistentBusinessClassesRoot)
  ['{CBA52D25-F9A6-459B-B266-66B46C633020}']  
    function Get_M_VendorNo: IBoldIntegerContent;
    function Get_VendorNo: integer;
    procedure Set_VendorNo(NewValue: integer);

    function Get_M_VendorName: IBoldStringContent;
    function Get_VendorName: String;
    procedure Set_VendorName(NewValue: String);

    function Get_M_Address1: IBoldStringContent;
    function Get_Address1: String;
    procedure Set_Address1(NewValue: String);

    function Get_M_Address2: IBoldStringContent;
    function Get_Address2: String;
    procedure Set_Address2(NewValue: String);

    function Get_M_Preferred: IBoldIntegerContent;
    function Get_Preferred: integer;
    procedure Set_Preferred(NewValue: integer);

    function Get_parts: IBoldObjectIdListRef;
    function Get_parts_Type: TMoldClass;
    function Get_bribes: IBoldObjectIdListRef;
    function Get_bribes_Type: TMoldClass;

    property M_VendorNo: IBoldIntegerContent read Get_M_VendorNo;
    property VendorNo: integer read Get_VendorNo write Set_VendorNo;

    property M_VendorName: IBoldStringContent read Get_M_VendorName;
    property VendorName: String read Get_VendorName write Set_VendorName;

    property M_Address1: IBoldStringContent read Get_M_Address1;
    property Address1: String read Get_Address1 write Set_Address1;

    property M_Address2: IBoldStringContent read Get_M_Address2;
    property Address2: String read Get_Address2 write Set_Address2;

    property M_Preferred: IBoldIntegerContent read Get_M_Preferred;
    property Preferred: integer read Get_Preferred write Set_Preferred;

    property parts: IBoldObjectIdListRef read Get_parts;
    property parts_Type: TMoldClass read Get_parts_Type;
    property bribes: IBoldObjectIdListRef read Get_bribes;
    property bribes_Type: TMoldClass read Get_bribes_Type;
  end;

  TBusinessClassesRootPersistenceAdapter = class(TBoldObjectPersistenceAdapter, IPersistentBusinessClassesRoot)
  private
  end;

  TbribesisBribedByPersistenceAdapter = class(TBusinessClassesRootPersistenceAdapter, IPersistentbribesisBribedBy)
  private
    function Get_M_isBribedBy: IBoldObjectIdRef;
    function Get_isBribedBy: IPersistentVendor;
    procedure Set_isBribedBy(const NewValue: IPersistentVendor);
    function Get_isBribedBy_Type: TMoldClass;
    function Get_M_bribes: IBoldObjectIdRef;
    function Get_bribes: IPersistentEmployee;
    procedure Set_bribes(const NewValue: IPersistentEmployee);
    function Get_bribes_Type: TMoldClass;
  end;

  TContactPersistenceAdapter = class(TBusinessClassesRootPersistenceAdapter, IPersistentContact)
  private
    function Get_M_Name: IBoldStringContent;
    function Get_Name: String;
    procedure Set_Name(NewValue: String);

    function Get_M_Customer: IBoldObjectIdRef;
    function Get_Customer: IPersistentCustomer;
    procedure Set_Customer(const NewValue: IPersistentCustomer);
    function Get_Customer_Type: TMoldClass;
  end;

  TCustomerPersistenceAdapter = class(TBusinessClassesRootPersistenceAdapter, IPersistentCustomer)
  private
    function Get_M_Name: IBoldStringContent;
    function Get_Name: String;
    procedure Set_Name(NewValue: String);

    function Get_M_CustomerID: IBoldIntegerContent;
    function Get_CustomerID: integer;
    procedure Set_CustomerID(NewValue: integer);

    function Get_M_IsMarried: IBoldIntegerContent;
    function Get_IsMarried: integer;
    procedure Set_IsMarried(NewValue: integer);

    function Get_Contacts: IBoldObjectIdListRef;
    function Get_Contacts_Type: TMoldClass;
    function Get_orders: IBoldObjectIdListRef;
    function Get_orders_Type: TMoldClass;
  end;

  TEmployeePersistenceAdapter = class(TBusinessClassesRootPersistenceAdapter, IPersistentEmployee)
  private
    function Get_M_EmployeeNo: IBoldIntegerContent;
    function Get_EmployeeNo: integer;
    procedure Set_EmployeeNo(NewValue: integer);

    function Get_M_LastName: IBoldStringContent;
    function Get_LastName: String;
    procedure Set_LastName(NewValue: String);

    function Get_M_FirstName: IBoldStringContent;
    function Get_FirstName: String;
    procedure Set_FirstName(NewValue: String);

    function Get_orders: IBoldObjectIdListRef;
    function Get_orders_Type: TMoldClass;
    function Get_isBribedBy: IBoldObjectIdListRef;
    function Get_isBribedBy_Type: TMoldClass;
  end;

  TItemPersistenceAdapter = class(TBusinessClassesRootPersistenceAdapter, IPersistentItem)
  private
    function Get_M_Qty: IBoldIntegerContent;
    function Get_Qty: integer;
    procedure Set_Qty(NewValue: integer);

    function Get_M_Discount: IBoldIntegerContent;
    function Get_Discount: integer;
    procedure Set_Discount(NewValue: integer);

    function Get_M_OrderNo: IBoldIntegerContent;
    function Get_OrderNo: integer;
    procedure Set_OrderNo(NewValue: integer);

    function Get_M_ItemNo: IBoldIntegerContent;
    function Get_ItemNo: integer;
    procedure Set_ItemNo(NewValue: integer);

    function Get_M_Order: IBoldObjectIdRef;
    function Get_Order: IPersistentOrder;
    procedure Set_Order(const NewValue: IPersistentOrder);
    function Get_Order_Type: TMoldClass;
    function Get_M_Part: IBoldObjectIdRef;
    function Get_Part: IPersistentPart;
    procedure Set_Part(const NewValue: IPersistentPart);
    function Get_Part_Type: TMoldClass;
  end;

  TOrderPersistenceAdapter = class(TBusinessClassesRootPersistenceAdapter, IPersistentOrder)
  private
    function Get_M_OrderNo: IBoldIntegerContent;
    function Get_OrderNo: integer;
    procedure Set_OrderNo(NewValue: integer);

    function Get_M_ShipDate: IBoldDateContent;
    function Get_ShipDate: TDateTime;
    procedure Set_ShipDate(NewValue: TDateTime);

    function Get_M_SaleDate: IBoldDateContent;
    function Get_SaleDate: TDateTime;
    procedure Set_SaleDate(NewValue: TDateTime);

    function Get_M_AmountPaid: IBoldCurrencyContent;
    function Get_AmountPaid: Currency;
    procedure Set_AmountPaid(NewValue: Currency);

    function Get_M_Customer: IBoldObjectIdRef;
    function Get_Customer: IPersistentCustomer;
    procedure Set_Customer(const NewValue: IPersistentCustomer);
    function Get_Customer_Type: TMoldClass;
    function Get_items: IBoldObjectIdListRef;
    function Get_items_Type: TMoldClass;
    function Get_M_responsible: IBoldObjectIdRef;
    function Get_responsible: IPersistentEmployee;
    procedure Set_responsible(const NewValue: IPersistentEmployee);
    function Get_responsible_Type: TMoldClass;
  end;

  TPartPersistenceAdapter = class(TBusinessClassesRootPersistenceAdapter, IPersistentPart)
  private
    function Get_M_PartNo: IBoldIntegerContent;
    function Get_PartNo: integer;
    procedure Set_PartNo(NewValue: integer);

    function Get_M_Description: IBoldStringContent;
    function Get_Description: String;
    procedure Set_Description(NewValue: String);

    function Get_M_Cost: IBoldCurrencyContent;
    function Get_Cost: Currency;
    procedure Set_Cost(NewValue: Currency);

    function Get_M_ListPrice: IBoldCurrencyContent;
    function Get_ListPrice: Currency;
    procedure Set_ListPrice(NewValue: Currency);

    function Get_M_Vendor: IBoldObjectIdRef;
    function Get_Vendor: IPersistentVendor;
    procedure Set_Vendor(const NewValue: IPersistentVendor);
    function Get_Vendor_Type: TMoldClass;
    function Get_items: IBoldObjectIdListRef;
    function Get_items_Type: TMoldClass;
  end;

  TVendorPersistenceAdapter = class(TBusinessClassesRootPersistenceAdapter, IPersistentVendor)
  private
    function Get_M_VendorNo: IBoldIntegerContent;
    function Get_VendorNo: integer;
    procedure Set_VendorNo(NewValue: integer);

    function Get_M_VendorName: IBoldStringContent;
    function Get_VendorName: String;
    procedure Set_VendorName(NewValue: String);

    function Get_M_Address1: IBoldStringContent;
    function Get_Address1: String;
    procedure Set_Address1(NewValue: String);

    function Get_M_Address2: IBoldStringContent;
    function Get_Address2: String;
    procedure Set_Address2(NewValue: String);

    function Get_M_Preferred: IBoldIntegerContent;
    function Get_Preferred: integer;
    procedure Set_Preferred(NewValue: integer);

    function Get_parts: IBoldObjectIdListRef;
    function Get_parts_Type: TMoldClass;
    function Get_bribes: IBoldObjectIdListRef;
    function Get_bribes_Type: TMoldClass;
  end;

implementation

uses

  bolddefs;


function TbribesisBribedByPersistenceAdapter.Get_M_isBribedBy: IBoldObjectIdRef;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[0];
  if not value.QueryInterface(IBoldObjectIdRef, result) = S_OK then
    raise EBold.Create('TbribesisBribedByPersistenceAdapter.Get_M_isBribedBy: Invalid interface... does not support IBoldObjectIdRef');
end;

function TbribesisBribedByPersistenceAdapter.Get_isBribedBy: IPersistentVendor;
var
  id: TBoldObjectId;
  ObjectContents: IBoldObjectContents;
begin
  result := nil;
  Id := Get_M_isBribedBy.Id;
  if assigned(Id) then
  begin
    ObjectContents := ValueSpace.ObjectContentsByObjectId[Id];
    if assigned(ObjectContents) then
      result := TVendorPersistenceAdapter.Create(ObjectContents, ValueSpace, Get_isBribedBy_Type);
  end;
end;

procedure TbribesisBribedByPersistenceAdapter.Set_isBribedBy(const NewValue: IPersistentVendor);
begin
  if assigned(NewValue) then
    Get_M_isBribedBy.SetFromId(NewValue.AsObjectContents.ObjectId)
  else
    Get_M_isBribedBy.SetFromId(nil);
end;

function TbribesisBribedByPersistenceAdapter.Get_isBribedBy_Type: TMoldClass;
begin
  result := (MoldClass.AllBoldMembers[0] as TMoldRole).OtherEnd.MoldClass;
end;

function TbribesisBribedByPersistenceAdapter.Get_M_bribes: IBoldObjectIdRef;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[1];
  if not value.QueryInterface(IBoldObjectIdRef, result) = S_OK then
    raise EBold.Create('TbribesisBribedByPersistenceAdapter.Get_M_bribes: Invalid interface... does not support IBoldObjectIdRef');
end;

function TbribesisBribedByPersistenceAdapter.Get_bribes: IPersistentEmployee;
var
  id: TBoldObjectId;
  ObjectContents: IBoldObjectContents;
begin
  result := nil;
  Id := Get_M_bribes.Id;
  if assigned(Id) then
  begin
    ObjectContents := ValueSpace.ObjectContentsByObjectId[Id];
    if assigned(ObjectContents) then
      result := TEmployeePersistenceAdapter.Create(ObjectContents, ValueSpace, Get_bribes_Type);
  end;
end;

procedure TbribesisBribedByPersistenceAdapter.Set_bribes(const NewValue: IPersistentEmployee);
begin
  if assigned(NewValue) then
    Get_M_bribes.SetFromId(NewValue.AsObjectContents.ObjectId)
  else
    Get_M_bribes.SetFromId(nil);
end;

function TbribesisBribedByPersistenceAdapter.Get_bribes_Type: TMoldClass;
begin
  result := (MoldClass.AllBoldMembers[1] as TMoldRole).OtherEnd.MoldClass;
end;


function TContactPersistenceAdapter.Get_M_Name: IBoldStringContent;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[0];
  if not value.QueryInterface(IBoldStringContent, result) = S_OK then
    raise EBold.Create('TContactPersistenceAdapter.Get_M_Name: Invalid interface... does not support IBoldStringContent');
end;

function TContactPersistenceAdapter.Get_Name: String;
begin
  result := Get_M_Name.AsString;
end;

procedure TContactPersistenceAdapter.Set_Name(NewValue: String);
begin
  Get_M_Name.AsString := NewValue;
end;


function TContactPersistenceAdapter.Get_M_Customer: IBoldObjectIdRef;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[1];
  if not value.QueryInterface(IBoldObjectIdRef, result) = S_OK then
    raise EBold.Create('TContactPersistenceAdapter.Get_M_Customer: Invalid interface... does not support IBoldObjectIdRef');
end;

function TContactPersistenceAdapter.Get_Customer: IPersistentCustomer;
var
  id: TBoldObjectId;
  ObjectContents: IBoldObjectContents;
begin
  result := nil;
  Id := Get_M_Customer.Id;
  if assigned(Id) then
  begin
    ObjectContents := ValueSpace.ObjectContentsByObjectId[Id];
    if assigned(ObjectContents) then
      result := TCustomerPersistenceAdapter.Create(ObjectContents, ValueSpace, Get_Customer_Type);
  end;
end;

procedure TContactPersistenceAdapter.Set_Customer(const NewValue: IPersistentCustomer);
begin
  if assigned(NewValue) then
    Get_M_Customer.SetFromId(NewValue.AsObjectContents.ObjectId)
  else
    Get_M_Customer.SetFromId(nil);
end;

function TContactPersistenceAdapter.Get_Customer_Type: TMoldClass;
begin
  result := (MoldClass.AllBoldMembers[1] as TMoldRole).OtherEnd.MoldClass;
end;


function TCustomerPersistenceAdapter.Get_M_Name: IBoldStringContent;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[0];
  if not value.QueryInterface(IBoldStringContent, result) = S_OK then
    raise EBold.Create('TCustomerPersistenceAdapter.Get_M_Name: Invalid interface... does not support IBoldStringContent');
end;

function TCustomerPersistenceAdapter.Get_Name: String;
begin
  result := Get_M_Name.AsString;
end;

procedure TCustomerPersistenceAdapter.Set_Name(NewValue: String);
begin
  Get_M_Name.AsString := NewValue;
end;


function TCustomerPersistenceAdapter.Get_M_CustomerID: IBoldIntegerContent;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[1];
  if not value.QueryInterface(IBoldIntegerContent, result) = S_OK then
    raise EBold.Create('TCustomerPersistenceAdapter.Get_M_CustomerID: Invalid interface... does not support IBoldIntegerContent');
end;

function TCustomerPersistenceAdapter.Get_CustomerID: integer;
begin
  result := Get_M_CustomerID.AsInteger;
end;

procedure TCustomerPersistenceAdapter.Set_CustomerID(NewValue: integer);
begin
  Get_M_CustomerID.AsInteger := NewValue;
end;


function TCustomerPersistenceAdapter.Get_M_IsMarried: IBoldIntegerContent;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[2];
  if not value.QueryInterface(IBoldIntegerContent, result) = S_OK then
    raise EBold.Create('TCustomerPersistenceAdapter.Get_M_IsMarried: Invalid interface... does not support IBoldIntegerContent');
end;

function TCustomerPersistenceAdapter.Get_IsMarried: integer;
begin
  result := Get_M_IsMarried.AsInteger;
end;

procedure TCustomerPersistenceAdapter.Set_IsMarried(NewValue: integer);
begin
  Get_M_IsMarried.AsInteger := NewValue;
end;


function TCustomerPersistenceAdapter.Get_Contacts: IBoldObjectIdListRef;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[3];
  if not value.QueryInterface(IBoldObjectIdListRef, result) = S_OK then
    raise EBold.Create('TCustomerPersistenceAdapter.Get_M_Contacts: Invalid interface... does not support IBoldObjectIdListRef');
end;

function TCustomerPersistenceAdapter.Get_Contacts_Type: TMoldClass;
begin
  result := (MoldClass.AllBoldMembers[3] as TMoldRole).OtherEnd.MoldClass;
end;
function TCustomerPersistenceAdapter.Get_orders: IBoldObjectIdListRef;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[4];
  if not value.QueryInterface(IBoldObjectIdListRef, result) = S_OK then
    raise EBold.Create('TCustomerPersistenceAdapter.Get_M_orders: Invalid interface... does not support IBoldObjectIdListRef');
end;

function TCustomerPersistenceAdapter.Get_orders_Type: TMoldClass;
begin
  result := (MoldClass.AllBoldMembers[4] as TMoldRole).OtherEnd.MoldClass;
end;

function TEmployeePersistenceAdapter.Get_M_EmployeeNo: IBoldIntegerContent;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[0];
  if not value.QueryInterface(IBoldIntegerContent, result) = S_OK then
    raise EBold.Create('TEmployeePersistenceAdapter.Get_M_EmployeeNo: Invalid interface... does not support IBoldIntegerContent');
end;

function TEmployeePersistenceAdapter.Get_EmployeeNo: integer;
begin
  result := Get_M_EmployeeNo.AsInteger;
end;

procedure TEmployeePersistenceAdapter.Set_EmployeeNo(NewValue: integer);
begin
  Get_M_EmployeeNo.AsInteger := NewValue;
end;


function TEmployeePersistenceAdapter.Get_M_LastName: IBoldStringContent;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[1];
  if not value.QueryInterface(IBoldStringContent, result) = S_OK then
    raise EBold.Create('TEmployeePersistenceAdapter.Get_M_LastName: Invalid interface... does not support IBoldStringContent');
end;

function TEmployeePersistenceAdapter.Get_LastName: String;
begin
  result := Get_M_LastName.AsString;
end;

procedure TEmployeePersistenceAdapter.Set_LastName(NewValue: String);
begin
  Get_M_LastName.AsString := NewValue;
end;


function TEmployeePersistenceAdapter.Get_M_FirstName: IBoldStringContent;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[2];
  if not value.QueryInterface(IBoldStringContent, result) = S_OK then
    raise EBold.Create('TEmployeePersistenceAdapter.Get_M_FirstName: Invalid interface... does not support IBoldStringContent');
end;

function TEmployeePersistenceAdapter.Get_FirstName: String;
begin
  result := Get_M_FirstName.AsString;
end;

procedure TEmployeePersistenceAdapter.Set_FirstName(NewValue: String);
begin
  Get_M_FirstName.AsString := NewValue;
end;


function TEmployeePersistenceAdapter.Get_orders: IBoldObjectIdListRef;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[3];
  if not value.QueryInterface(IBoldObjectIdListRef, result) = S_OK then
    raise EBold.Create('TEmployeePersistenceAdapter.Get_M_orders: Invalid interface... does not support IBoldObjectIdListRef');
end;

function TEmployeePersistenceAdapter.Get_orders_Type: TMoldClass;
begin
  result := (MoldClass.AllBoldMembers[3] as TMoldRole).OtherEnd.MoldClass;
end;
function TEmployeePersistenceAdapter.Get_isBribedBy: IBoldObjectIdListRef;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[4];
  if not value.QueryInterface(IBoldObjectIdListRef, result) = S_OK then
    raise EBold.Create('TEmployeePersistenceAdapter.Get_M_isBribedBy: Invalid interface... does not support IBoldObjectIdListRef');
end;

function TEmployeePersistenceAdapter.Get_isBribedBy_Type: TMoldClass;
begin
  result := (MoldClass.AllBoldMembers[4] as TMoldRole).OtherEnd.MoldClass;
end;


function TItemPersistenceAdapter.Get_M_Qty: IBoldIntegerContent;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[0];
  if not value.QueryInterface(IBoldIntegerContent, result) = S_OK then
    raise EBold.Create('TItemPersistenceAdapter.Get_M_Qty: Invalid interface... does not support IBoldIntegerContent');
end;

function TItemPersistenceAdapter.Get_Qty: integer;
begin
  result := Get_M_Qty.AsInteger;
end;

procedure TItemPersistenceAdapter.Set_Qty(NewValue: integer);
begin
  Get_M_Qty.AsInteger := NewValue;
end;


function TItemPersistenceAdapter.Get_M_Discount: IBoldIntegerContent;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[1];
  if not value.QueryInterface(IBoldIntegerContent, result) = S_OK then
    raise EBold.Create('TItemPersistenceAdapter.Get_M_Discount: Invalid interface... does not support IBoldIntegerContent');
end;

function TItemPersistenceAdapter.Get_Discount: integer;
begin
  result := Get_M_Discount.AsInteger;
end;

procedure TItemPersistenceAdapter.Set_Discount(NewValue: integer);
begin
  Get_M_Discount.AsInteger := NewValue;
end;


function TItemPersistenceAdapter.Get_M_OrderNo: IBoldIntegerContent;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[2];
  if not value.QueryInterface(IBoldIntegerContent, result) = S_OK then
    raise EBold.Create('TItemPersistenceAdapter.Get_M_OrderNo: Invalid interface... does not support IBoldIntegerContent');
end;

function TItemPersistenceAdapter.Get_OrderNo: integer;
begin
  result := Get_M_OrderNo.AsInteger;
end;

procedure TItemPersistenceAdapter.Set_OrderNo(NewValue: integer);
begin
  Get_M_OrderNo.AsInteger := NewValue;
end;


function TItemPersistenceAdapter.Get_M_ItemNo: IBoldIntegerContent;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[3];
  if not value.QueryInterface(IBoldIntegerContent, result) = S_OK then
    raise EBold.Create('TItemPersistenceAdapter.Get_M_ItemNo: Invalid interface... does not support IBoldIntegerContent');
end;

function TItemPersistenceAdapter.Get_ItemNo: integer;
begin
  result := Get_M_ItemNo.AsInteger;
end;

procedure TItemPersistenceAdapter.Set_ItemNo(NewValue: integer);
begin
  Get_M_ItemNo.AsInteger := NewValue;
end;



function TItemPersistenceAdapter.Get_M_Order: IBoldObjectIdRef;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[5];
  if not value.QueryInterface(IBoldObjectIdRef, result) = S_OK then
    raise EBold.Create('TItemPersistenceAdapter.Get_M_Order: Invalid interface... does not support IBoldObjectIdRef');
end;

function TItemPersistenceAdapter.Get_Order: IPersistentOrder;
var
  id: TBoldObjectId;
  ObjectContents: IBoldObjectContents;
begin
  result := nil;
  Id := Get_M_Order.Id;
  if assigned(Id) then
  begin
    ObjectContents := ValueSpace.ObjectContentsByObjectId[Id];
    if assigned(ObjectContents) then
      result := TOrderPersistenceAdapter.Create(ObjectContents, ValueSpace, Get_Order_Type);
  end;
end;

procedure TItemPersistenceAdapter.Set_Order(const NewValue: IPersistentOrder);
begin
  if assigned(NewValue) then
    Get_M_Order.SetFromId(NewValue.AsObjectContents.ObjectId)
  else
    Get_M_Order.SetFromId(nil);
end;

function TItemPersistenceAdapter.Get_Order_Type: TMoldClass;
begin
  result := (MoldClass.AllBoldMembers[5] as TMoldRole).OtherEnd.MoldClass;
end;

function TItemPersistenceAdapter.Get_M_Part: IBoldObjectIdRef;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[6];
  if not value.QueryInterface(IBoldObjectIdRef, result) = S_OK then
    raise EBold.Create('TItemPersistenceAdapter.Get_M_Part: Invalid interface... does not support IBoldObjectIdRef');
end;

function TItemPersistenceAdapter.Get_Part: IPersistentPart;
var
  id: TBoldObjectId;
  ObjectContents: IBoldObjectContents;
begin
  result := nil;
  Id := Get_M_Part.Id;
  if assigned(Id) then
  begin
    ObjectContents := ValueSpace.ObjectContentsByObjectId[Id];
    if assigned(ObjectContents) then
      result := TPartPersistenceAdapter.Create(ObjectContents, ValueSpace, Get_Part_Type);
  end;
end;

procedure TItemPersistenceAdapter.Set_Part(const NewValue: IPersistentPart);
begin
  if assigned(NewValue) then
    Get_M_Part.SetFromId(NewValue.AsObjectContents.ObjectId)
  else
    Get_M_Part.SetFromId(nil);
end;

function TItemPersistenceAdapter.Get_Part_Type: TMoldClass;
begin
  result := (MoldClass.AllBoldMembers[6] as TMoldRole).OtherEnd.MoldClass;
end;


function TOrderPersistenceAdapter.Get_M_OrderNo: IBoldIntegerContent;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[0];
  if not value.QueryInterface(IBoldIntegerContent, result) = S_OK then
    raise EBold.Create('TOrderPersistenceAdapter.Get_M_OrderNo: Invalid interface... does not support IBoldIntegerContent');
end;

function TOrderPersistenceAdapter.Get_OrderNo: integer;
begin
  result := Get_M_OrderNo.AsInteger;
end;

procedure TOrderPersistenceAdapter.Set_OrderNo(NewValue: integer);
begin
  Get_M_OrderNo.AsInteger := NewValue;
end;


function TOrderPersistenceAdapter.Get_M_ShipDate: IBoldDateContent;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[1];
  if not value.QueryInterface(IBoldDateContent, result) = S_OK then
    raise EBold.Create('TOrderPersistenceAdapter.Get_M_ShipDate: Invalid interface... does not support IBoldDateContent');
end;

function TOrderPersistenceAdapter.Get_ShipDate: TDateTime;
begin
  result := Get_M_ShipDate.AsDate;
end;

procedure TOrderPersistenceAdapter.Set_ShipDate(NewValue: TDateTime);
begin
  Get_M_ShipDate.AsDate := NewValue;
end;


function TOrderPersistenceAdapter.Get_M_SaleDate: IBoldDateContent;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[2];
  if not value.QueryInterface(IBoldDateContent, result) = S_OK then
    raise EBold.Create('TOrderPersistenceAdapter.Get_M_SaleDate: Invalid interface... does not support IBoldDateContent');
end;

function TOrderPersistenceAdapter.Get_SaleDate: TDateTime;
begin
  result := Get_M_SaleDate.AsDate;
end;

procedure TOrderPersistenceAdapter.Set_SaleDate(NewValue: TDateTime);
begin
  Get_M_SaleDate.AsDate := NewValue;
end;


function TOrderPersistenceAdapter.Get_M_AmountPaid: IBoldCurrencyContent;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[3];
  if not value.QueryInterface(IBoldCurrencyContent, result) = S_OK then
    raise EBold.Create('TOrderPersistenceAdapter.Get_M_AmountPaid: Invalid interface... does not support IBoldCurrencyContent');
end;

function TOrderPersistenceAdapter.Get_AmountPaid: Currency;
begin
  result := Get_M_AmountPaid.AsCurrency;
end;

procedure TOrderPersistenceAdapter.Set_AmountPaid(NewValue: Currency);
begin
  Get_M_AmountPaid.AsCurrency := NewValue;
end;



function TOrderPersistenceAdapter.Get_M_Customer: IBoldObjectIdRef;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[5];
  if not value.QueryInterface(IBoldObjectIdRef, result) = S_OK then
    raise EBold.Create('TOrderPersistenceAdapter.Get_M_Customer: Invalid interface... does not support IBoldObjectIdRef');
end;

function TOrderPersistenceAdapter.Get_Customer: IPersistentCustomer;
var
  id: TBoldObjectId;
  ObjectContents: IBoldObjectContents;
begin
  result := nil;
  Id := Get_M_Customer.Id;
  if assigned(Id) then
  begin
    ObjectContents := ValueSpace.ObjectContentsByObjectId[Id];
    if assigned(ObjectContents) then
      result := TCustomerPersistenceAdapter.Create(ObjectContents, ValueSpace, Get_Customer_Type);
  end;
end;

procedure TOrderPersistenceAdapter.Set_Customer(const NewValue: IPersistentCustomer);
begin
  if assigned(NewValue) then
    Get_M_Customer.SetFromId(NewValue.AsObjectContents.ObjectId)
  else
    Get_M_Customer.SetFromId(nil);
end;

function TOrderPersistenceAdapter.Get_Customer_Type: TMoldClass;
begin
  result := (MoldClass.AllBoldMembers[5] as TMoldRole).OtherEnd.MoldClass;
end;

function TOrderPersistenceAdapter.Get_items: IBoldObjectIdListRef;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[6];
  if not value.QueryInterface(IBoldObjectIdListRef, result) = S_OK then
    raise EBold.Create('TOrderPersistenceAdapter.Get_M_items: Invalid interface... does not support IBoldObjectIdListRef');
end;

function TOrderPersistenceAdapter.Get_items_Type: TMoldClass;
begin
  result := (MoldClass.AllBoldMembers[6] as TMoldRole).OtherEnd.MoldClass;
end;
function TOrderPersistenceAdapter.Get_M_responsible: IBoldObjectIdRef;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[7];
  if not value.QueryInterface(IBoldObjectIdRef, result) = S_OK then
    raise EBold.Create('TOrderPersistenceAdapter.Get_M_responsible: Invalid interface... does not support IBoldObjectIdRef');
end;

function TOrderPersistenceAdapter.Get_responsible: IPersistentEmployee;
var
  id: TBoldObjectId;
  ObjectContents: IBoldObjectContents;
begin
  result := nil;
  Id := Get_M_responsible.Id;
  if assigned(Id) then
  begin
    ObjectContents := ValueSpace.ObjectContentsByObjectId[Id];
    if assigned(ObjectContents) then
      result := TEmployeePersistenceAdapter.Create(ObjectContents, ValueSpace, Get_responsible_Type);
  end;
end;

procedure TOrderPersistenceAdapter.Set_responsible(const NewValue: IPersistentEmployee);
begin
  if assigned(NewValue) then
    Get_M_responsible.SetFromId(NewValue.AsObjectContents.ObjectId)
  else
    Get_M_responsible.SetFromId(nil);
end;

function TOrderPersistenceAdapter.Get_responsible_Type: TMoldClass;
begin
  result := (MoldClass.AllBoldMembers[7] as TMoldRole).OtherEnd.MoldClass;
end;



function TPartPersistenceAdapter.Get_M_PartNo: IBoldIntegerContent;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[0];
  if not value.QueryInterface(IBoldIntegerContent, result) = S_OK then
    raise EBold.Create('TPartPersistenceAdapter.Get_M_PartNo: Invalid interface... does not support IBoldIntegerContent');
end;

function TPartPersistenceAdapter.Get_PartNo: integer;
begin
  result := Get_M_PartNo.AsInteger;
end;

procedure TPartPersistenceAdapter.Set_PartNo(NewValue: integer);
begin
  Get_M_PartNo.AsInteger := NewValue;
end;


function TPartPersistenceAdapter.Get_M_Description: IBoldStringContent;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[1];
  if not value.QueryInterface(IBoldStringContent, result) = S_OK then
    raise EBold.Create('TPartPersistenceAdapter.Get_M_Description: Invalid interface... does not support IBoldStringContent');
end;

function TPartPersistenceAdapter.Get_Description: String;
begin
  result := Get_M_Description.AsString;
end;

procedure TPartPersistenceAdapter.Set_Description(NewValue: String);
begin
  Get_M_Description.AsString := NewValue;
end;


function TPartPersistenceAdapter.Get_M_Cost: IBoldCurrencyContent;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[2];
  if not value.QueryInterface(IBoldCurrencyContent, result) = S_OK then
    raise EBold.Create('TPartPersistenceAdapter.Get_M_Cost: Invalid interface... does not support IBoldCurrencyContent');
end;

function TPartPersistenceAdapter.Get_Cost: Currency;
begin
  result := Get_M_Cost.AsCurrency;
end;

procedure TPartPersistenceAdapter.Set_Cost(NewValue: Currency);
begin
  Get_M_Cost.AsCurrency := NewValue;
end;


function TPartPersistenceAdapter.Get_M_ListPrice: IBoldCurrencyContent;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[3];
  if not value.QueryInterface(IBoldCurrencyContent, result) = S_OK then
    raise EBold.Create('TPartPersistenceAdapter.Get_M_ListPrice: Invalid interface... does not support IBoldCurrencyContent');
end;

function TPartPersistenceAdapter.Get_ListPrice: Currency;
begin
  result := Get_M_ListPrice.AsCurrency;
end;

procedure TPartPersistenceAdapter.Set_ListPrice(NewValue: Currency);
begin
  Get_M_ListPrice.AsCurrency := NewValue;
end;


function TPartPersistenceAdapter.Get_M_Vendor: IBoldObjectIdRef;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[4];
  if not value.QueryInterface(IBoldObjectIdRef, result) = S_OK then
    raise EBold.Create('TPartPersistenceAdapter.Get_M_Vendor: Invalid interface... does not support IBoldObjectIdRef');
end;

function TPartPersistenceAdapter.Get_Vendor: IPersistentVendor;
var
  id: TBoldObjectId;
  ObjectContents: IBoldObjectContents;
begin
  result := nil;
  Id := Get_M_Vendor.Id;
  if assigned(Id) then
  begin
    ObjectContents := ValueSpace.ObjectContentsByObjectId[Id];
    if assigned(ObjectContents) then
      result := TVendorPersistenceAdapter.Create(ObjectContents, ValueSpace, Get_Vendor_Type);
  end;
end;

procedure TPartPersistenceAdapter.Set_Vendor(const NewValue: IPersistentVendor);
begin
  if assigned(NewValue) then
    Get_M_Vendor.SetFromId(NewValue.AsObjectContents.ObjectId)
  else
    Get_M_Vendor.SetFromId(nil);
end;

function TPartPersistenceAdapter.Get_Vendor_Type: TMoldClass;
begin
  result := (MoldClass.AllBoldMembers[4] as TMoldRole).OtherEnd.MoldClass;
end;

function TPartPersistenceAdapter.Get_items: IBoldObjectIdListRef;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[5];
  if not value.QueryInterface(IBoldObjectIdListRef, result) = S_OK then
    raise EBold.Create('TPartPersistenceAdapter.Get_M_items: Invalid interface... does not support IBoldObjectIdListRef');
end;

function TPartPersistenceAdapter.Get_items_Type: TMoldClass;
begin
  result := (MoldClass.AllBoldMembers[5] as TMoldRole).OtherEnd.MoldClass;
end;

function TVendorPersistenceAdapter.Get_M_VendorNo: IBoldIntegerContent;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[0];
  if not value.QueryInterface(IBoldIntegerContent, result) = S_OK then
    raise EBold.Create('TVendorPersistenceAdapter.Get_M_VendorNo: Invalid interface... does not support IBoldIntegerContent');
end;

function TVendorPersistenceAdapter.Get_VendorNo: integer;
begin
  result := Get_M_VendorNo.AsInteger;
end;

procedure TVendorPersistenceAdapter.Set_VendorNo(NewValue: integer);
begin
  Get_M_VendorNo.AsInteger := NewValue;
end;


function TVendorPersistenceAdapter.Get_M_VendorName: IBoldStringContent;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[1];
  if not value.QueryInterface(IBoldStringContent, result) = S_OK then
    raise EBold.Create('TVendorPersistenceAdapter.Get_M_VendorName: Invalid interface... does not support IBoldStringContent');
end;

function TVendorPersistenceAdapter.Get_VendorName: String;
begin
  result := Get_M_VendorName.AsString;
end;

procedure TVendorPersistenceAdapter.Set_VendorName(NewValue: String);
begin
  Get_M_VendorName.AsString := NewValue;
end;


function TVendorPersistenceAdapter.Get_M_Address1: IBoldStringContent;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[2];
  if not value.QueryInterface(IBoldStringContent, result) = S_OK then
    raise EBold.Create('TVendorPersistenceAdapter.Get_M_Address1: Invalid interface... does not support IBoldStringContent');
end;

function TVendorPersistenceAdapter.Get_Address1: String;
begin
  result := Get_M_Address1.AsString;
end;

procedure TVendorPersistenceAdapter.Set_Address1(NewValue: String);
begin
  Get_M_Address1.AsString := NewValue;
end;


function TVendorPersistenceAdapter.Get_M_Address2: IBoldStringContent;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[3];
  if not value.QueryInterface(IBoldStringContent, result) = S_OK then
    raise EBold.Create('TVendorPersistenceAdapter.Get_M_Address2: Invalid interface... does not support IBoldStringContent');
end;

function TVendorPersistenceAdapter.Get_Address2: String;
begin
  result := Get_M_Address2.AsString;
end;

procedure TVendorPersistenceAdapter.Set_Address2(NewValue: String);
begin
  Get_M_Address2.AsString := NewValue;
end;


function TVendorPersistenceAdapter.Get_M_Preferred: IBoldIntegerContent;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[4];
  if not value.QueryInterface(IBoldIntegerContent, result) = S_OK then
    raise EBold.Create('TVendorPersistenceAdapter.Get_M_Preferred: Invalid interface... does not support IBoldIntegerContent');
end;

function TVendorPersistenceAdapter.Get_Preferred: integer;
begin
  result := Get_M_Preferred.AsInteger;
end;

procedure TVendorPersistenceAdapter.Set_Preferred(NewValue: integer);
begin
  Get_M_Preferred.AsInteger := NewValue;
end;


function TVendorPersistenceAdapter.Get_parts: IBoldObjectIdListRef;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[5];
  if not value.QueryInterface(IBoldObjectIdListRef, result) = S_OK then
    raise EBold.Create('TVendorPersistenceAdapter.Get_M_parts: Invalid interface... does not support IBoldObjectIdListRef');
end;

function TVendorPersistenceAdapter.Get_parts_Type: TMoldClass;
begin
  result := (MoldClass.AllBoldMembers[5] as TMoldRole).OtherEnd.MoldClass;
end;
function TVendorPersistenceAdapter.Get_bribes: IBoldObjectIdListRef;
var
  value: IBoldValue;
begin
  Value := AdaptedInterface.ValueByIndex[6];
  if not value.QueryInterface(IBoldObjectIdListRef, result) = S_OK then
    raise EBold.Create('TVendorPersistenceAdapter.Get_M_bribes: Invalid interface... does not support IBoldObjectIdListRef');
end;

function TVendorPersistenceAdapter.Get_bribes_Type: TMoldClass;
begin
  result := (MoldClass.AllBoldMembers[6] as TMoldRole).OtherEnd.MoldClass;
end;



initialization
  TBoldObjectPersistenceAdapter.RegisterPersistenceInterface(TBusinessClassesRootPersistenceAdapter, 'BusinessClassesRoot');
  TBoldObjectPersistenceAdapter.RegisterPersistenceInterface(TbribesisBribedByPersistenceAdapter, 'BribesisBribedBy');
  TBoldObjectPersistenceAdapter.RegisterPersistenceInterface(TContactPersistenceAdapter, 'Contact');
  TBoldObjectPersistenceAdapter.RegisterPersistenceInterface(TCustomerPersistenceAdapter, 'Customer');
  TBoldObjectPersistenceAdapter.RegisterPersistenceInterface(TEmployeePersistenceAdapter, 'Employee');
  TBoldObjectPersistenceAdapter.RegisterPersistenceInterface(TItemPersistenceAdapter, 'Item');
  TBoldObjectPersistenceAdapter.RegisterPersistenceInterface(TOrderPersistenceAdapter, 'Order');
  TBoldObjectPersistenceAdapter.RegisterPersistenceInterface(TPartPersistenceAdapter, 'Part');
  TBoldObjectPersistenceAdapter.RegisterPersistenceInterface(TVendorPersistenceAdapter, 'Vendor');
end.