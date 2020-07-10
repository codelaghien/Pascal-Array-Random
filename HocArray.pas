Program HocArray;
Uses Crt;

Const
  MON_HOC       = 10;

Var
    i           : Integer;
    Diem        : Array [1..MON_HOC] of Real;
    TrungBinh   : Real = 0.0;

Begin
    Randomize;
    ClrScr;
    WriteLn('Hoc Array (Mang) - Random number (so ngau nhien)');

    For i := 1 To MON_HOC Do
    Begin
      Diem[i] := Random * 10;
    End;

    TrungBinh := 0.0;
    For i := 1 To MON_HOC Do
    Begin
      TrungBinh := TrungBinh + Diem[i];
      Write(Diem[i]:0:2, ', ');
    End;
    TrungBinh := TrungBinh / MON_HOC;

    WriteLn();
    //WriteLn(Random); // 0.0 <= Random < 1.0
    //WriteLn(Random(10); // 0 <= Random(10) < 10  
    WriteLn('Diem trung binh la: ', TrungBinh:0:2);

    ReadKey;
End.

