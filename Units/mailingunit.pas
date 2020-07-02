unit mailingunit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinDevExpressStyle, dxSkinSilver, cxProgressBar, cxLabel,
  SMTPSend, MIMEPart, MIMEMess, ssl_openssl, EXLReport, cxRadioGroup,
  cxGroupBox, cxCheckGroup;

type
  TMailingProgressForm = class(TForm)
    cg: TcxCheckGroup;
    DirSelect: TFileOpenDialog;
  private
    { Private declarations }
    procedure addPItem(value: string);
    procedure SetProgressItems;
    procedure SetExcelProgressItems;
    procedure DeleteTempFiles;
  public
    { Public declarations }
    procedure DoMailing;
    procedure DoExcelExport;
    function SendEMail(const rcv, sub: string;
      const msg, att: TStrings): boolean;
  end;

var
  MailingProgressForm: TMailingProgressForm;

implementation

{$R *.dfm}

uses EmailSetupUnit, DataConteiner, MainUnit, Settings;

function TMailingProgressForm.SendEMail(const rcv, sub: string;
  const msg, att: TStrings): boolean;
const
  snd = 'sadim.parfum@gmail.com';
  pas = 'leningrad79';
  host = 'smtp.gmail.com:465&SSL';
var
  M: TMimeMess;
  P: TMimePart;
  i: integer;
begin
  M := TMimeMess.Create;
  try
    M.Header.From := snd;
    M.Header.ToList.CommaText := rcv;
    M.Header.Subject := sub;
    P := M.AddPartMultipart('mixed', nil);
    M.AddPartText(msg, P);
    for i := 0 to att.Count - 1 do
      M.AddPartBinaryFromFile(att.Strings[i], P);
    M.EncodeMessage;
    Result := SendToRaw(snd, rcv, host, M.Lines, snd, pas);
  finally
    M.Free;
  end;
end;

procedure TMailingProgressForm.DoExcelExport;
var
  i: integer;
  P: string;
begin
  if not DirSelect.Execute then
    exit;

  P := DirSelect.FileName;
  if copy(P, length(P), 1) <> '\' then
    P := P + '\';
  SetExcelProgressItems;
  MailingProgressForm.Show;
  with EmailSetupForm do
  begin
    i := 0;
    Data.ExcelExport.Options := Data.ExcelExport.Options - [xlroShowProgress];

    if use_file_parf.Checked then
    begin
      cg.Properties.Items[i].Enabled := true;
      cg.States[i] := cbsGrayed;
      MainForm.ExportParfToExcel(P + edit_parf.Text, disc_parf.value,
        'PRICE_CATEGORY_ID = 1');
      cg.States[i] := cbsChecked;
      inc(i);
    end;
    if use_file_parf6.Checked then
    begin
      cg.Properties.Items[i].Enabled := true;
      cg.States[i] := cbsGrayed;
      MainForm.ExportParfToExcel(P + edit_parf6.Text, disc_parf6.value,
        'PRICE_CATEGORY_ID = 1');
      cg.States[i] := cbsChecked;
      inc(i);
    end;
    if use_file_parf9.Checked then
    begin
      cg.Properties.Items[i].Enabled := true;
      cg.States[i] := cbsGrayed;
      MainForm.ExportParfToExcel(P + edit_parf9.Text, disc_parf9.value,
        'PRICE_CATEGORY_ID = 1');
      cg.States[i] := cbsChecked;
      inc(i);
    end;
    if use_file_parf13.Checked then
    begin
      cg.Properties.Items[i].Enabled := true;
      cg.States[i] := cbsGrayed;
      MainForm.ExportParfToExcel(P + edit_parf13.Text, disc_parf13.value,
        'PRICE_CATEGORY_ID = 1');
      cg.States[i] := cbsChecked;
      inc(i);
    end;
    if use_file_nisha.Checked then
    begin
      cg.Properties.Items[i].Enabled := true;
      cg.States[i] := cbsGrayed;
      MainForm.ExportParfToExcel(P + edit_nisha.Text, disc_nisha.value,
        'PRICE_CATEGORY_ID = 3');
      cg.States[i] := cbsChecked;
      inc(i);
    end;
    if use_file_kosm.Checked then
    begin
      cg.Properties.Items[i].Enabled := true;
      cg.States[i] := cbsGrayed;
      MainForm.ExportParfToExcel(P + edit_kosm.Text, disc_kosm.value,
        'TYPE_ID = 1');
      cg.States[i] := cbsChecked;
      inc(i);
    end;
    Data.ExcelExport.Options := Data.ExcelExport.Options - [xlroShowProgress];
  end;
  Close;
end;

procedure TMailingProgressForm.DoMailing;
var
  body: TStrings;
  att: TStrings;
  i: integer;
begin
  SetProgressItems;
  MailingProgressForm.Show;
  Application.ProcessMessages;
  with EmailSetupForm do
  begin
    i := 0;
    Data.ExcelExport.Options := Data.ExcelExport.Options - [xlroShowProgress];

    if use_parf_selective.Checked then
    begin
      cg.Properties.Items[i].Enabled := true;
      cg.States[i] := cbsGrayed;
      MainForm.ExportParfToExcel(edit_parf.Text, disc_parf.value,
        'PRICE_CATEGORY_ID = 1');
      cg.States[i] := cbsChecked;
      inc(i);
    end;
    if use_parf6_selective.Checked then
    begin
      cg.Properties.Items[i].Enabled := true;
      cg.States[i] := cbsGrayed;
      MainForm.ExportParfToExcel(edit_parf6.Text, disc_parf6.value,
        'PRICE_CATEGORY_ID = 1');
      cg.States[i] := cbsChecked;
      inc(i);
    end;
    if use_parf9_selective.Checked then
    begin
      cg.Properties.Items[i].Enabled := true;
      cg.States[i] := cbsGrayed;
      MainForm.ExportParfToExcel(edit_parf9.Text, disc_parf9.value,
        'PRICE_CATEGORY_ID = 1');
      cg.States[i] := cbsChecked;
      inc(i);
    end;
    if use_parf13_selective.Checked then
    begin
      cg.Properties.Items[i].Enabled := true;
      cg.States[i] := cbsGrayed;
      MainForm.ExportParfToExcel(edit_parf13.Text, disc_parf13.value,
        'PRICE_CATEGORY_ID = 1');
      cg.States[i] := cbsChecked;
      inc(i);
    end;
    if nisha_used then
    begin
      cg.Properties.Items[i].Enabled := true;
      cg.States[i] := cbsGrayed;
      MainForm.ExportParfToExcel(edit_nisha.Text, disc_nisha.value,
        'PRICE_CATEGORY_ID = 3');
      cg.States[i] := cbsChecked;
      inc(i);
    end;
    if kosm_used then
    begin
      cg.Properties.Items[i].Enabled := true;
      cg.States[i] := cbsGrayed;
      MainForm.ExportParfToExcel(edit_kosm.Text, disc_kosm.value,
        'TYPE_ID = 1');
      cg.States[i] := cbsChecked;
      inc(i);
    end;

    Data.ExcelExport.Options := Data.ExcelExport.Options - [xlroShowProgress];
    body := TStringList.Create;
    att := TStringList.Create;

    if parf_used then
    begin
      cg.Properties.Items[i].Enabled := true;
      cg.States[i] := cbsGrayed;
      Application.ProcessMessages;
      body.Clear;
      att.Clear;
      if use_parf_selective.Checked then
        att.Add(ApplicationPath + edit_parf.Text);
      if use_parf_nisha.Checked then
        att.Add(ApplicationPath + edit_nisha.Text);
      if use_parf_kosm.Checked then
        att.Add(ApplicationPath + edit_kosm.Text);
      if SendEMail(email_parf.Text, 'Парфюмерия', body, att) then
        cg.States[i] := cbsChecked;
      Application.ProcessMessages;
      inc(i);
    end;

    if parf6_used then
    begin
      cg.Properties.Items[i].Enabled := true;
      cg.States[i] := cbsGrayed;
      Application.ProcessMessages;
      body.Clear;
      att.Clear;
      if use_parf6_selective.Checked then
        att.Add(ApplicationPath + edit_parf6.Text);
      if use_parf6_nisha.Checked then
        att.Add(ApplicationPath + edit_nisha.Text);
      if use_parf6_kosm.Checked then
        att.Add(ApplicationPath + edit_kosm.Text);
      if SendEMail(email_parf6.Text, 'Парфюмерия', body, att) then
        cg.States[i] := cbsChecked;
      Application.ProcessMessages;
      inc(i);
    end;

    if parf9_used then
    begin
      cg.Properties.Items[i].Enabled := true;
      cg.States[i] := cbsGrayed;
      Application.ProcessMessages;
      body.Clear;
      att.Clear;
      if use_parf9_selective.Checked then
        att.Add(ApplicationPath + edit_parf9.Text);
      if use_parf9_nisha.Checked then
        att.Add(ApplicationPath + edit_nisha.Text);
      if use_parf9_kosm.Checked then
        att.Add(ApplicationPath + edit_kosm.Text);
      if SendEMail(email_parf9.Text, 'Парфюмерия', body, att) then
        cg.States[i] := cbsChecked;
      Application.ProcessMessages;
      inc(i);
    end;

    if parf13_used then
    begin
      cg.Properties.Items[i].Enabled := true;
      cg.States[i] := cbsGrayed;
      Application.ProcessMessages;
      body.Clear;
      att.Clear;
      if use_parf13_selective.Checked then
        att.Add(ApplicationPath + edit_parf13.Text);
      if use_parf13_nisha.Checked then
        att.Add(ApplicationPath + edit_nisha.Text);
      if use_parf13_kosm.Checked then
        att.Add(ApplicationPath + edit_kosm.Text);
      if SendEMail(email_parf13.Text, 'Парфюмерия', body, att) then
        cg.States[i] := cbsChecked;
      Application.ProcessMessages;
      inc(i);
    end;

    body.Free;
    att.Free;
    DeleteTempFiles;
  end;
  Close;
end;

procedure TMailingProgressForm.DeleteTempFiles;
begin
  if FileExists(ApplicationPath + EmailSetupForm.edit_parf.Text) then
    DeleteFile(ApplicationPath + EmailSetupForm.edit_parf.Text);
  if FileExists(ApplicationPath + EmailSetupForm.edit_parf6.Text) then
    DeleteFile(ApplicationPath + EmailSetupForm.edit_parf6.Text);
  if FileExists(ApplicationPath + EmailSetupForm.edit_parf9.Text) then
    DeleteFile(ApplicationPath + EmailSetupForm.edit_parf9.Text);
  if FileExists(ApplicationPath + EmailSetupForm.edit_parf13.Text) then
    DeleteFile(ApplicationPath + EmailSetupForm.edit_parf13.Text);
  if FileExists(ApplicationPath + EmailSetupForm.edit_nisha.Text) then
    DeleteFile(ApplicationPath + EmailSetupForm.edit_nisha.Text);
  if FileExists(ApplicationPath + EmailSetupForm.edit_kosm.Text) then
    DeleteFile(ApplicationPath + EmailSetupForm.edit_kosm.Text);
end;

procedure TMailingProgressForm.addPItem(value: string);
begin
  cg.Properties.Items.Add;
  cg.Properties.Items[cg.Properties.Items.Count - 1].Enabled := false;
  cg.Properties.Items[cg.Properties.Items.Count - 1].Caption := value;
end;

procedure TMailingProgressForm.SetProgressItems;
const
  create_prefix = 'Создание файла ';
  send_prefix = 'Отправка письма ';
begin
  cg.Properties.Items.ClearAndResetID;
  with EmailSetupForm do
  begin
    if use_parf_selective.Checked then
      addPItem(create_prefix + edit_parf.Text);
    if use_parf6_selective.Checked then
      addPItem(create_prefix + edit_parf6.Text);
    if use_parf9_selective.Checked then
      addPItem(create_prefix + edit_parf9.Text);
    if use_parf13_selective.Checked then
      addPItem(create_prefix + edit_parf13.Text);
    if nisha_used then
      addPItem(create_prefix + edit_nisha.Text);
    if kosm_used then
      addPItem(create_prefix + edit_kosm.Text);
    if parf_used then
      addPItem(send_prefix + email_parf.Text);
    if parf6_used then
      addPItem(send_prefix + email_parf6.Text);
    if parf9_used then
      addPItem(send_prefix + email_parf9.Text);
    if parf13_used then
      addPItem(send_prefix + email_parf13.Text);
  end;
  Height := cg.Properties.Items.Count * 48;
end;

procedure TMailingProgressForm.SetExcelProgressItems;
const
  create_prefix = 'Создание файла ';
begin
  cg.Properties.Items.ClearAndResetID;
  with EmailSetupForm do
  begin
    if use_file_parf.Checked then
      addPItem(create_prefix + edit_parf.Text);
    if use_file_parf6.Checked then
      addPItem(create_prefix + edit_parf6.Text);
    if use_file_parf9.Checked then
      addPItem(create_prefix + edit_parf9.Text);
    if use_file_parf13.Checked then
      addPItem(create_prefix + edit_parf13.Text);
    if use_file_nisha.Checked then
      addPItem(create_prefix + edit_nisha.Text);
    if use_file_kosm.Checked then
      addPItem(create_prefix + edit_kosm.Text);
  end;
  Height := cg.Properties.Items.Count * 48;
end;

end.
