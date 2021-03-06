unit GangaUnit;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Ani,
  FMX.Objects, FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls, FMX.FontGlyphs.Android,
  FMX.TabControl, FMX.Memo, FMX.ScrollBox, System.Actions, FMX.ActnList,FMX.Effects,
  System.ImageList, FMX.ImgList, FMX.Filter.Effects, FMX.ListBox, TServicioList, FireDAC.Comp.Client,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.FMXUI.Wait, Data.DB, FireDAC.DApt,System.IOUtils,
  FMX.Gestures, FireDAC.Comp.UI, FMX.MultiView,FMX.VirtualKeyboard,FMX.Platform,Androidapi.Helpers,
  Androidapi.JNIBridge,Androidapi.JNI.JavaTypes,TAnuncioList,FMX.ListView,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  DMGanga, FMX.Edit, FMX.SearchBox,


    Androidapi.Jni.Os,
    Androidapi.Jni.Widget,

    Androidapi.Jni.GraphicsContentViewText,
    FMX.DialogService.Async,
    FMX.Helpers.Android,
    Androidapi.JNI.App
  ;




type
  JEnvironmentClass = interface(JObjectClass)
    ['{D131F4D4-A6AD-43B7-B2B6-A9222BC46C74}']
    function getExternalStorageDirectory(): JFile; cdecl;
  end;

  [JavaSignature('android/os/Environment')]
  JEnvironment = interface(JObject)
    ['{83A2E94E-7D8E-432F-BE21-AEC2115015BE}']
  end;

  TJEnvironment = class(TJavaGenericImport<JEnvironmentClass, JEnvironment>);

  TForm1 = class(TForm)
    Image1: TImage;
    aniImageLoad1: TFloatAnimation;
    aniImageOpacity1: TFloatAnimation;
    Image2: TImage;
    aniImageLoad2: TFloatAnimation;
    aniImageOpacity2: TFloatAnimation;
    Layout1: TLayout;
    Image3: TImage;
    Layout2: TLayout;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    Layout4: TLayout;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Timer1: TTimer;
    ActionList1: TActionList;
    ChangeTabAction1: TChangeTabAction;
    ChangeTabAction2: TChangeTabAction;
    Rectangle3: TRectangle;
    Rectangle5: TRectangle;
    ImageList2: TImageList;
    PresentedScrollBox1: TPresentedScrollBox;
    Layout5: TLayout;
    Label4: TLabel;
    Rectangle4: TRectangle;
    Image5: TImage;
    Label3: TLabel;
    Label5: TLabel;
    Layout6: TLayout;
    Image8: TImage;
    Layout7: TLayout;
    Image9: TImage;
    Label6: TLabel;
    Label7: TLabel;
    Image10: TImage;
    Label8: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Image6: TImage;
    Image11: TImage;
    Image12: TImage;
    ShadowEffect1: TShadowEffect;
    Label11: TLabel;
    Layout9: TLayout;
    Layout10: TLayout;
    Line1: TLine;
    SpeedButton3: TSpeedButton;
    Layout29: TLayout;
    SpeedButton4: TSpeedButton;
    ChangeTabAction3: TChangeTabAction;
    GestureManager1: TGestureManager;
    Layout3: TLayout;
    Label1: TLabel;
    Label2: TLabel;
    Layout11: TLayout;
    Label12: TLabel;
    Label13: TLabel;
    Image7: TImage;
    TabItem4: TTabItem;
    Rectangle2: TRectangle;
    Label14: TLabel;
    TabControl2: TTabControl;
    Label16: TLabel;
    Memo2: TMemo;
    ChangeTabAction5: TChangeTabAction;
    PresentedScrollBox2: TPresentedScrollBox;
    Image16: TImage;
    Layout12: TLayout;
    FloatAnimation5: TFloatAnimation;
    FloatAnimation6: TFloatAnimation;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    LoadServ: TAction;
    MultiView1: TMultiView;
    Rectangle7: TRectangle;
    Layout13: TLayout;
    PresentedScrollBox3: TPresentedScrollBox;
    Image17: TImage;
    Layout14: TLayout;
    Label22: TLabel;
    Label19: TLabel;
    Rectangle8: TRectangle;
    Label23: TLabel;
    Layout15: TLayout;
    SpeedButton5: TSpeedButton;
    Image18: TImage;
    Rectangle6: TRectangle;
    Label24: TLabel;
    Image19: TImage;
    Rectangle9: TRectangle;
    Label25: TLabel;
    Image20: TImage;
    Rectangle10: TRectangle;
    Label26: TLabel;
    Image21: TImage;
    Label27: TLabel;
    Rectangle11: TRectangle;
    Label17: TLabel;
    Image23: TImage;
    lySearchDb: TLayout;
    rctSearchDb: TRectangle;
    lsbSearchDb: TListBox;
  
    ListBoxItem1: TListBoxItem;
    StyleBook1: TStyleBook;
    ListBoxItem2: TListBoxItem;
    Text2: TText;
    Text3: TText;
    TabItem6: TTabItem;
    Rectangle14: TRectangle;
    Label20: TLabel;
    PresentedScrollBox4: TPresentedScrollBox;
    Layout17: TLayout;
    Layout18: TLayout;
    Layout19: TLayout;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    ChangeTabAction4: TChangeTabAction;
    LoadExtras: TAction;
    Image13: TImage;
    Image14: TImage;
    Image22: TImage;
    Image24: TImage;
    TabItem8: TTabItem;
    Rectangle15: TRectangle;
    Label30: TLabel;
    Image27: TImage;
    Image28: TImage;
    Layout20: TLayout;
    PresentedScrollBox5: TPresentedScrollBox;
    TabControl4: TTabControl;
    Layout21: TLayout;
    Layout22: TLayout;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    Line4: TLine;
    Label33: TLabel;
    ChangeTabAction6: TChangeTabAction;
    Layout8: TLayout;
    Layout23: TLayout;
    Layout24: TLayout;
    Image31: TImage;
    Image33: TImage;
    Layout26: TLayout;
    Layout27: TLayout;
    Image34: TImage;
    Layout28: TLayout;
    Image35: TImage;
    Layout30: TLayout;
    Image36: TImage;
    Layout31: TLayout;
    Layout32: TLayout;
    Layout33: TLayout;
    Layout34: TLayout;
    Image38: TImage;
    Text5: TText;
    Text6: TText;
    Text7: TText;
    Layout35: TLayout;
    Layout36: TLayout;
    Image39: TImage;
    Layout37: TLayout;
    Image40: TImage;
    Layout38: TLayout;
    Image41: TImage;
    Layout39: TLayout;
    Layout40: TLayout;
    Image42: TImage;
    Layout41: TLayout;
    Image43: TImage;
    Layout42: TLayout;
    Image44: TImage;
    Text8: TText;
    Text9: TText;
    Text10: TText;
    Text11: TText;
    Text12: TText;
    Text13: TText;
    Text14: TText;
    Text16: TText;
    Text17: TText;
    Layout25: TLayout;
    Layout43: TLayout;
    Image45: TImage;
    Text15: TText;
    Layout44: TLayout;
    Image46: TImage;
    Text18: TText;
    Layout45: TLayout;
    Image47: TImage;
    Text19: TText;
    Image37: TImage;
    Image32: TImage;
    Timer2: TTimer;
    ChangeTabNext: TChangeTabAction;
    ChangeTabPrev: TChangeTabAction;
    Layout46: TLayout;
    Layout49: TLayout;
    Label29: TLabel;
    Line3: TLine;
    Image25: TImage;
    Layout47: TLayout;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    FloatAnimation7: TFloatAnimation;
    FloatAnimation8: TFloatAnimation;
    Rectangle16: TRectangle;
    Layout48: TLayout;
    Label15: TLabel;
    Label18: TLabel;
    FloatAnimation9: TFloatAnimation;
    Layout50: TLayout;
    Label21: TLabel;
    FloatAnimation10: TFloatAnimation;
    FloatAnimation11: TFloatAnimation;
    Image26: TImage;
    Label28: TLabel;
    FloatAnimation12: TFloatAnimation;
    FloatAnimation13: TFloatAnimation;
    TabControl3: TTabControl;
    FloatAnimation14: TFloatAnimation;
    FloatAnimation15: TFloatAnimation;
    TabItem5: TTabItem;
    Image4: TImage;
    Layout51: TLayout;
    lyFirstScreen: TLayout;
    imgDegradaSearch: TImage;
    SearchBox1: TSearchBox;
    rctSearchDbCancel: TRectangle;   
    Text1: TText;
    Line2: TLine;
    GaussianBlurEffect1: TGaussianBlurEffect;
    rctDegradaSearch: TRectangle;
    SepiaEffect1: TSepiaEffect;
    aniRectSearchDb: TFloatAnimation;
    procedure Image1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure LoadServExecute(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure Rectangle13Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure Image8MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Image8MouseLeave(Sender: TObject);
    procedure Image8MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure LoadExtrasExecute(Sender: TObject);
    procedure Image6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Image6MouseLeave(Sender: TObject);
    procedure Image6MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Image11MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Image11MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Image11MouseLeave(Sender: TObject);
    procedure Image13MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Image13MouseLeave(Sender: TObject);
    procedure Image13MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Image14MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Image14MouseLeave(Sender: TObject);
    procedure Image14MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Image22MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Image22MouseLeave(Sender: TObject);
    procedure Image22MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Image24MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Image24MouseLeave(Sender: TObject);
    procedure Image24MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Image12MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Image12MouseLeave(Sender: TObject);
    procedure Image12MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Image9MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Image9MouseLeave(Sender: TObject);
    procedure Image9MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Image10MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Image10MouseLeave(Sender: TObject);
    procedure Image10MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Image22Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image27MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Image27MouseLeave(Sender: TObject);
    procedure Image27MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Timer2Timer(Sender: TObject);
    procedure ChangeTabNextUpdate(Sender: TObject);
    procedure ChangeTabPrevUpdate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ChangeTabAction1Update(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image34Click(Sender: TObject);
    procedure rctSearchDbCancelMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure rctSearchDbCancelMouseLeave(Sender: TObject);
    procedure rctSearchDbCancelMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure rctSearchDbCancelClick(Sender: TObject);
    procedure aniRectSearchDbFinish(Sender: TObject);
    procedure imgDegradaSearchClick(Sender: TObject);

  private


    { Private declarations }
  public
   { Connect_DB: Boolean;
    DirPath: String;
    DirPath0: String;
    vFile: JFile;  }
    { Public declarations }
    procedure Read_SERV;
    procedure Read_Extra;
    procedure Read_Anuncio_SubCat(var Ttab: TTabControl);
    function AppEvent(AAppEvent: TApplicationEvent; AContext: TObject): Boolean;


  end;

var
  Form1: TForm1;
  SAnuncio: array of TAnunciosList;
  SExtras : array of TServiciosList;
  SListw : array of TServiciosList;
  Image: array of TImageControl;
  ImageAnuncio: array of TImageControl;
  ImageExtras: array of TImageControl;
  //Connect_DB: Boolean;
  qryListar: TFDQuery;
  qryListarExtras: TFDQuery;
  qryListarAnuncio: TFDQuery;

  Foto_Stream: TStream;
  Foto_Stream1: TStream;
  Foto_Stream2: TStream;
implementation

{$R *.fmx}
{$R *.NmXhdpiPh.fmx ANDROID}

procedure TForm1.aniRectSearchDbFinish(Sender: TObject);
begin
  if rctSearchDb.Position.Y > 30 then
    lySearchDb.Visible:= False;  
    aniRectSearchDb.Enabled:= False;
end;

function TForm1.AppEvent(AAppEvent: TApplicationEvent;
  AContext: TObject): Boolean;
begin

  case AAppEvent of
    TApplicationEvent.WillBecomeInactive:
      Form1.Active := False;
    TApplicationEvent.EnteredBackground:
      Form1.Active := False;
    TApplicationEvent.WillTerminate:
    Form1.Active := False;
    

  end;

end;

procedure TForm1.ChangeTabAction1Update(Sender: TObject);
begin
with TabControl1 do
 case TabIndex of

   1:
     begin

     FloatAnimation12.Start;
     FloatAnimation13.Start;
     FloatAnimation10.Start;
     FloatAnimation11.Start;
     Layout4.Visible:= True;
     Layout50.Visible:= True;
     end;
   2:
     begin
      // FloatAnimation14.StopValue:= (Form1.Width/2);
      { FloatAnimation14.Start;
       FloatAnimation15.Start;   }
     end;

 end;

end;

procedure TForm1.ChangeTabNextUpdate(Sender: TObject);
begin
with TabControl1 do
 case TabIndex of

   3:
     if TabControl2.TabIndex = TabControl2.TabCount -1 then
      TabControl2.First(TTabTransition.Slide,  TTabTransitionDirection.Reversed)
     else
       TabControl2.Next(TTabTransition.Slide,  TTabTransitionDirection.Normal);
   5:
     if TabControl4.TabIndex = TabControl4.TabCount -1 then
       TabControl4.First(TTabTransition.Slide,  TTabTransitionDirection.Reversed)
     else
       TabControl4.Next(TTabTransition.Slide,  TTabTransitionDirection.Normal);
 end;

end;

procedure TForm1.ChangeTabPrevUpdate(Sender: TObject);
begin
with TabControl1 do
 case TabIndex of
   3:
     if TabControl2.TabIndex = 0 then
      TabControl2.Last(TTabTransition.Slide,  TTabTransitionDirection.Reversed)
     else
       TabControl2.Previous(TTabTransition.Slide,  TTabTransitionDirection.Normal);
   5:
     if TabControl4.TabIndex = 0 then
       TabControl4.Last(TTabTransition.Slide,  TTabTransitionDirection.Reversed)
     else
       TabControl4.Previous(TTabTransition.Slide,  TTabTransitionDirection.Normal);
 end;

end;

procedure TForm1.FormCreate(Sender: TObject);
 var
   activity : JActivity;
   window : JWindow;
   AppEventSvc: IFMXApplicationEventService;
 begin

    activity := TAndroidHelper.Activity;
	  window := activity.getWindow;

	  window.setFlags(TJWindowManager_LayoutParams.JavaClass.FLAG_TRANSLUCENT_NAVIGATION,
	  TJWindowManager_LayoutParams.JavaClass.FLAG_TRANSLUCENT_NAVIGATION);

     //.FLAG_TRANSLUCENT_STATUS
    window.setFlags(TJWindowManager_LayoutParams.JavaClass.FLAG_LAYOUT_NO_LIMITS,
	 TJWindowManager_LayoutParams.JavaClass.FLAG_LAYOUT_NO_LIMITS);


   FloatAnimation8.Start;
   FloatAnimation7.Start;
   Timer1.Enabled:=true;

    { Add platform service to see camera state. This is nedded to enable or disable the camera when the application
    goes to background.    }

 if TPlatformServices.Current.SupportsPlatformService(IFMXApplicationEventService, IInterface(AppEventSvc)) then
    AppEventSvc.SetApplicationEventHandler(AppEvent);


 end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  qryListar.Free;
  qryListarExtras.DisposeOf;
  qryListarAnuncio.DisposeOf;

end;

procedure TForm1.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
  var
  FService : IFMXVirtualKeyboardService;

begin
  if Key = vkHardwareBack then
  begin
    TPlatformServices.Current.SupportsPlatformService(IFMXVirtualKeyboardService, IInterface(FService));
    if (FService <> nil) and (TVirtualKeyboardState.Visible in FService.VirtualKeyBoardState) then
    begin
      // Back button pressed, keyboard visible, so do nothing...
    end else
    begin
      Key := 0;
      // Back button pressed, keyboard not visible or not supported on this platform, lets exit the app...
      //MessageDlg('Exit Application?', TMsgDlgType.mtConfirmation, [TMsgDlgBtn.mbOK, TMsgDlgBtn.mbCancel], -1, OnCloseDialog);
      if lySearchDb.Visible then
       begin
         aniRectSearchDb.Duration:= 0.5;
         aniRectSearchDb.Inverse:= True;  
         aniRectSearchDb.Start; 
       end        
      else if ((TabControl1.TabIndex=2) and (MultiView1.Visible= False)) then
          close
      else if TabControl1.TabIndex>2 then
        ChangeTabAction1.Execute
      else if MultiView1.Visible then
        MultiView1.HideMaster; // Esta data line es
     end;
  end;
end;



procedure TForm1.Image10MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
Image10.Opacity:=0.2;
end;

procedure TForm1.Image10MouseLeave(Sender: TObject);
begin
Image10.Opacity:=0.7;
end;

procedure TForm1.Image10MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
Image10.Opacity:=0.7;
end;

procedure TForm1.Image11MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
Image11.Opacity:=0.2;
end;

procedure TForm1.Image11MouseLeave(Sender: TObject);
begin
  Image11.Opacity:=1;
end;

procedure TForm1.Image11MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
Image11.Opacity:=1;
end;

procedure TForm1.Image12MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
Image12.Opacity:=0.2;
end;

procedure TForm1.Image12MouseLeave(Sender: TObject);
begin
Image12.Opacity:=1;
end;

procedure TForm1.Image12MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
Image12.Opacity:=1;
end;

procedure TForm1.Image13Click(Sender: TObject);
begin
  ChangeTabAction1.Execute;
  Timer2.Enabled:=False;
end;

procedure TForm1.Image13MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
   Image13.Opacity:=0.2;
end;

procedure TForm1.Image13MouseLeave(Sender: TObject);
begin
  Image13.Opacity:=1;
end;

procedure TForm1.Image13MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  Image13.Opacity:=1;
end;

procedure TForm1.Image14MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  Image14.Opacity:=0.2;
end;

procedure TForm1.Image14MouseLeave(Sender: TObject);
begin
  Image14.Opacity:=1;
end;

procedure TForm1.Image14MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  Image14.Opacity:=1;
end;

procedure TForm1.Image1Click(Sender: TObject);
 begin
   aniImageLoad1.Start;
 end;

procedure TForm1.Image22Click(Sender: TObject);
begin
  ChangeTabAction1.Execute;
   Timer2.Enabled:=False;
end;

procedure TForm1.Image22MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
Image22.Opacity:=0.2;
end;

procedure TForm1.Image22MouseLeave(Sender: TObject);
begin
Image22.Opacity:=1;
end;

procedure TForm1.Image22MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
Image22.Opacity:=1;
end;

procedure TForm1.Image24MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
 Image24.Opacity:=0.2;
end;

procedure TForm1.Image24MouseLeave(Sender: TObject);
begin
Image24.Opacity:=1;
end;

procedure TForm1.Image24MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
Image24.Opacity:=1;
end;

procedure TForm1.Image27MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
   Image27.Opacity:=0.2;
end;

procedure TForm1.Image27MouseLeave(Sender: TObject);
begin
  Image27.Opacity:=0.7;
end;

procedure TForm1.Image27MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  Image6.Opacity:=0.7;
end;

procedure TForm1.Image34Click(Sender: TObject);
begin
  ShowMessage('Press');
end;

procedure TForm1.Image4Click(Sender: TObject);
begin
  ShowMessage('Press');
end;

procedure TForm1.Image6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  Image6.Opacity:=0.2;
end;

procedure TForm1.Image6MouseLeave(Sender: TObject);
begin
  Image6.Opacity:=1;
end;

procedure TForm1.Image6MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  Image6.Opacity:=1;
end;

procedure TForm1.Image8MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  Image8.Opacity:=0.2;
end;

procedure TForm1.Image8MouseLeave(Sender: TObject);
begin
  Image8.Opacity:=0.7;
end;

procedure TForm1.Image8MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  Image8.Opacity:=0.7;
end;

procedure TForm1.Image9Click(Sender: TObject);
begin
 // Read_Anuncio(TabControl4);
  TabControl4.Index:=0;
  Timer2.Enabled:= True;
  ChangeTabAction6.Execute;


end;

procedure TForm1.Image9MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
Image9.Opacity:=0.2;
end;

procedure TForm1.Image9MouseLeave(Sender: TObject);
begin
Image9.Opacity:=0.7;
end;

procedure TForm1.Image9MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
Image9.Opacity:=0.7;
end;

procedure TForm1.imgDegradaSearchClick(Sender: TObject);
begin
  aniRectSearchDb.Duration:= 0.5;
  aniRectSearchDb.Inverse:= True;  
  aniRectSearchDb.Start;
end;

procedure TForm1.LoadExtrasExecute(Sender: TObject);
begin

    Label14.Text:= SExtras[TServiciosList.TIndex_Serv-1].TTxtTitle;
    Image16.Bitmap:= SExtras[TServiciosList.TIndex_Serv-1].TImgServ;
    Label16.Text:= SExtras[TServiciosList.TIndex_Serv-1].TTxtDetail1;
    Memo2.Text:=SExtras[TServiciosList.TIndex_Serv-1].TTxtBody;
    ChangeTabAction5.Execute;


end;

procedure TForm1.LoadServExecute(Sender: TObject);
begin
    //Read_Anuncio_SubCat(TabControl3);    //Despliega los Anuncios en banner...

    //Despliega todas las Subcategorias...

   { Label14.Text:= SListw[TServiciosList.TIndex_Serv-1].TTxtTitle;
    Image16.Bitmap:= SListw[TServiciosList.TIndex_Serv-1].TImgServ;
    Label16.Text:= SListw[TServiciosList.TIndex_Serv-1].TTxtDetail1;
    Memo2.Text:=SListw[TServiciosList.TIndex_Serv-1].TTxtBody;
    //Memo2.Text:= 'Log of register Basic 01';   }
    //TabControl3.Index:=0;



    ChangeTabAction4.Execute;
    Timer2.Enabled:= True;
end;

procedure TForm1.Read_Anuncio_SubCat(var Ttab: TTabControl);
var
  I : Integer;
  J : Integer;
  K : Integer;
  Count:Integer;
  begin
   Timer2.Enabled:= False;

   qryListarAnuncio:= TFDQuery.Create(Nil);
   qryListarAnuncio.FetchOptions.Mode:= TFDFetchMode.fmAll;
   qryListarAnuncio.Connection:= dm_ganga.FDConn;
   qryListarAnuncio.SQL.Clear;
   qryListarAnuncio.SQL.Add('SELECT Id_Anuncio, Anuncio_Name, Anuncio_Body, Anuncio_Img, Anuncio_Phone, Anuncio_mail FROM Anuncios ORDER BY Id_Anuncio');
   qryListarAnuncio.Open();
   qryListarAnuncio.First;


   Count:= Ttab.TabCount;

   if  Assigned(SAnuncio) then
   if Count >0 then
     for J := Count-1 downto 0 do
      begin

         SAnuncio[J].DisposeOf;
         SAnuncio[J]:=nil;
         Ttab.Tabs[J].DisposeOf;

      end;

      SAnuncio:= nil;




   I:=0;
   SetLength(SAnuncio,qryListarAnuncio.RecordCount);
   SetLength(ImageAnuncio,qryListarAnuncio.RecordCount);

   while not qryListarAnuncio.Eof do
     begin
         if not Assigned(SAnuncio[I]) then
         SAnuncio[I]:= TAnunciosList.Create;
         SAnuncio[I].TTabControlAnuncio:=Ttab;

         SAnuncio[I].TTxtTitle:= qryListarAnuncio.FieldByName('Anuncio_Name').AsString;
         SAnuncio[I].TTxtBody:= qryListarAnuncio.FieldByName('Anuncio_Body').AsString;
         SAnuncio[I].TtxtMail:= qryListarAnuncio.FieldByName('Anuncio_mail').AsString;
         SAnuncio[I].TTxtPhone:= qryListarAnuncio.FieldByName('Anuncio_Phone').AsString;

         SAnuncio[I].TActionAnuncio:= LoadExtras;

         SAnuncio[I].TIdAnuncio:=  qryListarAnuncio.FieldByName('Id_Anuncio').AsInteger;
        //showmessage(SAnuncio[I].TIdAnuncio.ToString());

         if not Assigned(ImageAnuncio[I]) then
         ImageAnuncio[I]:= TImageControl.Create(nil);
         Foto_Stream2:= qryListarAnuncio.CreateBlobStream(qryListarAnuncio.FieldByName('Anuncio_Img'),TBlobStreamMode.bmRead);
         ImageAnuncio[I].Bitmap.LoadFromStream(Foto_Stream2);

         SAnuncio[I].TImgAnuncio:= ImageAnuncio[I].Bitmap;


         Inc(I);
         qryListarAnuncio.Next;

     end;
       //showmessage('Value I: '+ I.ToString());
       qryListarAnuncio.DisposeOf;

   for I:=I-1 downto 0 do
     begin
       SAnuncio[I].AddAnuncio;
     end;


end;



procedure TForm1.Read_Extra;
var
  I : Integer;

  begin
  if not Assigned(qryListarExtras) then
   qryListarExtras:= TFDQuery.Create(Nil);

   qryListarExtras.Connection:= dm_ganga.FDConn;
   qryListarExtras.FetchOptions.Mode:= TFDFetchMode.fmAll;
   qryListarExtras.SQL.Clear;
   qryListarExtras.SQL.Add('SELECT Id_Extras, Extra_Title, Extra_Detail, Extra_Img FROM Extras ORDER BY Id_Extras');
   qryListarExtras.Open();
   qryListarExtras.First;


   I:=0;
   SetLength(SExtras,qryListarExtras.RecordCount);
   SetLength(ImageExtras,qryListarExtras.RecordCount);
   while not (qryListarExtras.Eof) do
     begin

         SExtras[I]:= TServiciosList.Create;
         SExtras[I].TLyParent:= Form1.Layout18;
         SExtras[I].TIdServ:=  qryListarExtras.FieldByName('Id_Extras').AsInteger;
         SExtras[I].TTxtTitle:= qryListarExtras.FieldByName('Extra_Title').AsString;
         SExtras[I].TTxtDetail1:= qryListarExtras.FieldByName('Extra_Detail').AsString;
         SExtras[I].TActionServ:= LoadExtras;

         ImageExtras[I]:= TImageControl.Create(Nil);
         Foto_Stream1:= qryListarExtras.CreateBlobStream(qryListarExtras.FieldByName('Extra_Img'),TBlobStreamMode.bmRead);
         ImageExtras[I].Bitmap.LoadFromStream(Foto_Stream1);

         SExtras[I].TImgServ:= ImageExtras[I].Bitmap;
         SExtras[I].TImgList:= ImageList2;

         I:= I+1;
         qryListarExtras.Next;

     end;
      PresentedScrollBox4.ContentSize.Height:= 55*(I+1)+220;
     Layout19.Visible:=True;
     for I:=I-1 downto 0 do
     begin
       SExtras[I].ShowListServ;
     end;


end;

procedure TForm1.Read_SERV;
var
  I : Integer;

  begin
  if not Assigned(qryListar) then
   qryListar:= TFDQuery.Create(Nil);

   qryListar.Connection:= dm_ganga.FDConn;
   qryListar.SQL.Clear;
   qryListar.FetchOptions.Mode:= TFDFetchMode.fmAll;
   qryListar.SQL.Add('SELECT Id_Serv, Serv_Title, Serv_Detail, Serv_Body, Serv_Img FROM Serv ORDER BY Id_Serv');
   qryListar.Open();
   qryListar.First;


   I:=0;
   SetLength(SListw,qryListar.RecordCount);
   SetLength(Image,qryListar.RecordCount);
   while not(qryListar.Eof) do
     begin

         SListw[I]:= TServiciosList.Create;
         SListw[I].TLyParent:= Form1.Layout9;
         SListw[I].TIdServ:=  qryListar.FieldByName('Id_Serv').AsInteger;
         SListw[I].TTxtTitle:= qryListar.FieldByName('Serv_Title').AsString;
         SListw[I].TTxtDetail1:= qryListar.FieldByName('Serv_Detail').AsString;
         SListw[I].TTxtBody:= qryListar.FieldByName('Serv_Body').AsString;
         SListw[I].TActionServ:= LoadServ;

         Image[I]:= TImageControl.Create(Nil);
         Foto_Stream:= qryListar.CreateBlobStream(qryListar.FieldByName('Serv_Img'),TBlobStreamMode.bmRead);
         Image[I].Bitmap.LoadFromStream(Foto_Stream);

         SListw[I].TImgServ:= Image[I].Bitmap;
         SListw[I].TImgList:= ImageList2;

         I:= I+1;
         qryListar.Next;

     end;
     PresentedScrollBox1.ContentSize.Height:= 55*(I+1)+527;
     Layout29.Visible:=True;
     for I:=I-1 downto 0 do
     begin
       SListw[I].ShowListServ;
     end;


   //Layout29.Align:= TAlignLayout.Top;



end;

procedure TForm1.Rectangle13Click(Sender: TObject);
begin
  lySearchDb.Visible:=False;
end;

procedure TForm1.rctSearchDbCancelClick(Sender: TObject);
begin
  aniRectSearchDb.Duration:= 0.5;
  aniRectSearchDb.Inverse:= True;  
  aniRectSearchDb.Start; 
end;

procedure TForm1.rctSearchDbCancelMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
   rctSearchDbCancel.Opacity:=0.3;
end;

procedure TForm1.rctSearchDbCancelMouseLeave(Sender: TObject);
begin
  rctSearchDbCancel.Opacity:=1;
end;

procedure TForm1.rctSearchDbCancelMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  rctSearchDbCancel.Opacity:=1;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  FloatAnimation10.Start;

  FloatAnimation11.Start;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
  MultiView1.HideMaster;
end;

procedure TForm1.SpeedButton8Click(Sender: TObject);
begin
  ChangeTabAction2.Execute;
end;

procedure TForm1.SpeedButton9Click(Sender: TObject);
var P : string;
  Count: Integer;
  Sr: TSearchRec;
  TListBoxItemPath: TListBoxItem;
begin

  lySearchDb.Visible:= True;
  aniRectSearchDb.Duration:= 1.5;
  aniRectSearchDb.Inverse:= False;
  aniRectSearchDb.Start;
  
  aniImageLoad2.Stop;
  aniImageOpacity2.Stop;
  aniImageOpacity1.Stop;
  aniImageLoad1.Stop;
  imgDegradaSearch.Bitmap:=lyFirstScreen.MakeScreenshot;

     
  Count:=0;
  lsbSearchDb.Items.Clear;
   dm_ganga.vFile := TJEnvironment.JavaClass.getExternalStorageDirectory();
   //DirPath0
   P := JStringToString(dm_ganga.vFile.getAbsolutePath)+'/';
  // ShowMessage(P);
  if (FindFirst(P + '*', faAnyFile, Sr) = 0) then
  repeat
    if (System.SysUtils.FileExists(P+ System.SysUtils.PathDelim+ Sr.Name))then
     begin
      lsbSearchDb.Items.Add(Sr.Name);
      lsbSearchDb.ItemByIndex(Count).ImageIndex:= 2;
      lsbSearchDb.ItemByIndex(Count).Selectable:= False;
      Inc(Count);
     end
     else
      begin
      lsbSearchDb.Items.Add(Sr.Name);
      lsbSearchDb.ItemByIndex(Count).ImageIndex:= 1;
      lsbSearchDb.ItemByIndex(Count).ItemData.Accessory:=TListBoxItemData.TAccessory(1);
      lsbSearchDb.ItemByIndex(Count).Selectable:= False;
      Inc(Count);
      end;
  until (FindNext(Sr) <> 0);
   lsbSearchDb.Items.Delete(0);
  FindClose(Sr);

end;

procedure TForm1.Timer1Timer(Sender: TObject);

 begin
   Timer1.Enabled:=False;
    //TabControl1.Next(TTabTransition.Slide,  TTabTransitionDirection.Normal);

   if dm_ganga.Connect_DB then
   begin
       Read_SERV;
       Read_Extra;
       Read_Anuncio_SubCat(TabControl3);
       //Read_Anuncio(TabControl2);
      // Read_Anuncio(TabControl4);
       ChangeTabAction2.Execute;
   end
   else
     begin
     Layout11.Visible:=False;
     Layout3.Visible:=True;
     FloatAnimation6.Start;
     Read_SERV;
     Read_Extra;
     Read_Anuncio_SubCat(TabControl3);
       //Read_Anuncio(TabControl2);
      // Read_Anuncio(TabControl4);
     end;



 end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
with TabControl1 do
 case TabIndex of


    3:
     if TabControl2.TabIndex = TabControl2.TabCount -1 then
      TabControl2.First(TTabTransition.Slide,  TTabTransitionDirection.Reversed)
     else
       TabControl2.Next(TTabTransition.Slide,  TTabTransitionDirection.Normal);

    4:
     if TabControl3.TabIndex = TabControl3.TabCount -1 then
      TabControl3.First(TTabTransition.Slide,  TTabTransitionDirection.Reversed)
     else
       TabControl3.Next(TTabTransition.Slide,  TTabTransitionDirection.Normal);

    5:
     if TabControl4.TabIndex = TabControl4.TabCount -1 then
       TabControl4.First(TTabTransition.Slide,  TTabTransitionDirection.Reversed)
     else
       TabControl4.Next(TTabTransition.Slide,  TTabTransitionDirection.Normal);


 end;


end;

end.
