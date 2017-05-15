unit Bull_and_cow;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

const
  maxmot=9;


type
  TForm1 = class(TForm)
    Entrer: TEdit;
    Cow: TEdit;
    Bull: TEdit;
    Check: TButton;
    Erase: TButton;
    Quit: TButton;
    Bulls: TLabel;
    Cows: TLabel;
    Essai: TLabel;
    CaseEssai: TEdit;
    Dico: TMemo;
    Mot: TEdit;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure CheckClick(Sender: TObject);
    procedure EraseClick(Sender: TObject);
    procedure QuitClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;
  Entrermot:string;
  MotJuste:string;
  nbBull,nbCow,Essais:integer;


implementation

{$R *.dfm}


function VerifWin() :Boolean;
var
  test:boolean;

begin
  if (nbBull=length(Motjuste)) then
    test:=true
  else
    test:=false;

  VerifWin:=test;
end;

procedure NbEssais(Motjuste:string ; var Essais:integer);

begin
    case length(Motjuste) of
      3: Essais:=4;
      4: Essais:=7;
      5: Essais:=10;
      6: Essais:=16;
      7: Essais:=20;
    end;
end;

procedure VérifMot(var nbBull:integer ; var nbCow:integer ; Entrermot,Motjuste:string);
var
  I,J: Integer;
  Testlettre:boolean;
  testBull:boolean;

begin
  nbBull:=0;
  nbCow:=0;
  for I := 1 to length(Entrermot) do
    begin
      for J := 1 to length(Motjuste) do
          begin
            Testlettre:=false;
            testBull:=false;
            if (copy(Entrermot,I,1)=copy(Motjuste,J,1)) then
              begin
                Testlettre:=true;
              end;
            if (testlettre=true) and (I=J) then
              begin
                nbBull:=nbBull+1;
                testBull:=true;
              end;
            if (testlettre=true) and (testBull=false) then
              nbCow:=nbCow+1;
          end;
    end;
end;

procedure TForm1.CheckClick(Sender: TObject);
begin
  Entrermot:=lowercase(Entrer.Text);
  VérifMot(nbBull,nbCow,Entrermot,Motjuste);
  Bull.Text:=inttostr(nbBull);
  Cow.Text:=inttostr(nbCow);
  if (VerifWin=true) then
    begin
      showmessage('Vous avez gagné !');
      //je voulais créer une procedure Erase mais ma procédure n'arrivais pas à 'Lire' les objets:
      Motjuste:=Dico.Lines[random(maxmot+1)];
      Mot.Text:=Motjuste;
      NbEssais(Motjuste,Essais);
      CaseEssai.Text:=inttostr(Essais);
      Bull.Text:='';
      cow.Text:='';
      Entrer.Text:='';
    end
  else
    begin
      Essais:=Essais-1;
      CaseEssai.Text:=inttostr(Essais);
    end;
  if (Essais=0) then
    begin
      showmessage('Vous avez perdu !');
      //La même ici (procedure Erase)
      Motjuste:=Dico.Lines[random(maxmot+1)];
      Mot.Text:=Motjuste;
      NbEssais(Motjuste,Essais);
      CaseEssai.Text:=inttostr(Essais);
      Bull.Text:='';
      cow.Text:='';
      Entrer.Text:='';
    end;

end;

procedure TForm1.EraseClick(Sender: TObject);
begin
    //encore ici (Procedure Erase), ça m'aurait évité de mettre 3 fois le même paté.
    Motjuste:=Dico.Lines[random(maxmot+1)];
    Mot.Text:=Motjuste;
    NbEssais(Motjuste,Essais);
    CaseEssai.Text:=inttostr(Essais);
    Bull.Text:='';
    cow.Text:='';
    Entrer.Text:='';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
    Dico.Lines.LoadFromFile('Dico.txt');
    Motjuste:=Dico.Lines[random(maxmot+0)];
    Mot.Text:=Motjuste;
    NbEssais(Motjuste,Essais);
    CaseEssai.Text:=inttostr(Essais);
end;

procedure TForm1.QuitClick(Sender: TObject);

var
  select:integer;

begin
//Je ne comprend pas à quoi sert le (Dialogs) du coup je n'arrive pas à régler le bouton "Quit".
{if Dialogs.MessageDlg('Voulez-vous vraiment quitter ?',mtConfirmation, [mbYes, mbNo],0,mbYes)=mbYes then
  begin
    Dialogs.MessageDlg('lol',mtInformation,[mbOk],0, mbOK);
    Close;
  end; }
end;

end.
