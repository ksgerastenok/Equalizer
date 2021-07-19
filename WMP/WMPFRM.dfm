object WMPFRM: TWMPFRM
  Left = 215
  Top = 121
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Equalizer'
  ClientHeight = 282
  ClientWidth = 634
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  OnHide = FormMainHide
  OnShow = FormMainShow
  PixelsPerInch = 96
  TextHeight = 13
  object stLowValue: TStaticText
    Tag = 31
    Left = 28
    Top = 245
    Width = 35
    Height = 17
    Caption = '-20 dB'
    TabOrder = 23
  end
  object stHighValue: TStaticText
    Tag = 32
    Left = 28
    Top = 5
    Width = 38
    Height = 17
    Caption = '+20 dB'
    TabOrder = 22
  end
  object stZeroValue: TStaticText
    Tag = 30
    Left = 38
    Top = 125
    Width = 26
    Height = 17
    Caption = '0 dB'
    TabOrder = 21
  end
  object stBand00: TStaticText
    Left = 70
    Top = 260
    Width = 16
    Height = 17
    Caption = '35'
    TabOrder = 24
  end
  object stBand01: TStaticText
    Tag = 1
    Left = 100
    Top = 260
    Width = 16
    Height = 17
    Caption = '50'
    TabOrder = 25
  end
  object stBand02: TStaticText
    Tag = 2
    Left = 130
    Top = 260
    Width = 16
    Height = 17
    Caption = '70'
    TabOrder = 26
  end
  object stBand03: TStaticText
    Tag = 3
    Left = 160
    Top = 260
    Width = 16
    Height = 17
    Caption = '99'
    TabOrder = 27
  end
  object stBand04: TStaticText
    Tag = 4
    Left = 190
    Top = 260
    Width = 22
    Height = 17
    Caption = '140'
    TabOrder = 28
  end
  object stBand05: TStaticText
    Tag = 5
    Left = 220
    Top = 260
    Width = 22
    Height = 17
    Caption = '198'
    TabOrder = 29
  end
  object stBand06: TStaticText
    Tag = 6
    Left = 250
    Top = 260
    Width = 22
    Height = 17
    Caption = '280'
    TabOrder = 30
  end
  object stBand07: TStaticText
    Tag = 7
    Left = 280
    Top = 260
    Width = 22
    Height = 17
    Caption = '396'
    TabOrder = 31
  end
  object stBand08: TStaticText
    Tag = 8
    Left = 310
    Top = 260
    Width = 22
    Height = 17
    Caption = '560'
    TabOrder = 32
  end
  object stBand09: TStaticText
    Tag = 9
    Left = 340
    Top = 260
    Width = 22
    Height = 17
    Caption = '792'
    TabOrder = 33
  end
  object stBand10: TStaticText
    Tag = 10
    Left = 370
    Top = 260
    Width = 25
    Height = 17
    Caption = '1.1k'
    TabOrder = 34
  end
  object stBand11: TStaticText
    Tag = 11
    Left = 400
    Top = 260
    Width = 25
    Height = 17
    Caption = '1.6k'
    TabOrder = 35
  end
  object stBand12: TStaticText
    Tag = 12
    Left = 430
    Top = 260
    Width = 25
    Height = 17
    Caption = '2.2k'
    TabOrder = 36
  end
  object stBand13: TStaticText
    Tag = 13
    Left = 460
    Top = 260
    Width = 25
    Height = 17
    Caption = '3.2k'
    TabOrder = 37
  end
  object stBand14: TStaticText
    Tag = 14
    Left = 490
    Top = 260
    Width = 25
    Height = 17
    Caption = '4.5k'
    TabOrder = 38
  end
  object stBand15: TStaticText
    Tag = 15
    Left = 520
    Top = 260
    Width = 25
    Height = 17
    Caption = '6.3k'
    TabOrder = 39
  end
  object stBand16: TStaticText
    Tag = 16
    Left = 550
    Top = 260
    Width = 25
    Height = 17
    Caption = '9.0k'
    TabOrder = 40
  end
  object stBand17: TStaticText
    Tag = 17
    Left = 575
    Top = 260
    Width = 31
    Height = 17
    Caption = '12.7k'
    TabOrder = 41
  end
  object stBand18: TStaticText
    Tag = 18
    Left = 605
    Top = 260
    Width = 31
    Height = 17
    Caption = '17.9k'
    TabOrder = 42
  end
  object cbEnabled: TCheckBox
    Left = 5
    Top = 260
    Width = 60
    Height = 17
    Caption = 'Enabled'
    TabOrder = 20
    OnClick = ControlsSave
  end
  object tbPreamp: TTrackBar
    Tag = 99
    Left = 5
    Top = 5
    Width = 20
    Height = 255
    Ctl3D = True
    Max = 200
    Min = -200
    Orientation = trVertical
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    TabStop = False
    ThumbLength = 15
    TickMarks = tmBoth
    TickStyle = tsNone
    OnChange = ControlsSave
    OnEnter = ControlsLoad
    OnExit = ControlsSave
  end
  object tbBand00: TTrackBar
    Left = 70
    Top = 5
    Width = 20
    Height = 255
    Max = 200
    Min = -200
    Orientation = trVertical
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = False
    ThumbLength = 15
    TickMarks = tmBoth
    TickStyle = tsNone
    OnChange = ControlsSave
    OnEnter = ControlsLoad
    OnExit = ControlsSave
  end
  object tbBand01: TTrackBar
    Tag = 1
    Left = 100
    Top = 5
    Width = 20
    Height = 255
    Max = 200
    Min = -200
    Orientation = trVertical
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = False
    ThumbLength = 15
    TickMarks = tmBoth
    TickStyle = tsNone
    OnChange = ControlsSave
    OnEnter = ControlsLoad
    OnExit = ControlsSave
  end
  object tbBand02: TTrackBar
    Tag = 2
    Left = 130
    Top = 5
    Width = 20
    Height = 255
    Max = 200
    Min = -200
    Orientation = trVertical
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    TabStop = False
    ThumbLength = 15
    TickMarks = tmBoth
    TickStyle = tsNone
    OnChange = ControlsSave
    OnEnter = ControlsLoad
    OnExit = ControlsSave
  end
  object tbBand03: TTrackBar
    Tag = 3
    Left = 160
    Top = 5
    Width = 20
    Height = 255
    Max = 200
    Min = -200
    Orientation = trVertical
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    TabStop = False
    ThumbLength = 15
    TickMarks = tmBoth
    TickStyle = tsNone
    OnChange = ControlsSave
    OnEnter = ControlsLoad
    OnExit = ControlsSave
  end
  object tbBand04: TTrackBar
    Tag = 4
    Left = 190
    Top = 5
    Width = 20
    Height = 255
    Max = 200
    Min = -200
    Orientation = trVertical
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    TabStop = False
    ThumbLength = 15
    TickMarks = tmBoth
    TickStyle = tsNone
    OnChange = ControlsSave
    OnEnter = ControlsLoad
    OnExit = ControlsSave
  end
  object tbBand05: TTrackBar
    Tag = 5
    Left = 220
    Top = 5
    Width = 20
    Height = 255
    Max = 200
    Min = -200
    Orientation = trVertical
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    TabStop = False
    ThumbLength = 15
    TickMarks = tmBoth
    TickStyle = tsNone
    OnChange = ControlsSave
    OnEnter = ControlsLoad
    OnExit = ControlsSave
  end
  object tbBand06: TTrackBar
    Tag = 6
    Left = 250
    Top = 5
    Width = 20
    Height = 255
    Max = 200
    Min = -200
    Orientation = trVertical
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    TabStop = False
    ThumbLength = 15
    TickMarks = tmBoth
    TickStyle = tsNone
    OnChange = ControlsSave
    OnEnter = ControlsLoad
    OnExit = ControlsSave
  end
  object tbBand07: TTrackBar
    Tag = 7
    Left = 280
    Top = 5
    Width = 20
    Height = 255
    Max = 200
    Min = -200
    Orientation = trVertical
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    TabStop = False
    ThumbLength = 15
    TickMarks = tmBoth
    TickStyle = tsNone
    OnChange = ControlsSave
    OnEnter = ControlsLoad
    OnExit = ControlsSave
  end
  object tbBand08: TTrackBar
    Tag = 8
    Left = 310
    Top = 5
    Width = 20
    Height = 255
    Max = 200
    Min = -200
    Orientation = trVertical
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    TabStop = False
    ThumbLength = 15
    TickMarks = tmBoth
    TickStyle = tsNone
    OnChange = ControlsSave
    OnEnter = ControlsLoad
    OnExit = ControlsSave
  end
  object tbBand09: TTrackBar
    Tag = 9
    Left = 340
    Top = 5
    Width = 20
    Height = 255
    Max = 200
    Min = -200
    Orientation = trVertical
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    TabStop = False
    ThumbLength = 15
    TickMarks = tmBoth
    TickStyle = tsNone
    OnChange = ControlsSave
    OnEnter = ControlsLoad
    OnExit = ControlsSave
  end
  object tbBand10: TTrackBar
    Tag = 10
    Left = 370
    Top = 5
    Width = 20
    Height = 255
    Max = 200
    Min = -200
    Orientation = trVertical
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
    TabStop = False
    ThumbLength = 15
    TickMarks = tmBoth
    TickStyle = tsNone
    OnChange = ControlsSave
    OnEnter = ControlsLoad
    OnExit = ControlsSave
  end
  object tbBand11: TTrackBar
    Tag = 11
    Left = 400
    Top = 5
    Width = 20
    Height = 255
    Max = 200
    Min = -200
    Orientation = trVertical
    ParentShowHint = False
    ShowHint = True
    TabOrder = 12
    TabStop = False
    ThumbLength = 15
    TickMarks = tmBoth
    TickStyle = tsNone
    OnChange = ControlsSave
    OnEnter = ControlsLoad
    OnExit = ControlsSave
  end
  object tbBand12: TTrackBar
    Tag = 12
    Left = 430
    Top = 5
    Width = 20
    Height = 255
    Max = 200
    Min = -200
    Orientation = trVertical
    ParentShowHint = False
    ShowHint = True
    TabOrder = 13
    TabStop = False
    ThumbLength = 15
    TickMarks = tmBoth
    TickStyle = tsNone
    OnChange = ControlsSave
    OnEnter = ControlsLoad
    OnExit = ControlsSave
  end
  object tbBand13: TTrackBar
    Tag = 13
    Left = 460
    Top = 5
    Width = 20
    Height = 255
    Max = 200
    Min = -200
    Orientation = trVertical
    ParentShowHint = False
    ShowHint = True
    TabOrder = 14
    TabStop = False
    ThumbLength = 15
    TickMarks = tmBoth
    TickStyle = tsNone
    OnChange = ControlsSave
    OnEnter = ControlsLoad
    OnExit = ControlsSave
  end
  object tbBand14: TTrackBar
    Tag = 14
    Left = 490
    Top = 5
    Width = 20
    Height = 255
    Max = 200
    Min = -200
    Orientation = trVertical
    ParentShowHint = False
    ShowHint = True
    TabOrder = 15
    TabStop = False
    ThumbLength = 15
    TickMarks = tmBoth
    TickStyle = tsNone
    OnChange = ControlsSave
    OnEnter = ControlsLoad
    OnExit = ControlsSave
  end
  object tbBand15: TTrackBar
    Tag = 15
    Left = 520
    Top = 5
    Width = 20
    Height = 255
    Max = 200
    Min = -200
    Orientation = trVertical
    ParentShowHint = False
    ShowHint = True
    TabOrder = 16
    TabStop = False
    ThumbLength = 15
    TickMarks = tmBoth
    TickStyle = tsNone
    OnChange = ControlsSave
    OnEnter = ControlsLoad
    OnExit = ControlsSave
  end
  object tbBand16: TTrackBar
    Tag = 16
    Left = 550
    Top = 5
    Width = 20
    Height = 255
    Max = 200
    Min = -200
    Orientation = trVertical
    ParentShowHint = False
    ShowHint = True
    TabOrder = 17
    TabStop = False
    ThumbLength = 15
    TickMarks = tmBoth
    TickStyle = tsNone
    OnChange = ControlsSave
    OnEnter = ControlsLoad
    OnExit = ControlsSave
  end
  object tbBand17: TTrackBar
    Tag = 17
    Left = 580
    Top = 5
    Width = 20
    Height = 255
    Max = 200
    Min = -200
    Orientation = trVertical
    ParentShowHint = False
    ShowHint = True
    TabOrder = 18
    TabStop = False
    ThumbLength = 15
    TickMarks = tmBoth
    TickStyle = tsNone
    OnChange = ControlsSave
    OnEnter = ControlsLoad
    OnExit = ControlsSave
  end
  object tbBand18: TTrackBar
    Tag = 18
    Left = 610
    Top = 5
    Width = 20
    Height = 255
    Max = 200
    Min = -200
    Orientation = trVertical
    ParentShowHint = False
    ShowHint = True
    TabOrder = 19
    TabStop = False
    ThumbLength = 15
    TickMarks = tmBoth
    TickStyle = tsNone
    OnChange = ControlsSave
    OnEnter = ControlsLoad
    OnExit = ControlsSave
  end
end
