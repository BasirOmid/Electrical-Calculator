unit Electric_Calculator_p;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.TabControl, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts,
  FMX.Effects, FMX.Edit, FMX.MultiView, FMX.Memo.Types, FMX.ScrollBox, FMX.Memo;

type
  TForm3 = class(TForm)
    TabControl1: TTabControl;
    Rectangle1: TRectangle;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    TabItem4: TTabItem;
    V: TGridPanelLayout;
    rctbtnCurrent: TRectangle;
    Image1: TImage;
    lbbtnCurrent: TLabel;
    rctbtnVoltage: TRectangle;
    Image2: TImage;
    lbbtnVoltage: TLabel;
    rctbtnPower: TRectangle;
    Image3: TImage;
    lbbtnPower: TLabel;
    rctbtnHistory: TRectangle;
    Image4: TImage;
    lbbtnSomthing: TLabel;
    rctbtnSettings: TRectangle;
    Image5: TImage;
    lbbtnSetting: TLabel;
    ShadowEffect1: TShadowEffect;
    ShadowEffect2: TShadowEffect;
    ShadowEffect4: TShadowEffect;
    ShadowEffect5: TShadowEffect;
    ShadowEffect6: TShadowEffect;
    ShadowEffect7: TShadowEffect;
    ShadowEffect8: TShadowEffect;
    ShadowEffect9: TShadowEffect;
    ShadowEffect10: TShadowEffect;
    ShadowEffect3: TShadowEffect;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    TabItem5: TTabItem;
    lbSetting: TLabel;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    Rectangle5: TRectangle;
    Rectangle6: TRectangle;
    edtCVoltage: TEdit;
    edtCPower: TEdit;
    lbCalculator: TRectangle;
    lbCalculate: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    ShadowEffect11: TShadowEffect;
    ShadowEffect12: TShadowEffect;
    ShadowEffect13: TShadowEffect;
    ShadowEffect14: TShadowEffect;
    ShadowEffect15: TShadowEffect;
    ShadowEffect16: TShadowEffect;
    edtVPower: TEdit;
    edtVCurrent: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    Rectangle8: TRectangle;
    Label15: TLabel;
    edtPCurrent: TEdit;
    edtPVoltage: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    S: TRectangle;
    Label18: TLabel;
    Rectangle10: TRectangle;
    ShadowEffect17: TShadowEffect;
    ShadowEffect18: TShadowEffect;
    ShadowEffect19: TShadowEffect;
    ShadowEffect20: TShadowEffect;
    ShadowEffect21: TShadowEffect;
    ShadowEffect22: TShadowEffect;
    ShadowEffect23: TShadowEffect;
    ShadowEffect24: TShadowEffect;
    ShadowEffect25: TShadowEffect;
    ShadowEffect26: TShadowEffect;
    ShadowEffect27: TShadowEffect;
    ShadowEffect28: TShadowEffect;
    ShadowEffect33: TShadowEffect;
    ShadowEffect34: TShadowEffect;
    ShadowEffect35: TShadowEffect;
    edtCResult: TEdit;
    ShadowEffect36: TShadowEffect;
    edtVResult: TEdit;
    ShadowEffect37: TShadowEffect;
    edtPResult: TEdit;
    ShadowEffect38: TShadowEffect;
    English: TCheckBox;
    Turkish: TCheckBox;
    lbLanguage: TLabel;
    Rectangle7: TRectangle;
    ShadowEffect39: TShadowEffect;
    lbbtnColor: TLabel;
    chkRed: TCheckBox;
    chkBlue: TCheckBox;
    chkYellow: TCheckBox;
    chkBlack: TCheckBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Memo1: TMemo;
    btnClearHistory: TButton;
    procedure rctbtnCurrentClick(Sender: TObject);
    procedure Rectangle10Click(Sender: TObject);
    procedure TurkishChange(Sender: TObject);
    procedure EnglishChange(Sender: TObject);
    procedure chkBlueChange(Sender: TObject);
    procedure chkBlackChange(Sender: TObject);
    procedure chkYellowChange(Sender: TObject);
    procedure chkRedChange(Sender: TObject);
    procedure Rectangle7Click(Sender: TObject);
    procedure lbCalculatorClick(Sender: TObject);
    procedure Rectangle8Click(Sender: TObject);
    procedure SClick(Sender: TObject);
    procedure btnClearHistoryClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.fmx}

procedure TForm3.btnClearHistoryClick(Sender: TObject);
begin
  Memo1.Lines.Clear;
end;

procedure TForm3.chkBlackChange(Sender: TObject);
begin
  if chkBlack.IsChecked then
  begin
    chkRed.IsChecked := False;
    chkBlue.IsChecked := False;
    chkYellow.IsChecked := False;
    Rectangle6.Fill.Color := TAlphaColorRec.Black;
  end;
end;

procedure TForm3.chkBlueChange(Sender: TObject);
begin
  if chkBlue.IsChecked then
  begin
    chkRed.IsChecked := False;
    chkBlack.IsChecked := False;
    chkYellow.IsChecked := False;
    Rectangle6.Fill.Color := TAlphaColorRec.Blue;
  end;

end;

procedure TForm3.chkRedChange(Sender: TObject);
begin
  if chkRed.IsChecked then
  begin
    chkBlack.IsChecked := False;
    chkBlue.IsChecked := False;
    chkYellow.IsChecked := False;
    Rectangle6.Fill.Color := TAlphaColorRec.Red;
  end;
end;

procedure TForm3.chkYellowChange(Sender: TObject);
begin
  if chkYellow.IsChecked then
  begin
    chkRed.IsChecked := False;
    chkBlue.IsChecked := False;
    chkBlack.IsChecked := False;
    Rectangle6.Fill.Color := TAlphaColorRec.Yellow;
  end;
end;

procedure TForm3.EnglishChange(Sender: TObject);
begin
  if English.IsChecked then
  begin
    Turkish.IsChecked := False;
    lbSetting.Text := 'Setting';
    lbbtnCurrent.Text := 'Current';
    lbbtnVoltage.Text := 'Voltage';
    lbbtnPower.Text := 'Power';
    lbbtnSomthing.Text := 'History';
    lbbtnSetting.Text := 'Setting';
    lbLanguage.Text := 'Language';
    lbbtnColor.Text := 'Color';
  end;
end;

procedure TForm3.TurkishChange(Sender: TObject);
begin
  if Turkish.IsChecked then
  begin
    English.IsChecked := False;
    lbSetting.Text := 'Ayarlar';
    lbbtnCurrent.Text := 'Akım';
    lbbtnVoltage.Text := 'Voltaj';
    lbbtnPower.Text := 'Güç';
    lbbtnSomthing.Text := 'Geçmiş';
    lbbtnSetting.Text := 'Ayarlar';
    lbLanguage.Text := 'Dil';
    lbbtnColor.Text := 'Renk';
  end;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  Panel1.Visible := False;
  Panel2.Visible := False;
end;

procedure TForm3.rctbtnCurrentClick(Sender: TObject);
begin
  TabControl1.GoToVisibleTab(TRectangle(Sender).Tag, TTabTransition.Slide,
    TTabTransitionDirection.Normal);

end;

procedure TForm3.Rectangle10Click(Sender: TObject);
var
  check: Boolean;
begin
  check := Panel2.Visible;

  if check = True then
  begin
    Panel2.Visible := False;
  end;
  if check = False then
    Panel2.Visible := True;

end;

procedure TForm3.Rectangle7Click(Sender: TObject);
var
  check: Boolean;
begin
  check := Panel1.Visible;
  if check = True then
  begin
    Panel1.Visible := False;
  end;
  if check = False then
    Panel1.Visible := True;
end;

procedure TForm3.lbCalculatorClick(Sender: TObject);
var
  a, b: Double;
begin
  a := strToFloat(edtCVoltage.Text);
  b := strToFloat(edtCPower.Text);
  edtCResult.Text := (FloatToStr(b / a) + ' A');
  Memo1.Lines.Add(FloatToStr(a) + '/' + FloatToStr(b) + '=' + edtCResult.Text);
end;

procedure TForm3.Rectangle8Click(Sender: TObject);
var
  a, b: Double;
begin
  a := strToFloat(edtVCurrent.Text);
  b := strToFloat(edtVPower.Text);
  edtVResult.Text := (FloatToStr(b / a) + ' V');
  Memo1.Lines.Add(FloatToStr(a) + '/' + FloatToStr(b) + '=' + edtVResult.Text);
end;

procedure TForm3.SClick(Sender: TObject);
Var
  a, b: Double;
begin
  a := strToFloat(edtPCurrent.Text);
  b := strToFloat(edtPVoltage.Text);
  edtPResult.Text := (FloatToStr(b * a) + ' W');
  Memo1.Lines.Add(FloatToStr(a) + '*' + FloatToStr(b) + '=' + edtPResult.Text);
end;

end.
