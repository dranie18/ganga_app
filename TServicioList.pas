unit TServicioList;

interface
  uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Ani,
  FMX.Objects, FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls, FMX.FontGlyphs.Android,
  FMX.TabControl, FMX.Memo, FMX.ScrollBox, System.Actions, FMX.ActnList,FMX.Effects,
  System.ImageList, FMX.ImgList, FMX.Filter.Effects, FMX.ListBox;

Type
  TServiciosList= class

    private
      YPosDown: Single;
      YPosUp: Single;
      idServ: Integer;
      lyParent: TLayout;
      txtTitle: String;
      txtDetail1: String;
      txtBody: String;
      imgServ: TBitmap;
      imgList: TImageList;
      ActionServ: TAction;

      class var Index_Serv:integer;
       var
      lyChild,lyChild1 : TLayout;
      TLine1: TLine;
      lbTitle, lbDetail1: TLabel;
      lyChild2: TLayout;
      ServIMG, imgArrow: TImage;
      Rect : TRectangle;

      procedure ClickEvent(Sender: TObject);
      procedure Click_Leave(Sender: TObject);
      procedure Click_Down(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
      procedure Click_Up(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
      procedure setIdServ(const Value: Integer);
      procedure setTxtTitle(const Value: String);
      procedure setTxtBody(const Value: String);
      procedure setTxtDetail1(const Value: String);
      procedure setLyParent(const Value: TLayout);
      procedure setImgServ(const Value: TBitmap);
      procedure setImgList(const Value: TImageList);
      procedure setIndex_Serv(const Value: integer);
      procedure setActionServ(const Value: TAction);


    public

      property TIdServ: Integer read idServ write setIdServ;
      property TLyParent: TLayout read lyParent write setLyParent;
      property TTxtTitle: String read txtTitle write setTxtTitle;
      property TTxtDetail1: String read txtDetail1 write setTxtDetail1;
      property TTxtBody: String read txtBody write setTxtBody;
      property TImgServ: TBitmap read imgServ write setImgServ;
      property TImgList: TImageList read imgList write setImgList;
      property TActionServ: TAction read ActionServ write setActionServ;
      class property TIndex_Serv:integer read Index_Serv ;
      constructor Create;
      procedure ShowListServ;

  end;


implementation

procedure TServiciosList.ShowListServ;
 begin

   if not Assigned(lyChild) then
     lyChild:= TLayout.Create(lyParent);
     lyChild.Parent:= lyParent;
     lyChild.Align:= TAlignLayout.Top;
     lyChild.Height:= 55;


   if not Assigned(lyChild1) then
     lyChild1:= TLayout.Create(lyChild);
     lyChild1.Parent:= lyChild;
     lyChild1.Align:= TAlignLayout.Client;

 if not Assigned(ServIMG) then
     ServIMG:= TImage.Create(lyChild1);
     ServIMG.Parent:= lyChild1;
     ServIMG.Align:= TAlignLayout.Left;
     ServIMG.Margins.Left:=12;
     ServIMG.Width:= 60;
     ServIMG.WrapMode:=TImageWrapMode.Center;
     ServIMG.Bitmap:= imgServ;


   if not Assigned(lyChild2) then
     lyChild2:= TLayout.Create(lyChild1);
     lyChild2.Parent:= lyChild1;
     lyChild2.Align:= TAlignLayout.Client;

   if not Assigned(TLine1) then
     TLine1:= TLine.Create(lyChild1);
     Tline1.Parent:= lyChild1;
     TLine1.Align:= TAlignLayout.Bottom;
     TLine1.LineType:= TLineType.Bottom;
     TLine1.Margins.Left:= 72;
     TLine1.Height:= 2;
     TLine1.Opacity:= 0.3;
     TLine1.Stroke.Color:= TAlphaColors.Orange;


   if not Assigned(lbTitle) then
     lbTitle:= TLabel.Create(lyChild2);
     lbTitle.Parent:= lyChild2;
     lbTitle.Align:= TAlignLayout.VertCenter;
     lbTitle.Margins.Bottom:= 12;
     lbTitle.HitTest := False;
     lbTitle.StyledSettings := lbTitle.StyledSettings - [TStyledSetting.FontColor, TStyledSetting.Family,TStyledSetting.Size];
     lbTitle.FontColor:= TAlphaColors.Orange;
     lbTitle.Font.Family:= 'Arial';
     lbTitle.Font.Size:= 16;
     lbTitle.TextSettings.WordWrap:= False;
     lbTitle.TextSettings.VertAlign:= TTextAlign.Leading;
     lbTitle.Text:= txtTitle;

   if not Assigned(lbDetail1) then
     lbDetail1:= TLabel.Create(lyChild2);
     lbDetail1.Parent:= lyChild2;
     lbDetail1.Align:= TAlignLayout.VertCenter;
     lbDetail1.Margins.Top:=22;
     lbDetail1.HitTest := False;
     lbDetail1.StyledSettings := lbDetail1.StyledSettings - [TStyledSetting.FontColor, TStyledSetting.Family,TStyledSetting.Size];
     lbDetail1.FontColor:= TAlphaColors.Orange;
     lbDetail1.Font.Family:= 'Arial';
     lbDetail1.Font.Size:= 14;
     lbDetail1.Opacity:= 0.5;
     lbDetail1.TextSettings.WordWrap:= False;
     lbDetail1.TextSettings.VertAlign:= TTextAlign.Leading;
     lbDetail1.Text:= txtDetail1;

   if not Assigned(imgArrow) then
     imgArrow:= TImage.Create(lyChild2);
     imgArrow.Parent:= lyChild2;
     imgArrow.Align:= TAlignLayout.Right;
     imgArrow.Margins.Right:=12;
     imgArrow.Width:= 36;
     imgArrow.WrapMode:=TImageWrapMode.Center;
     imgArrow.Bitmap:= imgList.Bitmap(TSizeF.Create(12,21),0);

   if not Assigned(Rect) then
     Rect := TRectangle.Create(lyChild1);
     Rect.Parent:= lyChild1;
     Rect.Align:= TAlignLayout.Contents;
     Rect.Stroke.Kind:= TBrushKind.None;
     Rect.Fill.Kind:= TBrushKind.None;
     Rect.Visible:= True;
     Rect.OnMouseDown:= Click_Down;
     Rect.OnMouseUp:= Click_Up;
     Rect.OnMouseLeave:= Click_Leave;
     Rect.OnClick:= ClickEvent;

 end;

 procedure TServiciosList.Click_Down(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  YPosDown:=Y;
  lyChild2.Opacity:=0.2;
  ServIMG.Opacity:=0.2;
end;


procedure TServiciosList.Click_Leave(Sender: TObject);
begin
   //YPosUp:= 0;
   lyChild2.Opacity:=1;
   ServIMG.Opacity:=1;
end;

procedure TServiciosList.ClickEvent(Sender: TObject);
begin
   Application.ProcessMessages;
 TThread.CreateAnonymousThread(procedure ()
 Begin

  TThread.Synchronize (TThread.CurrentThread,
    procedure ()
    begin
       if (abs(YPosDown-YPosUp)<2.5)  then
        begin
         // ShowMessage('Servicios '+ (self.IdServ).ToString()+ YPosDown.ToString+ ' '+ YPosUp.ToString );
          Index_Serv:=self.IdServ;
          ActionServ.Execute;
        end
       else
        //

    End);


 End).Start;


end;

procedure TServiciosList.Click_Up(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
   YPosUp:=Y;
   lyChild2.Opacity:=1;
end;

constructor TServiciosList.Create;
 begin
  //
 end;



procedure TServiciosList.setActionServ(const Value: TAction);
begin
  ActionServ:= Value;
end;

procedure TServiciosList.setIdServ(const Value: Integer);
begin
  IdServ:=Value;
end;

procedure TServiciosList.setImgList(const Value: TImageList);
 begin
   imgList:=Value;
 end;

procedure TServiciosList.setImgServ(const Value: TBitmap);
 begin
   imgServ:= Value;
 end;

procedure TServiciosList.setIndex_Serv(const Value: integer);
begin
   Index_Serv:= Value;
end;

procedure TServiciosList.setLyParent(const Value: TLayout);
 begin
   lyParent:= Value;
 end;

procedure TServiciosList.setTxtBody(const Value: String);
begin
  txtBody:= Value;
end;

procedure TServiciosList.setTxtDetail1(const Value: String);
begin
  TxtDetail1:=Value;
end;

procedure TServiciosList.setTxtTitle(const Value: String);
begin
  TxtTitle:=Value;
end;



end.

