unit produto;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Objects, FMX.Controls.Presentation, FMX.Edit;

type
  TForm5 = class(TForm)
    Layout1: TLayout;
    ToolBar1: TToolBar;
    Layout2: TLayout;
    Layout3: TLayout;
    EditValor: TEdit;
    EditQuantidade: TEdit;
    EditDescricao: TEdit;
    EditNome: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RoundRect1: TRoundRect;
    ImageProduto: TImage;
    Label5: TLabel;
    Label6: TLabel;
    Image2: TImage;
    Label7: TLabel;
    procedure RoundRect1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.fmx}
uses DM,unit1;





procedure TForm5.RoundRect1Click(Sender: TObject);
begin


db.FDProduto.Append;
db.FDProdutonome.AsString:=EditNome.Text;
db.FDProdutodescricao.AsString:= EditDescricao.Text;
db.FDProdutovalor.AsString:= EditValor.Text;
db.FDProdutoquantidade.AsString:= EditQuantidade.Text;
db.FDProduto.Post;
db.FDConnection1.CommitRetaining;
    Form5.Hide;

  Form1.Showmodal;
   Form5.close;


end;

end.
