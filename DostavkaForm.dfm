﻿object Form4: TForm4
  Left = 0
  Top = 0
  Caption = #1055#1086#1089#1090#1072#1074#1082#1080
  ClientHeight = 557
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DateTimePicker1: TDateTimePicker
    Left = 191
    Top = 8
    Width = 186
    Height = 21
    Date = 44352.000000000000000000
    Time = 0.211180219906964300
    TabOrder = 0
  end
  object ComboBox1: TComboBox
    Left = 24
    Top = 8
    Width = 145
    Height = 21
    TabOrder = 1
    TextHint = #1087#1086#1089#1090#1072#1074#1097#1080#1082
  end
  object Добавить: TButton
    Left = 24
    Top = 48
    Width = 145
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 2
    OnClick = ДобавитьClick
  end
  object Обновить: TButton
    Left = 368
    Top = 48
    Width = 137
    Height = 25
    Caption = #1054#1073#1085#1086#1074#1080#1090#1100
    TabOrder = 3
    OnClick = ОбновитьClick
  end
  object Удалить: TButton
    Left = 191
    Top = 48
    Width = 146
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 4
    OnClick = УдалитьClick
  end
  object ComboBox2: TComboBox
    Left = 416
    Top = 8
    Width = 145
    Height = 21
    TabOrder = 5
    TextHint = #1087#1086#1089#1090#1072#1074#1082#1080
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 88
    Width = 593
    Height = 461
    DataSource = DataSource1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 528
    Top = 48
    Width = 75
    Height = 25
    Caption = #1053#1072#1082#1083#1072#1076#1085#1072#1103
    TabOrder = 7
    OnClick = Button1Click
  end
  object DataSource1: TDataSource
    DataSet = DataModule1.QuerySelectDostavki
    Left = 584
  end
end
