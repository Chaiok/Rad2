unit TovarForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, DataModule, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TForm2 = class(TForm)
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    ????????: TButton;
    ComboBox1: TComboBox;
    ???????: TButton;
    ????????: TButton;
    DataSource1: TDataSource;
    procedure ????????Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ???????Click(Sender: TObject);
    procedure ????????Click(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure refreshcombobox();
var
  i: Integer;
  sItem: String;
begin
  Form2.ComboBox1.Clear;
  try
    DM.FDQuery1.SQL.Text:=
    'SELECT * FROM TOVAR';
    DM.FDQuery1.Open;
    while not DM.FDQuery1.Eof do begin
    i:=DM.FDQuery1.FieldByName('ID').AsInteger;
    sItem:=DM.FDQuery1.FieldByName('NAME').AsString;
    Form2.ComboBox1.Items.AddObject(sItem, TObject(i));
    DM.FDQuery1.Next;
  end;
  finally
  DM.FDQuery1.Connection.Commit;
  DM.FDQuery1.Close;
  end;
end;

procedure TForm2.ComboBox1Select(Sender: TObject);
var
Idx: Integer;
Value: Integer;
i: Integer;
sItem: String;
begin
  Idx := ComboBox1.ItemIndex;
  if Idx <> -1 then
  begin
  Value := Integer(ComboBox1.Items.Objects[Idx]);
    try
      DM.FDQuery1.SQL.Text:=
      'SELECT * FROM TOVAR where id=:id';
      DM.FDQuery1.ParamByName('id').AsInteger := Value;
      DM.FDQuery1.Open;
      while not DM.FDQuery1.Eof do begin
      Edit1.Text:= DM.FDQuery1.FieldByName('NAME').AsString;
      Edit2.Text:= DM.FDQuery1.FieldByName('ID_IZM').AsString;
      DM.FDQuery1.Next;
    end;
    finally
    DM.FDQuery1.Connection.Commit;
    DM.FDQuery1.Close;
    end;
  end;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  refreshcombobox();
end;

procedure TForm2.????????Click(Sender: TObject);
begin
  try
  DM.FDQuery1.SQL.Text:=
  'INSERT INTO TOVAR (name, id_izm) VALUES (:name, :id_izm)';
  DM.FDQuery1.ParamByName('name').AsString := Edit1.Text;
  DM.FDQuery1.ParamByName('id_izm').AsString := Edit2.Text;
  DM.FDQuery1.ExecSQL;
  //DM.FDQuery1.Open;
  //DM.FDQuery1.Free;
  DM.FDQuery1.Connection.Commit;
  DM.FDConnection1.Commit;
  finally
  DM.FDQuery1.Close;
  DM.QuerySelectTovari.Active:=False;
  DM.QuerySelectTovari.Active:=True;
  refreshcombobox();
  end;
end;

procedure TForm2.????????Click(Sender: TObject);
var
Idx: Integer;
Value: Integer;
begin

Idx := ComboBox1.ItemIndex;
  if Idx <> -1 then
  begin
  Value := Integer(ComboBox1.Items.Objects[Idx]);
    try
    DM.FDQuery1.SQL.Text:=
    'UPDATE TOVAR set name=:name, id_izm=:id_izm where id=:id';
    DM.FDQuery1.ParamByName('name').AsString := Edit1.Text;
    DM.FDQuery1.ParamByName('id_izm').AsString := Edit2.Text;
    DM.FDQuery1.ParamByName('id').AsInteger := Value;
    DM.FDQuery1.ExecSQL;
    //DM.FDQuery1.Open;
    //DM.FDQuery1.Free;
    DM.FDQuery1.Connection.Commit;
    DM.FDConnection1.Commit;
    finally
    DM.FDQuery1.Close;
    DM.QuerySelectTovari.Active:=False;
    DM.QuerySelectTovari.Active:=True;
    refreshcombobox();
    end;
  end;
end;

procedure TForm2.???????Click(Sender: TObject);
var
Idx: Integer;
Value: Integer;
begin
  Idx := ComboBox1.ItemIndex;
  if Idx <> -1 then
  begin
  Value := Integer(ComboBox1.Items.Objects[Idx]);
  //Edit1.Text  :=  Value.ToString;
    try
    DM.FDQuery1.SQL.Text:=
    'DELETE FROM TOVAR where id=:id';
    DM.FDQuery1.ParamByName('id').AsInteger := Value;
    DM.FDQuery1.ExecSQL;
    DM.FDQuery1.Connection.Commit;
    DM.FDConnection1.Commit;
    finally
    DM.FDQuery1.Close;
    DM.QuerySelectTovari.Active:=False;
    DM.QuerySelectTovari.Active:=True;
    refreshcombobox();
    end;
  end;
end;

end.
