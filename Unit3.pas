unit Unit3;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts;

type
  TForm3 = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    ToolBar1: TToolBar;
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
  Form3: TForm3;

implementation

uses unit4;
{$R *.fmx}

procedure TForm3.Image2Click(Sender: TObject);
begin
 Form4.Showmodal;
  Form3.close;
end;

end.
