//**********************************************************//
//                                                          //
//       Bold for Delphi Stub File                          //
//                                                          //
//       Autogenerated file for method implementations      //
//                                                          //
//**********************************************************//

// 
#include "BldOwnClasses.hpp"
const AnsiString STREETS[] = {"Bold Drive", "5th Avenue", "Rose Path", "Select Avenue", "Pebble Road"};

void __fastcall TResidential_Building::ChargeRent(void)
{
  Integer i, y;

  if (Residents->Count == 0)
    throw new Exception("No residents to pay rent");
  if (Owners->Count == 0)
    throw new Exception("No owners to receive payment");
  for (i = Residents->Count - 1; i >= 0; i--)
  {
    Residents->BoldObjects[i]->Assets = Residents->BoldObjects[i]->Assets - (TotalRent / Residents->Count);
    if (Residents->BoldObjects[i]->Assets < 0)
    {
      Residents->BoldObjects[i]->Home = NULL;
      TVarRec v[] = {Residents->BoldObjects[i]->FirstName, Residents->BoldObjects[i]->LastName, Address};
      ShowMessage( Format( "%s %s has been evicted from %s due to lack of funds", v, ARRAYSIZE(v) - 1));
    }
  }
  for (y = 0;  y < Owners->Count; y++)
    ((TPerson*)(Owners->BoldObjects[y]))->Assets = ((TPerson*)(Owners->BoldObjects[y]))->Assets + (TotalRent / Owners->Count);
}

void __fastcall TResidential_Building::CompleteCreate(void)
{
  TBuilding::CompleteCreate();
  Address = IntToStr( random(250) )+ " " + STREETS[random(5)];
  TotalRent = random(100)*100;
}
