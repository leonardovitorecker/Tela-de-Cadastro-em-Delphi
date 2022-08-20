unit DM;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Phys, FireDAC.FMXUI.Wait, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat,IOUtils;

type
  Tdb = class(TForm)
    FDPessoa: TFDQuery;
    FDConnection1: TFDConnection;
    FDProduto: TFDQuery;
    FDProdutoid: TFDAutoIncField;
    FDProdutonome: TStringField;
    FDProdutodescricao: TStringField;
    FDProdutovalor: TBCDField;
    FDProdutoquantidade: TIntegerField;
    FDProdutoimg_produto: TBlobField;
    FDPessoaid: TFDAutoIncField;
    FDPessoaenail: TStringField;
    FDPessoasenha: TStringField;
    procedure FDConnection1BeforeConnect(Sender: TObject);
    procedure FDConnection1AfterConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  db: Tdb;

implementation

{$R *.fmx}

procedure Tdb.FDConnection1AfterConnect(Sender: TObject);
var
 strSQL : string;
begin
  StrSQL := 'create table IF NOT EXISTS pessoa(' +
            'id integer not null primary key autoincrement,' +
            'nome varchar(40),' +
            'celular varchar(13),' +
            'cep varchar(10),' +
            'endereco varchar(60),' +
            'cidade varchar(60),' +
            'uf char(2),' +
            'bairro varchar(60),' +
            'enail varchar(60),' +
            'senha varchar(40),' +
            'img_usuario blob) ';

  FDConnection1.ExecSQL(strSQL);

  strSQL := EmptyStr;
  strSQL := ' create table IF NOT EXISTS produto(' +
            'id integer not null primary key autoincrement,' +
            'nome varchar(20),' +
            'descricao varchar(200),' +
            'valor numeric(14,2),' +
            'quantidade integer,' +
            'img_produto blob) ';

  FDConnection1.ExecSQL(strSQL);
  FDPessoa.Active := true;
  FDProduto.Active := true;


end;

procedure Tdb.FDConnection1BeforeConnect(Sender: TObject);
var
strPath: string;
begin
  {$IF DEFINED(iOS) or DEFINED(ANDROID)}
      strPath := System.IOUtils.TPath.Combine(System.IOU.GetDocumentPath,
      'banco.db');
      {$ENDIF}
      {$IFDEF MSWINDOWS}
      strPath := System.IOUtils.TPath.Combine
      ('C:\Users\LEONARDO\Documents\sqlexpert','banco.db');
      {$ENDIF}
      FDConnection1.Params.Values['UseUnicode'] := 'False';
      FDConnection1.Params.Values['DATABASE'] := strPath;
end;

end.
