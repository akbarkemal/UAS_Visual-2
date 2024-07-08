object Form1: TForm1
  Left = 494
  Top = 186
  Width = 764
  Height = 456
  Caption = 'Form1'
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
  object lbl1: TLabel
    Left = 86
    Top = 96
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object lbl2: TLabel
    Left = 86
    Top = 128
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object lbl3: TLabel
    Left = 86
    Top = 160
    Width = 20
    Height = 13
    Caption = 'Telp'
  end
  object lbl4: TLabel
    Left = 86
    Top = 192
    Width = 24
    Height = 13
    Caption = 'Email'
  end
  object lbl5: TLabel
    Left = 86
    Top = 224
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object lbl6: TLabel
    Left = 86
    Top = 264
    Width = 38
    Height = 13
    Caption = 'Member'
  end
  object lbl7: TLabel
    Left = 246
    Top = 264
    Width = 38
    Height = 13
    Caption = 'Diskon :'
  end
  object lbl8: TLabel
    Left = 294
    Top = 264
    Width = 43
    Height = 13
    Caption = 'Otomatis'
  end
  object lbl9: TLabel
    Left = 406
    Top = 232
    Width = 77
    Height = 13
    Caption = 'Masukkan Nama'
  end
  object edt1: TEdit
    Left = 158
    Top = 96
    Width = 177
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 158
    Top = 128
    Width = 177
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 158
    Top = 160
    Width = 177
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 158
    Top = 192
    Width = 177
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 158
    Top = 224
    Width = 177
    Height = 21
    TabOrder = 4
  end
  object cbb1: TComboBox
    Left = 158
    Top = 264
    Width = 73
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    OnChange = cbb1Change
    Items.Strings = (
      'yes'
      'no')
  end
  object btn6: TButton
    Left = 46
    Top = 296
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 6
    OnClick = btn6Click
  end
  object btn1: TButton
    Left = 134
    Top = 296
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 7
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 222
    Top = 296
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 8
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 310
    Top = 296
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 9
    OnClick = btn3Click
  end
  object dbgrd1: TDBGrid
    Left = 342
    Top = 96
    Width = 345
    Height = 120
    DataSource = DataModule2.dskustomer
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt6: TEdit
    Left = 502
    Top = 232
    Width = 177
    Height = 21
    TabOrder = 11
    OnChange = edt6Change
  end
  object btn4: TButton
    Left = 398
    Top = 296
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 12
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 486
    Top = 296
    Width = 75
    Height = 25
    Caption = 'CETAK'
    TabOrder = 13
    OnClick = btn5Click
  end
  object frxrprt1: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45481.943469594900000000
    ReportOptions.LastChange = 45481.943469594900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 56
    Top = 8
    Datasets = <
      item
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 260.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      object ReportTitle1: TfrxReportTitle
        Height = 34.015770000000000000
        Top = 18.897650000000000000
        Width = 982.677800000000000000
        object Memo1: TfrxMemoView
          Left = 400.630180000000000000
          Top = 3.779530000000000000
          Width = 207.874150000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Laporan Data Kustomer')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 18.897650000000000000
        Top = 75.590600000000000000
        Width = 982.677800000000000000
        object Memo2: TfrxMemoView
          Left = 26.456710000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Id')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 75.590600000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nik')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 188.976500000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 351.496290000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Telp')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 502.677490000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Email')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 657.638220000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Alamat')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 854.173780000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Member')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 154.960730000000000000
        Width = 982.677800000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
        RowCount = 0
        object Memo9: TfrxMemoView
          Left = 26.456710000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."id"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 75.590600000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."nik"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 188.976500000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'nama'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."nama"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 351.496290000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'telp'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."telp"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 502.677490000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DataField = 'email'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."email"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 657.638220000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          DataField = 'alamat'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."alamat"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 854.173780000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'member'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."member"]')
          ParentFont = False
        end
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = False
    DataSet = DataModule2.zqkustomer
    Left = 112
    Top = 8
  end
end
