unit DostavkaForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, DataModule;

type
  TForm4 = class(TForm)
    DateTimePicker1: TDateTimePicker;
    ComboBox1: TComboBox;
    ????????: TButton;
    ????????: TButton;
    ???????: TButton;
    ComboBox2: TComboBox;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure ????????Click(Sender: TObject);
    procedure ???????Click(Sender: TObject);
    procedure ????????Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  iddostavka:Integer;

implementation

{$R *.dfm}

uses DateUtils,SqlTimSt,NacladnayForm;

procedure refreshcombobox();
var
  i: Integer;
  sItem: String;
begin
  Form4.ComboBox2.Clear;
  try
    DM.FDQuery1.Close;
    DM.FDQuery1.SQL.Text:=
    'SELECT * FROM POSTAVKA';
    DM.FDQuery1.Open;
    while not DM.FDQuery1.Eof do begin
    i:=DM.FDQuery1.FieldByName('ID_POSTAVKA').AsInteger;
    sItem:=i.toString+' '+DateToStr(DM.FDQuery1.FieldByName('DOSTAVKA_DATE').AsDateTime);
    Form4.ComboBox2.Items.AddObject(sItem, TObject(i));
    DM.FDQuery1.Next;
  end;
  finally
  DM.FDQuery1.Connection.Commit;
  DM.FDQuery1.Close;
  end;
end;

procedure TForm4.Button1Click(Sender: TObject);
var Idx2:integer;
begin
  Idx2 := ComboBox2.ItemIndex;
  iddostavka:=Integer(ComboBox2.Items.Objects[Idx2]);
  Form5.ShowModal;
end;

procedure TForm4.FormShow(Sender: TObject);
var
  i: Integer;
  sItem: String;
begin
  Form4.ComboBox1.Clear;
  try
    DM.FDQuery1.SQL.Text:=
    'SELECT * FROM POSTAVCHIK';
    DM.FDQuery1.Open;
    while not DM.FDQuery1.Eof do begin
    i:=DM.FDQuery1.FieldByName('ID').AsInteger;
    sItem:=DM.FDQuery1.FieldByName('LNAME').AsString+' '+DM.FDQuery1.FieldByName('FNAME').AsString;
    Form4.ComboBox1.Items.AddObject(sItem, TObject(i));
    DM.FDQuery1.Next;
  end;
  finally
  DM.FDQuery1.Connection.Commit;
  DM.FDQuery1.Close;
  end;
  refreshcombobox();
end;

procedure TForm4.????????Click(Sender: TObject);
var Idx: Integer;
Value: Integer;
begin
  Idx := ComboBox1.ItemIndex;
  if Idx <> -1 then
  begin
    Value := Integer(ComboBox1.Items.Objects[Idx]);
    try
      DM.FDQuery1.SQL.Text :=
      'INSERT INTO POSTAVKA (ID_POSTAVCHIK, DOSTAVKA_DATE) VALUES (:ID_POSTAVCHIK, :DOSTAVKA_DATE)';
      DM.FDQuery1.ParamByName('ID_POSTAVCHIK').AsInteger := Value;
      DM.FDQuery1.ParamByName('DOSTAVKA_DATE').AsSQLTimeStamp :=
      Data.SqlTimSt.DateTimeToSQLTimeStamp(System.DateUtils.DateOf(DateTimePicker1.DateTime));
      DM.FDQuery1.ExecSQL;
      DM.FDQuery1.Connection.Commit;
      DM.FDConnection1.Commit;
    finally
      DM.FDQuery1.Close;
      DM.QuerySelectDostavki.Active:=False;
      DM.QuerySelectDostavki.Active:=True;
      refreshcombobox();
    end;
  end;
end;

procedure TForm4.????????Click(Sender: TObject);
var
Idx: Integer;
Idx2: Integer;
Value: Integer;
Value2: Integer;
Value3: TDateTime;
begin
Idx := ComboBox1.ItemIndex;
Idx2 := ComboBox2.ItemIndex;
  if Idx <> -1 then
  begin
  Value := Integer(ComboBox2.Items.Objects[Idx2]);
  Value2 := Integer(ComboBox1.Items.Objects[Idx]);
  Value3 := DateTimePicker1.DateTime;
    try
    {
    DM.FDConnection1.StartTransaction;
    //DM.FDStoredProc1.StoredProcName := 'NEW_PROCEDURE';
    DM.FDStoredProc1.Prepare;
    DM.FDStoredProc1.ExecProc('NEW_PROCEDURE', [Value3, Value2,Value]);
    }
    DM.FDQuery1.SQL.Text:=
    'UPDATE POSTAVKA set ID_POSTAVCHIK=:ID_POSTAVCHIK, DOSTAVKA_DATE=:DOSTAVKA_DATE where ID_POSTAVKA=:ID_POSTAVKA';
    DM.FDQuery1.ParamByName('ID_POSTAVCHIK').AsInteger := Value2;
    DM.FDQuery1.ParamByName('DOSTAVKA_DATE').AsSQLTimeStamp :=
      Data.SqlTimSt.DateTimeToSQLTimeStamp(System.DateUtils.DateOf(DateTimePicker1.DateTime));
    DM.FDQuery1.ParamByName('ID_POSTAVKA').AsInteger := Value;
    DM.FDQuery1.ExecSQL;
    DM.FDQuery1.Connection.Commit;
    DM.FDConnection1.Commit;
    {
    DM.FDQuery2.SQL.Text :=
    'UPDATE POSTAVKA SET DOSTAVKA_DATE=:DOSTAVKA_DATE where ID_POSTAVKA=:ID_POSTAVKA';
    DM.FDQuery2.ParamByName('ID_POSTAVKA').AsInteger := Value;
    Edit1.Text:= Value.ToString;
    DM.FDQuery2.ParamByName('DOSTAVKA_DATE').AsSQLTimeStamp :=
      Data.SqlTimSt.DateTimeToSQLTimeStamp(System.DateUtils.DateOf(DateTimePicker1.DateTime));
    DM.FDQuery2.ExecSQL;
    DM.FDQuery2.Connection.Commit;
    DM.QuerySelectDostavki.Active:=False;
    DM.QuerySelectDostavki.Active:=True;
    refreshcombobox();
    }
    finally

    DM.FDQuery1.Close;
    DM.QuerySelectDostavki.Active:=False;
    DM.QuerySelectDostavki.Active:=True;
    refreshcombobox();

    //DM.FDConnection1.Commit;
    //DM.QuerySelectDostavki.Active:=False;
    //DM.QuerySelectDostavki.Active:=True;
    //refreshcombobox();
    end;
  end;
end;

procedure TForm4.???????Click(Sender: TObject);
var
Idx: Integer;
Value: Integer;
begin
  Idx := ComboBox2.ItemIndex;
  if Idx <> -1 then
  begin
  Value := Integer(ComboBox2.Items.Objects[Idx]);
  //Edit1.Text  :=  Value.ToString;
    try
    //DM.FDConnection1.StartTransaction;
    DM.FDQuery1.Close;
    DM.FDQuery1.SQL.Text:=
    'DELETE FROM POSTAVKA where ID_POSTAVKA=:ID_POSTAVKA';
    DM.FDQuery1.ParamByName('ID_POSTAVKA').AsInteger := Value;
    DM.FDQuery1.ExecSQL;
    DM.FDQuery1.Connection.Commit;
    DM.FDConnection1.Commit;
    finally
    DM.FDQuery1.Close;
    DM.QuerySelectDostavki.Active:=False;
    DM.QuerySelectDostavki.Active:=True;
    refreshcombobox();
    end;
  end;
end;

end.
