﻿object Form3: TForm3
  Left = 0
  Top = 0
  Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082#1080
  ClientHeight = 619
  ClientWidth = 549
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
  object Edit1: TEdit
    Left = 16
    Top = 8
    Width = 121
    Height = 21
    MaxLength = 15
    TabOrder = 0
    TextHint = #1048#1084#1103
  end
  object Edit2: TEdit
    Left = 159
    Top = 8
    Width = 121
    Height = 21
    MaxLength = 15
    TabOrder = 1
    TextHint = #1060#1072#1084#1080#1083#1080#1103
  end
  object Edit3: TEdit
    Left = 296
    Top = 8
    Width = 121
    Height = 21
    MaxLength = 15
    TabOrder = 2
    TextHint = #1054#1090#1095#1077#1089#1090#1074#1086
  end
  object Добавить: TButton
    Left = 16
    Top = 48
    Width = 97
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 3
    OnClick = ДобавитьClick
  end
  object Удалить: TButton
    Left = 144
    Top = 48
    Width = 97
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 4
    OnClick = УдалитьClick
  end
  object Обновить: TButton
    Left = 264
    Top = 48
    Width = 97
    Height = 25
    Caption = #1054#1073#1085#1086#1074#1080#1090#1100
    TabOrder = 5
    OnClick = ОбновитьClick
  end
  object ComboBox1: TComboBox
    Left = 384
    Top = 50
    Width = 145
    Height = 21
    TabOrder = 6
    OnSelect = ComboBox1Select
  end
  object DBGrid1: TDBGrid
    Left = 26
    Top = 104
    Width = 503
    Height = 507
    DataSource = DataSource1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = DataModule1.QuerySelectPostavchiki
    Left = 432
    Top = 8
  end
end
