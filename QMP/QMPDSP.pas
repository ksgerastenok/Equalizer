unit
  QMPDSP;

interface

uses
  QMPDCL;

type
  PQMPDSP = ^TQMPDSP;
  TQMPDSP = record
  private
    var fdata: TData;
    var finfo: TInfo;
    function getData(): PData;
    function getInfo(): PInfo;
    function getSamples(const Sample: Integer; const Channel: Integer): Double;
    procedure setSamples(const Sample: Integer; const Channel: Integer; const Value: Double);
  public
    property Data: PData read getData;
    property Info: PInfo read getInfo;
    property Samples[const Sample: Integer; const Channel: Integer]: Double read getSamples write setSamples;
  end;

implementation

function TQMPDSP.getData(): PData;
begin
  Result := Addr(self.fdata);
end;

function TQMPDSP.getInfo(): PInfo;
begin
  Result := Addr(self.finfo);
end;

function TQMPDSP.getSamples(const Sample: Integer; const Channel: Integer): Double;
var
  x: Double;
  p: Pointer;
begin
  if((Sample < self.Data.Samples) and (Channel < self.Data.Channels)) then begin
    p := Pointer(Integer(self.Data.Data) + ((self.Data.Bits div 8) * (Channel + Sample * self.Data.Channels)));
  end                                                                 else begin
    p := nil;
  end;
  try
    case (self.Data.Bits div 8) of
      1: begin
        x := ShortInt(p^) / $0000007F;
      end;
      2: begin
        x := SmallInt(p^) / $00007FFF;
      end;
      4: begin
        x := LongInt(p^) / $7FFFFFFF;
      end;
      else begin
        x := 0.0;
      end;
    end;
  except
    x := 0.0;
  end;
  if((x < -1.0)) then begin
    x := -1.0;
  end;
  if((x = 0.0)) then begin
    x := 0.0;
  end;
  if((x > +1.0)) then begin
    x := +1.0;
  end;
  Result := x;
end;

procedure TQMPDSP.setSamples(const Sample: Integer; const Channel: Integer; const Value: Double);
var
  x: Double;
  p: Pointer;
begin
  x := Value;
  if((x < -1.0)) then begin
    x := -1.0;
  end;
  if((x = 0.0)) then begin
    x := 0.0;
  end;
  if((x > +1.0)) then begin
    x := +1.0;
  end;
  if((Sample < self.Data.Samples) and (Channel < self.Data.Channels)) then begin
    p := Pointer(Integer(self.Data.Data) + ((self.Data.Bits div 8) * (Channel + Sample * self.Data.Channels)));
  end                                                                 else begin
    p := nil;
  end;
  try
    case (self.Data.Bits div 8) of
      1: begin
        ShortInt(p^) := Round(x * $0000007F);
      end;
      2: begin
        SmallInt(p^) := Round(x * $00007FFF);
      end;
      4: begin
        LongInt(p^) := Round(x * $7FFFFFFF);
      end;
      else begin
        SmallInt(p^) := Round(x * $00000000);
      end;
    end;
  except
    SmallInt(p^) := Round(x * $00000000);
  end;
end;

begin
end.