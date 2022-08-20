program AppDeCompras;

uses
  System.StartUpCopy,
  FMX.Forms,
  Cadastro in 'Cadastro.pas' {FrmCadastro},
  DM in 'DM.pas' {db},
  Login in 'Login.pas' {Form8},
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3},
  Unit4 in 'Unit4.pas' {Form4},
  produto in 'produto.pas' {Form5},
  PesquisaProduto in 'PesquisaProduto.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmCadastro, FrmCadastro);
  Application.CreateForm(Tdb, db);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
