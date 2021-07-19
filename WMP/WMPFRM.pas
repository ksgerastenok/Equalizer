unit
  WMPFRM;

interface

uses
  Vcl.Forms,
  Vcl.Controls,
  Vcl.ComCtrls,
  Vcl.StdCtrls,
  System.Classes,
  System.SysUtils;

type
  TWMPFRM = class(TForm)
  published
    { Published declarations }
    var tbPreamp: TTrackBar;
    var tbBand00: TTrackBar;
    var tbBand01: TTrackBar;
    var tbBand02: TTrackBar;
    var tbBand03: TTrackBar;
    var tbBand04: TTrackBar;
    var tbBand05: TTrackBar;
    var tbBand06: TTrackBar;
    var tbBand07: TTrackBar;
    var tbBand08: TTrackBar;
    var tbBand09: TTrackBar;
    var tbBand10: TTrackBar;
    var tbBand11: TTrackBar;
    var tbBand12: TTrackBar;
    var tbBand13: TTrackBar;
    var tbBand14: TTrackBar;
    var tbBand15: TTrackBar;
    var tbBand16: TTrackBar;
    var tbBand17: TTrackBar;
    var tbBand18: TTrackBar;
    var cbEnabled: TCheckBox;
    var stBand00: TStaticText;
    var stBand01: TStaticText;
    var stBand02: TStaticText;
    var stBand03: TStaticText;
    var stBand04: TStaticText;
    var stBand05: TStaticText;
    var stBand06: TStaticText;
    var stBand07: TStaticText;
    var stBand08: TStaticText;
    var stBand09: TStaticText;
    var stBand10: TStaticText;
    var stBand11: TStaticText;
    var stBand12: TStaticText;
    var stBand13: TStaticText;
    var stBand14: TStaticText;
    var stBand15: TStaticText;
    var stBand16: TStaticText;
    var stBand17: TStaticText;
    var stBand18: TStaticText;
    var stLowValue: TStaticText;
    var stZeroValue: TStaticText;
    var stHighValue: TStaticText;
    procedure ControlsLoad(const Sender: TObject);
    procedure ControlsSave(const Sender: TObject);
    procedure FormMainShow(const Sender: TObject);
    procedure FormMainHide(const Sender: TObject);
  private
    class var fform: TWMPFRM;
  public
    class function Instance(): TWMPFRM;
    class procedure Quit();
  end;

implementation

uses
  WMPMOD,
  WMPDCL;

{$R *.dfm}

class function TWMPFRM.Instance(): TWMPFRM;
begin
  if((not(Assigned(self.fform)))) then begin
    self.fform := self.Create(Screen.Owner);
  end;
  Result := self.fform;
end;

class procedure TWMPFRM.Quit();
begin
  if((Assigned(self.fform))) then begin
    self.fform.Destroy();
  end;
  self.fform := nil;
end;

procedure TWMPFRM.ControlsLoad(const Sender: TObject);
begin
  self.ActiveControl := nil;
  if((Sender is TCheckBox)) then begin
    if(((Sender as TCheckBox).Tag = 99)) then begin
      (Sender as TCheckBox).Checked := TWMPMOD.Instance().Info.Enabled;
      (Sender as TCheckBox).Hint := Format('Enabled: %s', [BoolToStr((Sender as TCheckBox).Checked, True)]);
    end                                  else begin
      (Sender as TCheckBox).Checked := TWMPMOD.Instance().Info.Enabled;
      (Sender as TCheckBox).Hint := Format('Enabled: %s', [BoolToStr((Sender as TCheckBox).Checked, True)]);
    end;
  end;
  if((Sender is TTrackBar)) then begin
    if(((Sender as TTrackBar).Tag = 99)) then begin
      (Sender as TTrackBar).Position := (Sender as TTrackBar).Max - TWMPMOD.Instance().Info.Preamp                           + (Sender as TTrackBar).Min;
      (Sender as TTrackBar).Hint := Format('Gain: %s dB', [FloatToStr(((Sender as TTrackBar).Max - (Sender as TTrackBar).Position + (Sender as TTrackBar).Min) / 10)]);
    end                                  else begin
      (Sender as TTrackBar).Position := (Sender as TTrackBar).Max - TWMPMOD.Instance().Info.Bands[(Sender as TTrackBar).Tag] + (Sender as TTrackBar).Min;
      (Sender as TTrackBar).Hint := Format('Gain: %s dB', [FloatToStr(((Sender as TTrackBar).Max - (Sender as TTrackBar).Position + (Sender as TTrackBar).Min) / 10)]);
    end;
  end;
end;

procedure TWMPFRM.ControlsSave(const Sender: TObject);
begin
  self.ActiveControl := nil;
  if((Sender is TCheckBox)) then begin
    if(((Sender as TCheckBox).Tag = 99)) then begin
      TWMPMOD.Instance().Info.Enabled := (Sender as TCheckBox).Checked;
      (Sender as TCheckBox).Hint := Format('Enabled: %s', [BoolToStr((Sender as TCheckBox).Checked, True)]);
    end                                  else begin
      TWMPMOD.Instance().Info.Enabled := (Sender as TCheckBox).Checked;
      (Sender as TCheckBox).Hint := Format('Enabled: %s', [BoolToStr((Sender as TCheckBox).Checked, True)]);
    end;
  end;
  if((Sender is TTrackBar)) then begin
    if(((Sender as TTrackBar).Tag = 99)) then begin
      TWMPMOD.Instance().Info.Preamp                           := (Sender as TTrackBar).Max - (Sender as TTrackBar).Position + (Sender as TTrackBar).Min;
      (Sender as TTrackBar).Hint := Format('Gain: %s dB', [FloatToStr(((Sender as TTrackBar).Max - (Sender as TTrackBar).Position + (Sender as TTrackBar).Min) / 10)]);
    end                                  else begin
      TWMPMOD.Instance().Info.Bands[(Sender as TTrackBar).Tag] := (Sender as TTrackBar).Max - (Sender as TTrackBar).Position + (Sender as TTrackBar).Min;
      (Sender as TTrackBar).Hint := Format('Gain: %s dB', [FloatToStr(((Sender as TTrackBar).Max - (Sender as TTrackBar).Position + (Sender as TTrackBar).Min) / 10)]);
    end;
  end;
end;

procedure TWMPFRM.FormMainShow(const Sender: TObject);
var
  i: LongWord;
begin
  for i := 0 to self.ControlCount - 1 do begin
    self.ControlsLoad(self.Controls[i]);
  end;
end;

procedure TWMPFRM.FormMainHide(const Sender: TObject);
var
  i: LongWord;
begin
  for i := 0 to self.ControlCount - 1 do begin
    self.ControlsSave(self.Controls[i]);
  end;
end;

begin
end.

