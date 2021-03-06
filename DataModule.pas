unit DataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDataModule1 = class(TDataModule)
    FDConnection1: TFDConnection;
    QuerySelectPostavchiki: TFDQuery;
    QuerySelectTovari: TFDQuery;
    QuerySelectDostavki: TFDQuery;
    FDQuery1: TFDQuery;
    FDQuery2: TFDQuery;
    FDStoredProc1: TFDStoredProc;
    FDStoredProc1DOSTAVKAINPUT: TDateField;
    FDStoredProc1ID_POSTAVCHIKINPUT: TIntegerField;
    FDStoredProc1IDINPUT: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
