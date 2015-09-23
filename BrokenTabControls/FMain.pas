unit FMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.TabControl, FMX.Layouts;

type
  TForm2 = class(TForm)
    tbcOne: TTabControl;
    TabItem1: TTabItem;
    tbtmOneTwo: TTabItem;
    tbcMain: TTabControl;
    tbtmHome: TTabItem;
    tbtmSettings: TTabItem;
    tbcSettingsScreen: TTabControl;
    TabItem6: TTabItem;
    TabItem2: TTabItem;
    TabItem7: TTabItem;
    TabItem8: TTabItem;
    VertScrollBox1: TVertScrollBox;
    btn1: TButton;
    lbl1: TLabel;
    tbtm1: TTabItem;
    tbtm2: TTabItem;
    tlb1: TToolBar;
    chkFix: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure tbcMainChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

procedure TForm2.Button1Click(Sender: TObject);
begin
  tbcMain.ActiveTab := tbtmHome;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  tbcOne.TabPosition := TTabPosition.None;
  tbcMain.ActiveTab := tbtmHome;
end;

procedure TForm2.tbcMainChange(Sender: TObject);
begin
  if tbcMain.ActiveTab = tbtmSettings then
    tbcMain.TabPosition := TTabPosition.None
  else begin
    if chkFix.IsChecked then begin
      tbcMain.TabPosition := TTabPosition.Bottom;
      tbcMain.TabPosition := TTabPosition.Dots;
    end;
    tbcMain.TabPosition := TTabPosition.Bottom;
  end;
end;

end.
