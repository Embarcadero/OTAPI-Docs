object Frame_Setting_GeminiCodeAssist: TFrame_Setting_GeminiCodeAssist
  Left = 0
  Top = 0
  Width = 925
  Height = 630
  Margins.Left = 7
  Margins.Top = 7
  Margins.Right = 7
  Margins.Bottom = 7
  Align = alClient
  Color = clWindow
  ParentBackground = False
  ParentColor = False
  TabOrder = 0
  OnClick = FrameClick
  PixelsPerInch = 216
  DesignSize = (
    925
    630)
  object lbl_Model: TLabel
    Left = 52
    Top = 283
    Width = 77
    Height = 37
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 7
    Caption = 'Model'
    FocusControl = cbModel
  end
  object Chk_Enabled: TCheckBox
    AlignWithMargins = True
    Left = 11
    Top = 9
    Width = 450
    Height = 36
    Margins.Left = 11
    Margins.Top = 23
    Margins.Right = 7
    Margins.Bottom = 27
    Caption = 'Enabled'
    TabOrder = 0
  end
  object Edt_BaseURL: TLabeledEdit
    AlignWithMargins = True
    Left = 52
    Top = 104
    Width = 850
    Height = 45
    Margins.Left = 52
    Margins.Top = 38
    Margins.Right = 23
    Margins.Bottom = 7
    Anchors = [akLeft, akTop, akRight]
    EditLabel.Width = 102
    EditLabel.Height = 37
    EditLabel.Margins.Left = 7
    EditLabel.Margins.Top = 7
    EditLabel.Margins.Right = 7
    EditLabel.Margins.Bottom = 7
    EditLabel.Caption = 'BaseURL'
    LabelSpacing = 4
    TabOrder = 1
    Text = ''
  end
  object Edt_ApiKey: TLabeledEdit
    AlignWithMargins = True
    Left = 52
    Top = 214
    Width = 850
    Height = 45
    Margins.Left = 52
    Margins.Top = 38
    Margins.Right = 23
    Margins.Bottom = 7
    Anchors = [akLeft, akTop, akRight]
    EditLabel.Width = 86
    EditLabel.Height = 37
    EditLabel.Margins.Left = 7
    EditLabel.Margins.Top = 7
    EditLabel.Margins.Right = 7
    EditLabel.Margins.Bottom = 7
    EditLabel.Caption = 'API key'
    LabelSpacing = 4
    PasswordChar = '*'
    TabOrder = 2
    Text = ''
  end
  object Edt_Timeout: TLabeledEdit
    AlignWithMargins = True
    Left = 52
    Top = 434
    Width = 378
    Height = 45
    Margins.Left = 23
    Margins.Top = 17
    Margins.Right = 10
    Anchors = [akLeft, akTop, akRight]
    EditLabel.Width = 98
    EditLabel.Height = 37
    EditLabel.Margins.Left = 7
    EditLabel.Margins.Top = 7
    EditLabel.Margins.Right = 7
    EditLabel.Margins.Bottom = 7
    EditLabel.Caption = 'Timeout'
    LabelSpacing = 4
    NumbersOnly = True
    TabOrder = 3
    Text = ''
  end
  object cbModel: TComboBox
    Left = 52
    Top = 334
    Width = 850
    Height = 45
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 7
    TabOrder = 4
    OnClick = cbModelClick
  end
end
