unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, frxClass, frxDBSet;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    edt1: TEdit;
    lbl2: TLabel;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    cbb1: TComboBox;
    lbl7: TLabel;
    lbl8: TLabel;
    btn6: TButton;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dbgrd1: TDBGrid;
    edt6: TEdit;
    lbl9: TLabel;
    btn4: TButton;
    btn5: TButton;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure posisiawal;
    procedure FormShow(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure edt6Change(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure cbb1Change(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a :string;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
if edt1.Text = '' then
begin
  ShowMessage('Nik Kustomer tidak boleh kosong!');
  Exit;
  end else
  if DataModule2.zqkustomer.Locate('nik', edt1.Text,[])then
  begin
    ShowMessage('Nik Kustomer'+edt1.Text+' sudah ada didalam sistem');
    Exit;
    end;
  if edt2.Text = '' then
  begin
    ShowMessage('Nama tidak boleh kosong!');
    exit;
  end;
  if edt3.Text = '' then
  begin
    ShowMessage('Telpon tidak boleh kosong!');
    exit;
  end;
  if edt4.Text = '' then
  begin
    ShowMessage('Email tidak boleh kosong!');
    exit;
  end;
  if edt5.Text = '' then
  begin
    ShowMessage('Alamat tidak boleh kosong!');
    exit;
  end;
  if cbb1.Text = '' then
  begin
    ShowMessage('Member tidak boleh kosong!');
    exit;
  end;
    begin // simpan
    with DataModule2.zqkustomer do
    begin
      SQL.Clear;
      SQL.Add('insert into kustomer values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+cbb1.Text+'")');
      ExecSQL;
      SQL.Clear;
      SQL.Add('select * from kustomer');
      Open;
    end;
    ShowMessage('Data Berhasil Disimpan!');
  end;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
if edt1.Text = '' then
begin
  ShowMessage('Nik Kustomer tidak boleh kosong!');
  Exit;
  end;
  begin
    with DataModule2.zqkustomer do
    begin
      SQL.Clear;
      SQL.Add('update kustomer set nik="'+edt1.Text+'", nama="'+edt2.Text+'", telp="'+edt3.Text+'", email="'+edt4.Text+'", alamat="'+edt5.Text+'", member="'+cbb1.Text+'" where id = "'+a+'"');
      ExecSQL;

      SQL.Clear;
      SQL.Add('select * from kustomer');
      Open;
    end;
    ShowMessage('Data Berhasil diubah');
  end;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
if MessageDlg('Apakah Anda Yakin Menghapus Data ini',mtWarning,[mbYes,mbNo],0)=mryes then
begin
  with DataModule2.zqkustomer do
  begin
    SQL.Clear;
    SQL.Add('delete from kustomer where id = "'+a+'"');
    ExecSQL;

    SQL.Clear;
    SQL.Add('select * from kustomer');
    Open;
  end;
  ShowMessage('Data berhasil dihapus');
end;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
cbb1.Clear;
posisiawal;
end;

procedure TForm1.posisiawal;
begin
edt1.Enabled:=False;
edt2.Enabled:=False;
edt3.Enabled:=False;
edt4.Enabled:=False;
edt5.Enabled:=False;
cbb1.Enabled:=False;
btn1.Enabled:=False;
btn2.Enabled:=False;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
edt1.Enabled:=True;
edt2.Enabled:=True;
edt3.Enabled:=True;
edt4.Enabled:=True;
edt5.Enabled:=True;
cbb1.Enabled:=True;
btn1.Enabled:=True;
btn2.Enabled:=True;
end;

procedure TForm1.edt6Change(Sender: TObject);
begin
with DataModule2.zqkustomer do
  begin
    SQL.Clear;
    SQL.Add('select * from kustomer where id ="'+edt6.Text+'"');
    Open;
  end;
end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:= DataModule2.zqkustomer.Fields[1].AsString;
edt2.Text:= DataModule2.zqkustomer.Fields[2].AsString;
edt3.Text:= DataModule2.zqkustomer.Fields[3].AsString;
edt4.Text:= DataModule2.zqkustomer.Fields[4].AsString;
edt5.Text:= DataModule2.zqkustomer.Fields[5].AsString;
cbb1.Text:= DataModule2.zqkustomer.Fields[6].AsString;
a:= DataModule2.zqkustomer.Fields[0].AsString;
end;

procedure TForm1.cbb1Change(Sender: TObject);
begin
if cbb1.Text = 'yes' then
    lbl8.Caption := '10%'
  else if cbb1.Text = 'no' then
    lbl8.Caption := '5%';
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.
