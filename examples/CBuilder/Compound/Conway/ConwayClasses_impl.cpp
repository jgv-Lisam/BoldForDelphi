//**********************************************************//
//                                                          //
//       Bold for Delphi Stub File                          //
//                                                          //
//       Autogenerated file for method implementations      //
//                                                          //
//**********************************************************//

// 
#include "ConwayClasses.hpp"
//#include "ConwayClasses.cpp"

const char ACTIVECELL = '*';
const char INACTIVECELL = ' ';
const char NOCELL = ' ';

void __fastcall TCell::CalculateIntermediate(void)
{
  // What will happen in the next generation?
  // New cell is born
  if ((!Active) && (neighbours == 3))
    Intermediate = true;
  // A cell survives
  else if ((Active) && (neighbours == 2 || neighbours == 3))//(neighbours in [2, 3]))
    Intermediate = true;
  // The other cells will be inactive
  else
  {
    Game->InactiveCount = Game->InactiveCount + 1;
    Intermediate = false;
  }
}

void __fastcall TCell::UpdateActive(void)
{
  // Make the caluclated value the active for next generation
  Active = Intermediate;
  EnsureNeighbours();
}

void __fastcall TCell::SetupCell(Integer x, Integer y)
{
  this->x = x;
  this->y = y;
  Game->UpdateBounds(x, y);
  Game->M_coord->Add(this);
}

void __fastcall TCell::UnensureNeighbours(void)
{
  UnensureCell(cLeft);
  UnensureCell(cRight);
  UnensureCell(cUp);
  UnensureCell(cDown);

  UnensureCell(cDownRight);
  UnensureCell(cDownLeft);
  UnensureCell(cUpRight);
  UnensureCell(cUpLeft);
}

TCell* __fastcall TCell::EnsureCell(TCell* aCell, Integer x, Integer y)
{
  TCell *resultCell = new TCell(NULL);

  if (!aCell)
  {
    resultCell = Game->Cell->AddNew();
    resultCell->SetupCell(x, y);
  }
  else
    resultCell = aCell;

  return resultCell;
}

boolean __fastcall TCell::AllowRemove(void)
{
  bool resultBool;
  resultBool = ((!Active) && (neighbours == 0));
  return resultBool;
}

void __fastcall TCell::PrepareDelete(void)
{
  TBusinessClassesRoot::PrepareDelete();
  UnensureNeighbours();
}

void __fastcall TCell::NeighboursNotEnsured(void)
{
}

void __fastcall TCell::UnensureCell(TCell* aCell)
{
  if (aCell)
    aCell->NeighboursEnsured = false;
}

void __fastcall TCell::EnsureNeighbours(void)
{
  if (!NeighboursEnsured && Active)
  {
    EnsureCell(cLeft,      x-1, y);
    EnsureCell(cRight,     x+1, y);
    EnsureCell(cUp,        x,   y-1);
    EnsureCell(cDown,      x,   y+1);
    EnsureCell(cUpRight,   x+1, y-1);
    EnsureCell(cUpLeft,    x-1, y-1);
    EnsureCell(cDownLeft,  x-1, y+1);
    EnsureCell(cDownRight, x+1, y+1);
    NeighboursEnsured = true;
  }
}

void __fastcall TGame::Tick(void)
{
  int i;
  int CellCount;

  BoldSystem->StartTransaction(stmNormal);
  // Increase generations
  Generations = Generations + 1;
  InactiveCount = 0;
  // Get intermediate value
  for (i = 0; i < Cell->Count; i++)
    Cell->BoldObjects[i]->CalculateIntermediate();
  // Update board
   for (i = 0; i < Cell->Count; i++)
    Cell->BoldObjects[i]->UpdateActive();
  BoldSystem->CommitTransaction(stmNormal);

  // Remove unused cells based on some simple rule
  if ((Cell->Count > 0) && ((InactiveCount / Cell->Count) > 0.8))
    GarbageCollect();
}

void __fastcall TGame::ClearCells(void)
{
  // Delete all cells
  BoldSystem->StartTransaction(stmNormal);
  while (Cell->Count > 0)
    Cell->BoldObjects[0]->Delete();
  BoldSystem->CommitTransaction(stmNormal);
  ResetBounds();
}

void __fastcall TGame::UpdateBounds(Integer x, Integer y)
{
  if (y > yMax)
    yMax = y;
  if (y < yMin)
    yMin = y;
  if (x > xMax)
    xMax = x;
  if (x < xMin)
    xMin = x;
}

void __fastcall TGame::GarbageCollect(void)
{
  int i;

  // Used for GUI feedback
  collecting = true;
  TBoldQueueable::DisplayAll;

  BoldSystem->StartTransaction(stmNormal);
  for (i = Cell->Count - 1; i >= 0; i--)
    if (Cell->BoldObjects[i]->AllowRemove())
      Cell->BoldObjects[i]->Delete();
  BoldSystem->CommitTransaction(stmNormal);
  RefreshBounds();

  // Used for GUI feedback
  collecting = false;
  TBoldQueueable::DisplayAll;
}

void __fastcall TGame::RefreshBounds(void)
{
  int temp, i;

  temp = yMax;
  yMax = yMin;
  yMin = temp;
  temp = xMax;
  xMax = xMin;
  xMin = temp;

  for (i = 0; i < Cell->Count; i++)
    UpdateBounds(Cell->BoldObjects[i]->x, Cell->BoldObjects[i]->y);
}

TRect __fastcall TGame::GetBounds(void)
{
  TRect resultRect;

  resultRect.Left = xMin;
  resultRect.Right = xMax;
  resultRect.Top = yMin;
  resultRect.Bottom = yMax;

  return resultRect;
}

void __fastcall TGame::ResetBounds(void)
{
  xMax = 0;
  xMin = 0;
  yMax = 0;
  yMin = 0;
}

void __fastcall TGame::_board_DeriveAndSubscribe(TObject* DerivedObject, TBoldSubscriber* Subscriber)
{
  TStringList* Universe;
  AnsiString s, EmptyRow;
  int StringPos, i, y;
  TCell* aCell;
  TRect* Bounds;

  // Place relevant subscriptions
  // - the multilink
  // - active state of all cells
  Cell->DefaultSubscribe(Subscriber, breReEvaluate); //breReSubscribe);
  for (i = 0; i < Cell->Count; i++)
    Cell->BoldObjects[i]->M_Active->DefaultSubscribe(Subscriber, NULL);

  Bounds = &GetBounds();
  Universe = new TStringList();
  EmptyRow = AnsiString::StringOfChar(NOCELL, xSize);

  for (y = Bounds->Top; y <= Bounds->Bottom; y++)
    Universe->Add(EmptyRow);

  for (i = 0; i < Cell->Count; i++)
  {
    aCell = Cell->BoldObjects[i];
    StringPos = aCell->y - Bounds->Top;
    s = Universe->Strings[StringPos];
    s[aCell->x - Bounds->Left + 1] = aCell->AsString[1];
    Universe->Strings[StringPos] = s;
  }

  M_board->AsString = Universe->Text;
 // ISJE Universe->Free();
 delete Universe;
}

void __fastcall TGame::_board_ReverseDerive(TObject* DerivedObject)
{
  AnsiString EmptyRow, s;
  int x, y;
  TStringList* Strings;
  TCell* aCell;
  bool ActiveSpot;

  ClearCells();
  Strings = new TStringList();
  Strings->Text = board;
  yMax = Strings->Count;

  for (y = 0; y < Strings->Count; y++)
    if (xMax < Strings->Strings[y].Length() - 1)
      xMax = Strings->Strings[y].Length() - 1;

  BoldSystem->StartTransaction(stmNormal);
  EmptyRow = AnsiString::StringOfChar(INACTIVECELL, xSize);
  // Traverse all lines

  for (y = 0; y < Strings->Count; y++)
  {
    s = Strings->Strings[y];
    s += EmptyRow;
    // for all columns...
    for (x = 0; x <= xMax; x++)
    {
      aCell = coord[x][y];
      ActiveSpot = (s[x + 1] == ACTIVECELL);
      if (aCell)
        aCell->Active = ActiveSpot;
      else if (ActiveSpot)
      {
        aCell = Cell->AddNew();
        aCell->SetupCell(x, y);
        aCell->Active = true;
      }
      if (aCell)
        aCell->EnsureNeighbours();
    }
  }
  BoldSystem->CommitTransaction(stmNormal);
  // ISJE Strings->Free();
  delete Strings;
}

