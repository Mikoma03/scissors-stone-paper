unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Math, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    punkte1, punkte2: integer;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  a, b, c, zahl1, zahl2, i: integer;
begin
  zahl1 := 0;
  zahl2 := 1;
  a := 1;
  b := 2;
  c := 3;
  randomize;
  i := randomrange(a, c + 1);
  if i = a then
    label7.Caption := 'Schere';
  if i = b then
    label7.Caption := 'Stein';
  if i = c then
    label7.Caption := 'Papier';

  if radiobutton1.Checked = True then
  begin
    label6.Caption := 'Schere';
    if a = i then
    begin
      label1.Caption := 'Beide gewinnen!';
      combobox1.Text := zahl1.toString + zahl2.toString;
      combobox2.Text := zahl1.toString + zahl2.toString;
      Inc(punkte1);
      Inc(punkte2);
    end;
    if a < i then
    begin
      label1.Caption := 'Computer gewinnt!';
      combobox2.Text := zahl1.toString + zahl2.toString;
      Inc(punkte1);
    end;
    if a > i then
    begin
      label1.Caption := 'Spieler gewinnt!';
      combobox1.Text := zahl1.toString + zahl2.toString;
      Inc(punkte2);
    end;
  end;
  if radiobutton2.Checked = True then
  begin
    label6.Caption := 'Stein';
    if b > i then
    begin
      label1.Caption := 'Spieler gewinnt!';
      Inc(punkte2);
      combobox1.Text := zahl1.toString + zahl2.toString;
    end;
    if b = i then
    begin
      label1.Caption := 'Beide gewinnen!';
      combobox1.Text := zahl1.toString + zahl2.toString;
      combobox2.Text := zahl1.toString + zahl2.toString;
      Inc(punkte1);
      Inc(punkte2);

    end;
    if b < i then
    begin
      label1.Caption := 'Computer gewinnt!';
      combobox2.Text := zahl1.toString + zahl2.toString;
      Inc(punkte1);

    end;
  end;
  if radiobutton3.Checked = True then
  begin
    label6.Caption := 'Papier';
    if c < i then
    begin
      label1.Caption := 'Computer gewinnt!';
      combobox2.Text := zahl1.toString + zahl2.toString;
      Inc(punkte1);
    end;
    if c > i then
    begin
      label1.Caption := 'Spieler gewinnt!';
      combobox2.Text := zahl1.toString + zahl2.toString;
      Inc(punkte2);

    end;
    if c = i then
    begin
      label1.Caption := 'Beide gewinnen!';
      Inc(punkte1);
      Inc(punkte2);

    end;
  end;
  combobox2.Text := punkte1.ToString;
  combobox1.Text := punkte2.ToString;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  punkte1 := 0;
  punkte2 := 0;
end;

end.

