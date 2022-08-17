unit Login;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, idHashSHA, FMX.Layouts, FMX.Objects;

type
  TForm8 = class(TForm)
    V: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    Layout5: TLayout;
    ToolBar1: TToolBar;
    EditUsuario: TEdit;
    EditSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    RoundRect1: TRoundRect;
    Label3: TLabel;
    Image1: TImage;
    Label4: TLabel;
    Image2: TImage;
    Label5: TLabel;
    procedure RoundRect1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  function SHA1 (AsString:string):string;
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses DM, Unit1;

{$R *.fmx}

procedure TForm8.RoundRect1Click(Sender: TObject);

begin
Db.FDQuery1.Close;
Db.FDQuery1.Open();
if(EditUsuario.Text=db.FDQuery1.FieldByName('usuario').AsString) then
if(SHA1(EditSenha.Text) =db.FDQuery1.FieldByName('senha').AsString) then
 begin
  Form1.Showmodal;
  Form8.Hide;
  Form8.close;
  abort;
 end
else
abort;
 Showmessage('nome ou senha incorretos');
 editSenha.Text:='';
 editUsuario.Text:='';
 editUsuario.SetFocus;
 end;
 function TForm8.SHA1(AsString: string) : string;
var
senhaSHA1:TIDhAsHsha1;
begin
  senhaSHA1:=TIDhASHsha1.Create;
  try
    Result:= senhaSHA1.hashStringAsHex(AsString);
  finally
    SenhaSHA1.Free;
  end;
end;
end.
