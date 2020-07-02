program TrayMessage;

uses
  Forms,
  SysUtils,
  ShellApi,
  TrayMessageUnit in 'TrayMessageUnit.pas' {MainForm};

{$R *.res}

var
  i: integer;
begin
  Application.Initialize;
  Application.Title := 'Mosquito Notification';
  Application.CreateForm(TMainForm, MainForm);
  MainForm.TrayIcon.BalloonHint := ParamStr(1);
  MainForm.TrayIcon.ShowBalloonHint;
  for i := 1 to 100 do
    begin
      sleep(32);
      Application.ProcessMessages;
    end;
end.
