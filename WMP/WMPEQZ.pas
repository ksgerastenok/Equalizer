unit
  WMPEQZ;

interface

uses
  WMPEQU,
  WMPDCL,
  WMPFRM;

type
  PWMPEQZ = ^TWMPEQZ;
  TWMPEQZ = record
  private
    class var fdata: PData;
    class var ffrm: TWMPFRM;
    class var fequ: TWMPEQU;
    class function Init(const Module: PPlugin): Integer; cdecl; static;
    class function Modify(const Module: PPlugin; const Buffer: Pointer; const Samples: LongWord; const Bits: LongWord; const Channels: LongWord; const Rates: LongWord): Integer; cdecl; static;
    class procedure Config(const Module: PPlugin); cdecl; static;
    class procedure Quit(const Module: PPlugin); cdecl; static;
  public
    class function Plugin(): PPlugin; cdecl; static;
  end;

implementation

class function TWMPEQZ.Plugin(): PPlugin; cdecl;
begin
  Result := New(PPlugin);
  Result.Description := 'Nullsoft Equalizer v3.51';
  Result.Instance := $0000;
  Result.Init := TWMPEQZ.Init;
  Result.Quit := TWMPEQZ.Quit;
  Result.Modify := TWMPEQZ.Modify;
  Result.Config := TWMPEQZ.Config;
end;

class function TWMPEQZ.Init(const Module: PPlugin): Integer; cdecl;
begin
  TWMPEQZ.fequ.Init();
  TWMPEQZ.ffrm.Init();
  Result := 0;
end;

class procedure TWMPEQZ.Quit(const Module: PPlugin); cdecl;
begin
  TWMPEQZ.ffrm.Done();
  TWMPEQZ.fequ.Done();
end;

class function TWMPEQZ.Modify(const Module: PPlugin; const Buffer: Pointer; const Samples: LongWord; const Bits: LongWord; const Channels: LongWord; const Rates: LongWord): Integer; cdecl;
var
  Data: PData;
begin
  Data := New(PData);
  Data.Data := Buffer;
  Data.Bits := Bits;
  Data.Rates := Rates;
  Data.Samples := Samples;
  Data.Channels := Channels;
  TWMPEQZ.fequ.Update(TWMPEQZ.ffrm.Info);
  TWMPEQZ.fequ.Process(Data);
  Dispose(Data);
  Result := Samples;
end;

class procedure TWMPEQZ.Config(const Module: PPlugin); cdecl;
begin
  TWMPEQZ.ffrm.Show();
end;

begin
end.
