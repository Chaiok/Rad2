unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    postavchiki1: TMenuItem;
    tovari1: TMenuItem;
    N1: TMenuItem;
    procedure tovari1Click(Sender: TObject);
    procedure postavchiki1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form: TForm1;

implementation

{$R *.dfm}
uses  TovarForm,PostavchikForm,DostavkaForm;

procedure TForm1.N1Click(Sender: TObject);
begin
  Form4.ShowModal;
end;

procedure TForm1.postavchiki1Click(Sender: TObject);
begin
  Form3.ShowModal;
end;

procedure TForm1.tovari1Click(Sender: TObject);
begin
  Form2.ShowModal;
end;

end.
