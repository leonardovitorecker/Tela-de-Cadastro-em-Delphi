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
    procedure Image2Click(Sender: TObject);

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

uses DM, Unit1,PesquisaProduto;

{$R *.fmx}

procedure TForm8.Image2Click(Sender: TObject);
begin
  Form1.Showmodal;
  Form8.close;
end;


procedure TForm8.RoundRect1Click(Sender: TObject);
var
sql:String;
var
senha:string;
begin
senha :=  SHA1(Editsenha.Text);
db.FDPessoa.Close;
db.FDPessoa.ParamByName('pNome').AsString :=EditUsuario.Text;
db.FDPessoa.Open();
if not (db.FDPessoa.IsEmpty) and (db.FDPessoasenha.AsString = senha) then
begin
  if not Assigned(Form6) then
  Application.CreateForm(Tform6,Form6);
  Form6.Show;
   Showmessage('bem vindo ao sistema');
end
else
begin
abort;
 Showmessage('nome ou senha incorretos');
end;
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
