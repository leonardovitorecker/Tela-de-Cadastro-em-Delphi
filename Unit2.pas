unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm2 = class(TForm)
    ToolBar1: TToolBar;
    Layout1: TLayout;
    V: TLayout;
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
  Form2: TForm2;

implementation

{$R *.fmx}
uses unit3;

procedure TForm2.Image2Click(Sender: TObject);
begin
 Form3.Showmodal;
  Form2.close;
end;

end.
