unit Cadastro;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, FMX.Layouts, idHashSHA, FMX.Edit;


type
  TFrmCadastro = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    Layout5: TLayout;
    ToolBar1: TToolBar;
    Image1: TImage;
    Label1: TLabel;
    Senha: TLabel;
    RoundReactConfirmar: TRoundRect;
    Label3: TLabel;
    Label2: TLabel;
    EditUsuario: TEdit;
    EditSenha: TEdit;
    Image2: TImage;
    Label4: TLabel;
    Image3: TImage;
    procedure RoundReactConfirmarClick(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  function SHA1 (AsString:string):string;
    { Public declarations }
  end;

var
  FrmCadastro: TFrmCadastro;

implementation

{$R *.fmx}

uses DM,Login,unit1;





procedure TFrmCadastro.Image2Click(Sender: TObject);
begin
   Form1.Showmodal;
   FrmCadastro.close;
end;

procedure TFrmCadastro.RoundReactConfirmarClick(Sender: TObject);
var senha:string;
begin



if(EditUsuario.Text = EmptyStr) or (EditSenha.Text = EmptyStr) then
Abort;
db.FDPessoa.Append;
db.FDPessoaenail.AsString:=EditUsuario.Text;
db.FDPessoasenha.AsString:= SHA1(EditSenha.Text);
db.FDPessoa.Post;
db.FDConnection1.CommitRetaining;
    FrmCadastro.Hide;

  Form8.Showmodal;
   FrmCadastro.close;

end;

function TFrmCadastro.SHA1(AsString: string) : string;
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
