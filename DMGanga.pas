unit DMGanga;

interface

uses
  System.SysUtils, System.Classes,Androidapi.JNI.JavaTypes,FireDAC.Comp.Client,
  FireDAC.Phys.SQLite, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.FMXUI.Wait, Data.DB,System.IOUtils;

type
  Tdm_ganga = class(TDataModule)
    FDConn: TFDConnection;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Connect_DB: Boolean;
    DirPath: String;
    DirPath0: String;
    vFile: JFile;
  end;

var
  dm_ganga: Tdm_ganga;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

procedure Tdm_ganga.DataModuleCreate(Sender: TObject);
begin
  dm_ganga.DirPath0:='storage/emulated/0/Documents/setcorreo.db';

    if System.SysUtils.FileExists(dm_ganga.DirPath0, True) then
    begin

        dm_ganga.DirPath:=dm_ganga.DirPath0;
        Connect_DB:= True;

    end
    else
    begin
       dm_ganga.DirPath:=TPath.Combine(TPath.GetDocumentsPath, 'setcorreo_basic.db');
       Connect_DB:= False;
    end;

      {$IFDEF ANDROID}
      //DirPath:=TPath.Combine(TPath.GetSharedDocumentsPath,'assets');
       FDConn.Params.Values['Database']:=DirPath;


  {$ENDIF}

end;

end.
