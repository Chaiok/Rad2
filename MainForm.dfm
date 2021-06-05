object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'MainForm'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 224
    Top = 120
    object postavchiki1: TMenuItem
      Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082#1080
      OnClick = postavchiki1Click
    end
    object tovari1: TMenuItem
      Caption = #1058#1086#1074#1072#1088#1099
      OnClick = tovari1Click
    end
    object N1: TMenuItem
      Caption = #1044#1086#1089#1090#1072#1074#1082#1072
      OnClick = N1Click
    end
  end
end
