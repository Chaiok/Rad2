object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 337
  Width = 554
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=D:\radfiribbd\RADDB.FDB'
      'User_Name=SYSDBA'
      'Password=44442222a'
      'DriverID=FB')
    Connected = True
    Left = 32
    Top = 16
  end
  object QuerySelectPostavchiki: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from postavchik')
    Left = 104
    Top = 16
  end
  object QuerySelectTovari: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from tovar')
    Left = 208
    Top = 16
  end
  object QuerySelectDostavki: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from postavka')
    Left = 288
    Top = 16
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 32
    Top = 96
  end
  object FDQuery2: TFDQuery
    Connection = FDConnection1
    Left = 104
    Top = 96
  end
  object FDStoredProc1: TFDStoredProc
    Connection = FDConnection1
    Left = 184
    Top = 104
    object FDStoredProc1DOSTAVKAINPUT: TDateField
      FieldName = 'DOSTAVKAINPUT'
    end
    object FDStoredProc1ID_POSTAVCHIKINPUT: TIntegerField
      FieldName = 'ID_POSTAVCHIKINPUT'
    end
    object FDStoredProc1IDINPUT: TIntegerField
      FieldName = 'IDINPUT'
    end
  end
end
