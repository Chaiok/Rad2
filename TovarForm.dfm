﻿object Form2: TForm2
  Left = 0
  Top = 0
  Caption = #1058#1086#1074#1072#1088#1099
  ClientHeight = 483
  ClientWidth = 865
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
  object DBGrid1: TDBGrid
    Left = 8
    Top = 39
    Width = 849
    Height = 436
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 153
    Height = 21
    MaxLength = 15
    TabOrder = 1
    TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1080#1084#1103' '#1090#1086#1074#1072#1088#1072
  end
  object Edit2: TEdit
    Left = 176
    Top = 8
    Width = 153
    Height = 21
    MaxLength = 15
    TabOrder = 2
    TextHint = #1045#1076#1080#1085#1080#1094#1072' '#1080#1079#1084#1077#1088#1077#1085#1080#1103' '#1090#1086#1074#1072#1088#1072
  end
  object Добавить: TButton
    Left = 344
    Top = 8
    Width = 105
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 3
    OnClick = ДобавитьClick
  end
  object ComboBox1: TComboBox
    Left = 463
    Top = 8
    Width = 153
    Height = 21
    TabOrder = 4
    OnSelect = ComboBox1Select
  end
  object Удалить: TButton
    Left = 632
    Top = 8
    Width = 105
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 5
    OnClick = УдалитьClick
  end
  object Обновить: TButton
    Left = 752
    Top = 8
    Width = 105
    Height = 25
    Caption = #1054#1073#1085#1086#1074#1080#1090#1100
    TabOrder = 6
    OnClick = ОбновитьClick
  end
  object DataSource1: TDataSource
    DataSet = DataModule1.QuerySelectTovari
    Left = 808
    Top = 48
  end
end
