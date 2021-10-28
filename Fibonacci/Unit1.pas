unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
a, b, c, adim: Integer;
I: Integer;
begin
   adim := StrToInt( Edit1. Text );
   Edit1.Clear;
   ListBox1.Items.Clear;

a := 0;
b := 1;
listbox1.Items.Add( IntToStr( a) );
listbox1.Items.Add( IntToStr( b) );

for I := 0 to adim-1 do begin
c := a+ b;
Listbox1.Items.Add( IntToStr( c) );

a := b;
b := c;
end;
end;


end.
