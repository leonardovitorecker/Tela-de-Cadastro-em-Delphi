unit Unit4;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm4 = class(TForm)
    ToolBar1: TToolBar;
    Layout1: TLayout;
    Layout2: TLayout;
    Image1: TImage;
    Image2: TImage;
    Label4: TLabel;
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.fmx}
uses unit1;

procedure TForm4.Image2Click(Sender: TObject);
begin
 Form1.Showmodal;

  Form4.close;
end;

end.
