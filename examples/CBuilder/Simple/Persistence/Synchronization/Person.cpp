//**********************************************************//
//                                                          //
//       Bold for Delphi Stub File                          //
//                                                          //
//       Autogenerated file for method implementations      //
//                                                          //
//**********************************************************//

// 
#include "BldOwnClasses.hpp"
const AnsiString FIRSTNAMES[] = {"Harry", "Peter", "David", "John", "James"};
const AnsiString LASTNAMES[] = {"Jones", "Flint", "McGregor", "Gates", "Clinton"};

void __fastcall TPerson::CompleteCreate(void)
{
  TBusinessClassesRoot::CompleteCreate();
  FirstName = FIRSTNAMES[random(5)];
  LastName = LASTNAMES[random(5)];
  Assets = 5000 + random(10000);
}

void __fastcall TPerson::BorrowFrom(TPerson* Lender, Integer Amount)
{
  if (Lender)
  {
    Assets = Assets + Amount;
    Lender->Assets = Lender->Assets - Amount;
  }
}
