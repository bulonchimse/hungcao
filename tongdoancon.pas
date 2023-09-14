program SumPascalSegment;

const
  MaxRows = 10;
  StartRow = 3;
  EndRow = 5;

var
  PascalArray: array[1..MaxRows, 1..MaxRows] of Integer;
  i, j: Integer;
  SegmentSum: Integer;

begin

  for i := 1 to MaxRows do
  begin
    assign(f1,'tongdoancon.inp'); reset(f1);
    assign(f2,'tongdoancon.out'); rewrite(f2);
    PascalArray[i, 1] := 1;
    PascalArray[i, i] := 1;
    for j := 2 to i - 1 do
    begin
      PascalArray[i, j] := PascalArray[i - 1, j - 1] + PascalArray[i - 1, j];
    end;
  end;


  SegmentSum := 0;
  for i := StartRow to EndRow do
  begin
    for j := 1 to i do
    begin
      SegmentSum := SegmentSum + PascalArray[i, j];
    end;
  end;


  WriteLn('Tong cua cac doan con tu hang ', StartRow, ' den hang ', EndRow, ' là: ', SegmentSum);
end.
