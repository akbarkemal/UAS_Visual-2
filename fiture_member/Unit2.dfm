object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 273
  Top = 155
  Height = 169
  Width = 300
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'E:\tugas smstr4\visual2\libmysql.dll'
    Left = 24
    Top = 16
  end
  object zqkustomer: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from kustomer')
    Params = <>
    Left = 88
    Top = 16
  end
  object dskustomer: TDataSource
    DataSet = zqkustomer
    Left = 88
    Top = 72
  end
end
