unit Settings;

interface

uses
  inifiles, dialogs, windows, vcl.Graphics;

procedure LoadSettings;
procedure SaveSettings;
procedure PlayBeep(ActionType: TMsgDlgType);

var
  ApplicationPath: string;
  XLSDepotsOrder: array [0 .. 20] of integer;
  r_arrival, r_sale, r_prod, r_moves, r_rc, r_rs: integer;

implementation

uses MainUnit, SysUtils, Forms, SelectGood, ArrivalUnit, SaleUnit,
  ItemEditor, MovesUnit, RetSupplUnit, ImportExcelSale, DataConteiner,
  Variants, RetCustUnit, HistoryUnit, AuthoriseUnit, int_const, OptionsUnit,
  CustomHistoryUnit, SelectShopGood, ShopProduct, EmailSetupUnit,
  mailingunit, UnsortedItems;

procedure LoadSettings;
var
  I: TIniFile;
  a: integer;
begin
  I := TIniFile.Create(ApplicationPath + inifile);
  MainForm.user_id := I.ReadInteger('Users', 'DefaultUserID', 1);
  with OptionsForm do
  begin
    edit_ArrivalReport.Text := I.ReadString('Dir_Reports', 'Arrival',
      '.\Reports\Приходная.frf');
    edit_ArrivalCheckReport.Text := I.ReadString('Dir_Reports', 'ArrivalCheck',
      '.\Reports\Приходная (проверка).fr3');
    edit_SaleReport.Text := I.ReadString('Dir_Reports', 'Sale',
      '.\Reports\Расходная.frf');
    edit_SaleReportSbor.Text := I.ReadString('Dir_Reports', 'SaleSbor',
      '.\Reports\Расходная (на сбор).frf');
    edit_ProductionReport.Text := I.ReadString('Dir_Reports', 'Production',
      '.\Reports\Производство.frf');
    edit_MovesReport.Text := I.ReadString('Dir_Reports', 'Moves',
      '.\Reports\Переходная.frf');
    edit_RetSupplReport.Text := I.ReadString('Dir_Reports', 'SupplierReturn',
      '.\Reports\Возврат поставщику.frf');
    edit_PriceReport.Text := I.ReadString('Dir_Reports', 'PriceGeneral',
      '.\Reports\Прайс-лист (Основной).frf');
    edit_SpecPriceReport.Text := I.ReadString('Dir_Reports', 'PriceSpecial',
      '.\Reports\Прайс-лист (Спец).frf');
    edit_RetPriceReport.Text := I.ReadString('Dir_Reports', 'PriceRetail',
      '.\Reports\Прайс-лист (Розница).frf');
    edit_RetCustReport.Text := I.ReadString('Dir_Reports', 'ReturnCustomer',
      '.\Reports\Возврат от клиента.frf');
    edit_CountOnDepot_Report.Text := I.ReadString('Dir_Reports', 'DepotCount',
      '.\Reports\Количество на складе.frf');
    edit_SaleBillsReport.Text := I.ReadString('Dir_Reports', 'SaleBills',
      '.\Report\Список расходных накладных.frf');
    edit_KassaReport.Text := I.ReadString('Dir_Reports', 'Kassa',
      '.\Reports\Касса.frf');
    edit_DolgiReport.Text := I.ReadString('Dir_Reports', 'Dolgi',
      '.\Reports\Отчёт по клиенту.frf');
    edit_Cenniki.Text := I.ReadString('Dir_Reports', 'Cenniki',
      '.\Reports\bigcen.fr3');

    edit_ExcelArrivalTemplate.Text := I.ReadString('Dir_ExcelTemplates',
      'Arrival', '.\Templates\Приходная.xls');
    edit_ExcelSaleTemplate.Text := I.ReadString('Dir_ExcelTemplates', 'Sale',
      '.\Templates\Расходная.xls');
    edit_ExcelSaleTemplate.Text := I.ReadString('Dir_ExcelTemplates', 'Production',
      '.\Templates\Производство.xls');
    edit_ExcelMovesTemplate.Text := I.ReadString('Dir_ExcelTemplates', 'Moves',
      '.\Templates\Переходная.xls');
    edit_ExcelRetSupplTemplate.Text := I.ReadString('Dir_ExcelTemplates',
      'SupplierReturn', '.\Templates\Возврат поставщику.xls');
    edit_ExcelPriceTemplate.Text := I.ReadString('Dir_ExcelTemplates',
      'PriceGeneral', '.\Templates\Прайс-лист (Основной).xls');
    edit_ExcelSpecPriceTemplate.Text := I.ReadString('Dir_ExcelTemplates',
      'PriceSpecial', '.\Templates\Прайс-лист (Спец).xls');
    edit_ExcelRetPriceTemplate.Text := I.ReadString('Dir_ExcelTemplates',
      'PriceRetail', '.\Templates\Прайс-лист (Розница).xls');
    edit_AccountingTemplate.Text := I.ReadString('Dir_ExcelTemplates',
      'Accountings', '.Templates\Отчет по клиенту.xls');

    ec_arrival.Brush.Color := I.ReadInteger('Colors', 'ArrivalColor', $FFFFFF);
    ec_production.Brush.Color := I.ReadInteger('Colors', 'ProductionColor', $FFFFFF);
    ec_specification.Brush.Color := I.ReadInteger('Colors', 'SpecificationColor', $FFFFFF);
    ec_sale.Brush.Color := I.ReadInteger('Colors', 'SaleColor', $FFFFFF);
    ec_move.Brush.Color := I.ReadInteger('Colors', 'MoveColor', $FFFFFF);
    ec_return_cust.Brush.Color := I.ReadInteger('Colors',
      'RetCustColor', $FFFFFF);
    ec_return_suppl.Brush.Color := I.ReadInteger('Colors',
      'RetSupplColor', $FFFFFF);
    ec_dolg.Brush.Color := I.ReadInteger('Colors', 'Dolg', $FFFFFF);
    ec_kassa.Brush.Color := I.ReadInteger('Colors', 'Kassa', $FFFFFF);
    ec_Encashment.Brush.Color := I.ReadInteger('Colors', 'Encashment', $FFFFFF);
    ec_Minus.Brush.Color := I.ReadInteger('Colors', 'Minus', $FFFFFF);
  end;

  With EmailSetupForm do
  begin
    edit_parf.Text := I.ReadString('Mailing', 'edit_parf', 'sp_parf.xls');
    edit_parf6.Text := I.ReadString('Mailing', 'edit_parf6', 'super.xls');
    edit_parf9.Text := I.ReadString('Mailing', 'edit_parf9', 'superr.xls');
    edit_parf13.Text := I.ReadString('Mailing', 'edit_parf13', 'спец.xls');
    email_parf.Text := I.ReadString('Mailing', 'email_parf',
      'sadim-parfum@googlegroups.com');
    email_parf6.Text := I.ReadString('Mailing', 'email_parf6',
      'sadim-parfums-super@googlegroups.com');
    email_parf9.Text := I.ReadString('Mailing', 'email_parf9',
      'sadim-parfums-max@googlegroups.com');
    email_parf13.Text := I.ReadString('Mailing', 'email_parf13',
      'sadim-parfum-vip@googlegroups.com');
    use_parf_selective.Checked := I.ReadBool('Mailing',
      'use_parf_selective', true);
    use_parf_nisha.Checked := I.ReadBool('Mailing', 'use_parf_nisha', true);
    use_parf_kosm.Checked := I.ReadBool('Mailing', 'use_parf_kosm', false);
    use_parf6_selective.Checked := I.ReadBool('Mailing',
      'use_parf6_selective', true);
    use_parf6_nisha.Checked := I.ReadBool('Mailing', 'use_parf6_nisha', true);
    use_parf6_kosm.Checked := I.ReadBool('Mailing', 'use_parf6_kosm', false);
    use_parf9_selective.Checked := I.ReadBool('Mailing',
      'use_parf9_selective', true);
    use_parf9_nisha.Checked := I.ReadBool('Mailing', 'use_parf9_nisha', true);
    use_parf9_kosm.Checked := I.ReadBool('Mailing', 'use_parf9_kosm', false);
    use_parf13_selective.Checked := I.ReadBool('Mailing',
      'use_parf13_selective', true);
    use_parf13_nisha.Checked := I.ReadBool('Mailing', 'use_parf13_nisha', true);
    use_parf13_kosm.Checked := I.ReadBool('Mailing', 'use_parf13_kosm', false);
    use_file_parf.Checked := I.ReadBool('Mailing', 'use_file_parf', true);
    use_file_parf6.Checked := I.ReadBool('Mailing', 'use_file_parf6', true);
    use_file_parf9.Checked := I.ReadBool('Mailing', 'use_file_parf9', true);
    use_file_parf13.Checked := I.ReadBool('Mailing', 'use_file_parf13', true);
    use_file_nisha.Checked := I.ReadBool('Mailing', 'use_file_nisha', true);
    use_file_kosm.Checked := I.ReadBool('Mailing', 'use_file_kosm', true);
    disc_parf.Value := I.ReadFloat('Mailing', 'disc_parf', 0);
    disc_parf6.Value := I.ReadFloat('Mailing', 'disc_parf6', -6);
    disc_parf9.Value := I.ReadFloat('Mailing', 'disc_parf9', -9);
    disc_parf13.Value := I.ReadFloat('Mailing', 'disc_parf13', -12);
    disc_nisha.Value := I.ReadFloat('Mailing', 'disc_nisha', 0);
    disc_kosm.Value := I.ReadFloat('Mailing', 'disc_kosm', 0);
  end;

  MailingProgressForm.DirSelect.FileName :=
    I.ReadString('Defaults', 'export_dir', '');

  I.Free;
end;

procedure SaveSettings;
var
  I: TIniFile;
begin
  I := TIniFile.Create(ApplicationPath + inifile);
  I.WriteInteger('Users', 'DefaultUserID', MainForm.user_id);
  with OptionsForm do
  begin
    I.WriteString('Dir_Reports', 'Arrival', edit_ArrivalReport.Text);
    I.WriteString('Dir_Reports', 'ArrivalCheck', edit_ArrivalCheckReport.Text);
    I.WriteString('Dir_Reports', 'Sale', edit_SaleReport.Text);
    I.WriteString('Dir_Reports', 'SaleSbor', edit_SaleReportSbor.Text);
    I.WriteString('Dir_Reports', 'Production', edit_ProductionReport.Text);
    I.WriteString('Dir_Reports', 'Moves', edit_MovesReport.Text);
    I.WriteString('Dir_Reports', 'SupplierReturn', edit_RetSupplReport.Text);
    I.WriteString('Dir_Reports', 'PriceGeneral', edit_PriceReport.Text);
    I.WriteString('Dir_Reports', 'PriceSpecial', edit_SpecPriceReport.Text);
    I.WriteString('Dir_Reports', 'PriceRetail', edit_RetPriceReport.Text);
    I.WriteString('Dir_Reports', 'ReturnCustomer', edit_RetCustReport.Text);
    I.WriteString('Dir_Reports', 'DepotCount', edit_CountOnDepot_Report.Text);
    I.WriteString('Dir_Reports', 'SaleBills', edit_SaleBillsReport.Text);
    I.WriteString('Dir_Reports', 'Kassa', edit_KassaReport.Text);
    I.WriteString('Dir_Reports', 'Dolgi', edit_DolgiReport.Text);
    I.WriteString('Dir_Reports', 'Cenniki', edit_Cenniki.Text);

    I.WriteString('Dir_ExcelTemplates', 'Arrival', edit_ExcelArrivalTemplate.Text);
    I.WriteString('Dir_ExcelTemplates', 'Sale', edit_ExcelSaleTemplate.Text);
    I.WriteString('Dir_ExcelTemplates', 'Production', edit_ExcelProductionTemplate.Text);
    I.WriteString('Dir_ExcelTemplates', 'Moves', edit_ExcelMovesTemplate.Text);
    I.WriteString('Dir_ExcelTemplates', 'SupplierReturn', edit_ExcelRetSupplTemplate.Text);
    I.WriteString('Dir_ExcelTemplates', 'PriceGeneral', edit_ExcelPriceTemplate.Text);
    I.WriteString('Dir_ExcelTemplates', 'PriceSpecial', edit_ExcelSpecPriceTemplate.Text);
    I.WriteString('Dir_ExcelTemplates', 'PriceRetail', edit_ExcelRetPriceTemplate.Text);
    I.WriteString('Dir_ExcelTemplates', 'Accountings', edit_AccountingTemplate.Text);

    I.WriteInteger('Colors', 'ArrivalColor', ec_arrival.Brush.Color);
    I.WriteInteger('Colors', 'ProductionColor', ec_production.Brush.Color);
    I.WriteInteger('Colors', 'SpecificationColor', ec_specification.Brush.Color);
    I.WriteInteger('Colors', 'SaleColor', ec_sale.Brush.Color);
    I.WriteInteger('Colors', 'MoveColor', ec_move.Brush.Color);
    I.WriteInteger('Colors', 'RetCustColor', ec_return_cust.Brush.Color);
    I.WriteInteger('Colors', 'RetSupplColor', ec_return_suppl.Brush.Color);
    I.WriteInteger('Colors', 'Dolg', ec_dolg.Brush.Color);
    I.WriteInteger('Colors', 'Encashment', ec_Encashment.Brush.Color);
    I.WriteInteger('Colors', 'Minus', ec_Minus.Brush.Color);
  end;

  With EmailSetupForm do
  begin
    I.WriteString('Mailing', 'edit_parf', edit_parf.Text);
    I.WriteString('Mailing', 'edit_parf6', edit_parf6.Text);
    I.WriteString('Mailing', 'edit_parf9', edit_parf9.Text);
    I.WriteString('Mailing', 'edit_parf13', edit_parf13.Text);
    I.WriteString('Mailing', 'email_parf', email_parf.Text);
    I.WriteString('Mailing', 'email_parf6', email_parf6.Text);
    I.WriteString('Mailing', 'email_parf9', email_parf9.Text);
    I.WriteString('Mailing', 'email_parf13', email_parf13.Text);
    I.WriteBool('Mailing', 'use_parf_selective', use_parf_selective.Checked);
    I.WriteBool('Mailing', 'use_parf_nisha', use_parf_nisha.Checked);
    I.WriteBool('Mailing', 'use_parf_kosm', use_parf_kosm.Checked);
    I.WriteBool('Mailing', 'use_parf6_selective', use_parf6_selective.Checked);
    I.WriteBool('Mailing', 'use_parf6_nisha', use_parf6_nisha.Checked);
    I.WriteBool('Mailing', 'use_parf6_kosm', use_parf6_kosm.Checked);
    I.WriteBool('Mailing', 'use_parf9_selective', use_parf9_selective.Checked);
    I.WriteBool('Mailing', 'use_parf9_nisha', use_parf9_nisha.Checked);
    I.WriteBool('Mailing', 'use_parf9_kosm', use_parf9_kosm.Checked);
    I.WriteBool('Mailing', 'use_parf13_selective',
      use_parf13_selective.Checked);
    I.WriteBool('Mailing', 'use_parf13_nisha', use_parf13_nisha.Checked);
    I.WriteBool('Mailing', 'use_parf13_kosm', use_parf13_kosm.Checked);
    I.WriteBool('Mailing', 'use_file_parf', use_file_parf.Checked);
    I.WriteBool('Mailing', 'use_file_parf6', use_file_parf6.Checked);
    I.WriteBool('Mailing', 'use_file_parf9', use_file_parf9.Checked);
    I.WriteBool('Mailing', 'use_file_parf13', use_file_parf13.Checked);
    I.WriteBool('Mailing', 'use_file_nisha', use_file_nisha.Checked);
    I.WriteBool('Mailing', 'use_file_kosm', use_file_kosm.Checked);
    I.WriteFloat('Mailing', 'disc_parf', disc_parf.Value);
    I.WriteFloat('Mailing', 'disc_parf6', disc_parf6.Value);
    I.WriteFloat('Mailing', 'disc_parf9', disc_parf9.Value);
    I.WriteFloat('Mailing', 'disc_parf13', disc_parf13.Value);
    I.WriteFloat('Mailing', 'disc_nisha', disc_nisha.Value);
    I.WriteFloat('Mailing', 'disc_kosm', disc_kosm.Value);

  end;

  I.WriteString('Defaults', 'export_dir',
    MailingProgressForm.DirSelect.FileName);

  With MainForm do
  begin
    case WindowState of
      wsMaximized:
        I.WriteString('MainForm', 'WindowState', 'Maximized');
      wsMinimized:
        I.WriteString('MainForm', 'WindowState', 'Minimized');
      wsNormal:
        I.WriteString('MainForm', 'WindowState', 'Normal');
    end;
    I.WriteInteger('MainForm', 'Top', Top);
    I.WriteInteger('MainForm', 'Left', Left);
    I.WriteInteger('MainForm', 'Width', Width);
    I.WriteInteger('MainForm', 'Height', Height);
    I.WriteInteger('MainForm', 'Splitter', Area_Tree.Width);
  end;

  // HistoryForm
  with HistoryForm do
  begin
    case WindowState of
      wsMaximized:
        I.WriteString('HistoryForm', 'WindowState', 'Maximized');
      wsMinimized:
        I.WriteString('HistoryForm', 'WindowState', 'Minimized');
      wsNormal:
        I.WriteString('HistoryForm', 'WindowState', 'Normal');
    end;
    I.WriteInteger('HistoryForm', 'Top', Top);
    I.WriteInteger('HistoryForm', 'Left', Left);
    I.WriteInteger('HistoryForm', 'Width', Width);
    I.WriteInteger('HistoryForm', 'Height', Height);
  end;

  // CustomerHistoryForm
  with CustomerHistoryForm do
  begin
    case WindowState of
      wsMaximized:
        I.WriteString('CustomerHistoryForm', 'WindowState', 'Maximized');
      wsMinimized:
        I.WriteString('CustomerHistoryForm', 'WindowState', 'Minimized');
      wsNormal:
        I.WriteString('CustomerHistoryForm', 'WindowState', 'Normal');
    end;
    I.WriteInteger('CustomerHistoryForm', 'Top', Top);
    I.WriteInteger('CustomerHistoryForm', 'Left', Left);
    I.WriteInteger('CustomerHistoryForm', 'Width', Width);
    I.WriteInteger('CustomerHistoryForm', 'Height', Height);
    I.WriteInteger('CustomerHistoryForm', 'Splitter', PageControl.Height);
  end;

  // SelectForm
  With SelectGoodForm do
  begin
    I.WriteInteger('SelectForm', 'Top', Top);
    I.WriteInteger('SelectForm', 'Left', Left);
    I.WriteInteger('SelectForm', 'Width', Width);
    I.WriteInteger('SelectForm', 'Height', Height);
    I.WriteBool('SelectForm', 'SearchByFirstLetters',
      check_firstletters.Checked);
  end;

  // ArrivalForm
  With ArrivalForm do
  begin
    I.WriteInteger('ArrivalForm', 'Top', Top);
    I.WriteInteger('ArrivalForm', 'Left', Left);
    I.WriteInteger('ArrivalForm', 'Width', Width);
    I.WriteInteger('ArrivalForm', 'Height', Height);
  end;

  // SaleForm
  With SaleForm do
  begin
    I.WriteInteger('SaleForm', 'Top', Top);
    I.WriteInteger('SaleForm', 'Left', Left);
    I.WriteInteger('SaleForm', 'Width', Width);
    I.WriteInteger('SaleForm', 'Height', Height);
  end;

  // MovesForm
  With MovesForm do
  begin
    I.WriteInteger('MovesForm', 'Top', Top);
    I.WriteInteger('MovesForm', 'Left', Left);
    I.WriteInteger('MovesForm', 'Width', Width);
    I.WriteInteger('MovesForm', 'Height', Height);
  end;

  // RetSupplForm
  With RetSupplForm do
  begin
    I.WriteInteger('RetSupplForm', 'Top', Top);
    I.WriteInteger('RetSupplForm', 'Left', Left);
    I.WriteInteger('RetSupplForm', 'Width', Width);
    I.WriteInteger('RetSupplForm', 'Height', Height);
  end;
  // RetCustForm
  With RetCustForm do
  begin
    I.WriteInteger('RetCustForm', 'Top', Top);
    I.WriteInteger('RetCustForm', 'Left', Left);
    I.WriteInteger('RetCustForm', 'Width', Width);
    I.WriteInteger('RetCustForm', 'Height', Height);
  end;

  // ItemEditor
  With ItemEditorForm do
  begin
    I.WriteInteger('ItemEditorForm', 'Top', Top);
    I.WriteInteger('ItemEditorForm', 'Left', Left);
  end;

  // UnsortedItemsForm
  With UnsortedItemsForm do
  begin
    I.WriteInteger('UnsortedItemsForm', 'Top', Top);
    I.WriteInteger('UnsortedItemsForm', 'Left', Left);
    I.WriteInteger('UnsortedItemsForm', 'Width', Width);
    I.WriteInteger('UnsortedItemsForm', 'Height', Height);
    case WindowState of
      wsMaximized:
        I.WriteString('UnsortedItemsForm', 'WindowState', 'Maximized');
      wsMinimized:
        I.WriteString('UnsortedItemsForm', 'WindowState', 'Minimized');
      wsNormal:
        I.WriteString('UnsortedItemsForm', 'WindowState', 'Normal');
    end;
  end;

  I.Free;
end;

procedure PlayBeep(ActionType: TMsgDlgType);
var
  mb: dWord;
begin
  case ActionType of
    mtInformation:
      mb := MB_ICONASTERISK; // SystemAsterisk
    mtWarning:
      mb := MB_ICONEXCLAMATION; // SystemExclamation
    mtError:
      mb := MB_ICONHAND; // SystemHand
    mtConfirmation:
      mb := MB_ICONQUESTION; // SystemQuestion
    mtCustom:
      mb := MB_OK; // SystemDefault
  else
    mb := $0FFFFFFFF; // Standard beep using the computer speaker
  end;
  MessageBeep(mb);
end;

end.
