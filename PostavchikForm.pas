unit PostavchikForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, DataModule;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    ????????: TButton;
    ???????: TButton;
    ????????: TButton;
    ComboBox1: TComboBox;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    procedure ????????Click(Sender: TObject);
    procedure ???????Click(Sender: TObject);
    procedure ????????Click(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure refreshcombobox();
var
  i: Integer;
  sItem: String;
begin
  Form3.ComboBox1.Clear;
  try
    DM.FDQuery1.SQL.Text:=
    'SELECT * FROM POSTAVCHIK';
    DM.FDQuery1.Open;
    while not DM.FDQuery1.Eof do begin
    i:=DM.FDQuery1.FieldByName('ID').AsInteger;
    sItem:=DM.FDQuery1.FieldByName('LNAME').AsString+' '+DM.FDQuery1.FieldByName('FNAME').AsString;
    Form3.ComboBox1.Items.AddObject(sItem, TObject(i));
    DM.FDQuery1.Next;
  end;
  finally
  DM.FDQuery1.Connection.Commit;
  DM.FDQuery1.Close;
  end;
end;

procedure TForm3.ComboBox1Select(Sender: TObject);
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
      'SELECT * FROM POSTAVCHIK where id=:id';
      DM.FDQuery1.ParamByName('id').AsInteger := Value;
      DM.FDQuery1.Open;
      while not DM.FDQuery1.Eof do begin
      Edit1.Text:= DM.FDQuery1.FieldByName('FNAME').AsString;
      Edit2.Text:= DM.FDQuery1.FieldByName('LNAME').AsString;
      Edit3.Text:= DM.FDQuery1.FieldByName('MNAME').AsString;
      DM.FDQuery1.Next;
    end;
    finally
    DM.FDQuery1.Connection.Commit;
    DM.FDQuery1.Close;
    end;
  end;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
  refreshcombobox();
end;

procedure TForm3.????????Click(Sender: TObject);
begin
  try
  DM.FDQuery1.SQL.Text:=
  'INSERT INTO POSTAVCHIK (FNAME, LNAME,MNAME) VALUES (:FNAME, :LNAME,:MNAME)';
  DM.FDQuery1.ParamByName('FNAME').AsString := Edit1.Text;
  DM.FDQuery1.ParamByName('LNAME').AsString := Edit2.Text;
  DM.FDQuery1.ParamByName('MNAME').AsString := Edit3.Text;
  DM.FDQuery1.ExecSQL;
  //DM.FDQuery1.Open;
  //DM.FDQuery1.Free;
  DM.FDQuery1.Connection.Commit;
  DM.FDConnection1.Commit;
  finally
  DM.FDQuery1.Close;
  DM.QuerySelectPostavchiki.Active:=False;
  DM.QuerySelectPostavchiki.Active:=True;
  refreshcombobox();
  end;
end;

procedure TForm3.????????Click(Sender: TObject);
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
    'UPDATE POSTAVCHIK set FNAME=:FNAME, LNAME=:LNAME, MNAME=:MNAME where id=:id';
    DM.FDQuery1.ParamByName('FNAME').AsString := Edit1.Text;
    DM.FDQuery1.ParamByName('LNAME').AsString := Edit2.Text;
    DM.FDQuery1.ParamByName('MNAME').AsString := Edit3.Text;
    DM.FDQuery1.ParamByName('id').AsInteger := Value;
    DM.FDQuery1.ExecSQL;
    //DM.FDQuery1.Open;
    //DM.FDQuery1.Free;
    DM.FDQuery1.Connection.Commit;
    DM.FDConnection1.Commit;
    finally
    DM.FDQuery1.Close;
    DM.QuerySelectPostavchiki.Active:=False;
    DM.QuerySelectPostavchiki.Active:=True;
    refreshcombobox();
    end;
  end;
end;

procedure TForm3.???????Click(Sender: TObject);
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
    'DELETE FROM POSTAVCHIK where id=:id';
    DM.FDQuery1.ParamByName('id').AsInteger := Value;
    DM.FDQuery1.ExecSQL;
    DM.FDQuery1.Connection.Commit;
    DM.FDConnection1.Commit;
    finally
    DM.FDQuery1.Close;
    DM.QuerySelectPostavchiki.Active:=False;
    DM.QuerySelectPostavchiki.Active:=True;
    refreshcombobox();
    end;
  end;
end;

end.
