object Data: TData
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 666
  Width = 1128
  object Database: TpFIBDatabase
    AutoReconnect = True
    Connected = True
    DBName = 'SERVER:C:\mosquito-stretch\DATABASE.GDB'
    DBParams.Strings = (
      'password=masterkey'
      'user_name=SYSDBA'
      'lc_ctype=WIN1251'
      'sql_role_name=')
    SQLDialect = 3
    Timeout = 0
    DesignDBOptions = [ddoIsDefaultDatabase, ddoStoreConnected]
    LibraryName = 'fbclient.dll'
    WaitForRestoreConnect = 0
    SaveAliasParamsAfterConnect = False
    Left = 1072
    Top = 9
  end
  object TRead_Arrival_N: TpFIBTransaction
    Active = True
    DefaultDatabase = Database
    Left = 28
    Top = 104
  end
  object S_Arrival_N: TDataSource
    DataSet = DS_Arrival_N
    Left = 32
    Top = 56
  end
  object S_Depots: TDataSource
    DataSet = DS_Depots
    Left = 203
    Top = 56
  end
  object DS_Depots: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE DEPOTS'
      'SET '
      '    NAME_PRINT = :NAME_PRINT,'
      '    NAME = :NAME,'
      '    ADRESS = :ADRESS,'
      '    ORGANIZATION = :ORGANIZATION,'
      '    USED = :USED,'
      '    PRICE_TYPE = :PRICE_TYPE,'
      '    CENNIK_TYPE = :CENNIK_TYPE'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    DEPOTS'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO DEPOTS('
      '    ID,'
      '    NAME_PRINT,'
      '    NAME,'
      '    ADRESS,'
      '    ORGANIZATION,'
      '    USED,'
      '    PRICE_TYPE,'
      '    CENNIK_TYPE,'
      '    SALE_IMPORT_PRIORITY,'
      '    SALE_IMPORT_USE'
      ''
      ')'
      'VALUES('
      '    :ID,'
      '    :NAME_PRINT,'
      '    :NAME,'
      '    :ADRESS,'
      '    :ORGANIZATION,'
      '    :USED,'
      '    :PRICE_TYPE,'
      '    :CENNIK_TYPE,'
      '    :SALE_IMPORT_PRIORITY,'
      '    :SALE_IMPORT_USE'
      ''
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME_PRINT,'
      '    NAME,'
      '    ADRESS,'
      '    ORGANIZATION,'
      '    USED,'
      '    PRICE_TYPE,'
      '    CENNIK_TYPE,'
      '    SALE_IMPORT_PRIORITY,'
      '    SALE_IMPORT_USE'
      'FROM'
      '    DEPOTS '
      ' WHERE '
      '        DEPOTS.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME_PRINT,'
      '    NAME,'
      '    ADRESS,'
      '    ORGANIZATION,'
      '    USED,'
      '    PRICE_TYPE,'
      '    CENNIK_TYPE,'
      '    SALE_IMPORT_PRIORITY,'
      '    SALE_IMPORT_USE'
      'FROM'
      '    DEPOTS '
      'ORDER BY'
      '    ID')
    AutoUpdateOptions.UpdateTableName = 'DEPOTS'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'DEPOTS_ID_GEN'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = TRead_Depots
    Database = Database
    UpdateTransaction = TWrite_Depots
    AutoCommit = True
    Left = 203
    Top = 8
    poSQLINT64ToBCD = True
  end
  object TRead_Depots: TpFIBTransaction
    DefaultDatabase = Database
    Left = 200
    Top = 104
  end
  object S_Firms: TDataSource
    DataSet = DS_Firms
    Left = 289
    Top = 56
  end
  object DS_Firms: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE FIRMS'
      'SET '
      '    NAME = :NAME,'
      '    VARIANTS = :VARIANTS'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    FIRMS'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO FIRMS('
      '    ID,'
      '    NAME,'
      '    VARIANTS'
      ')'
      'VALUES('
      '    :ID,'
      '    :NAME,'
      '    :VARIANTS'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME,'
      '    VARIANTS'
      'FROM'
      '    FIRMS '
      ' WHERE '
      '        FIRMS.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME, VARIANTS'
      'FROM'
      '    FIRMS '
      'ORDER BY'
      '    NAME')
    AutoUpdateOptions.UpdateTableName = 'FIRMS'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'FIRMS_ID_GEN'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = TRead_Firms
    Database = Database
    UpdateTransaction = TWrite_Firms
    AutoCommit = True
    Left = 289
    Top = 8
    poSQLINT64ToBCD = True
  end
  object TRead_Firms: TpFIBTransaction
    DefaultDatabase = Database
    Left = 286
    Top = 104
  end
  object TWrite_Arrival_N: TpFIBTransaction
    DefaultDatabase = Database
    Left = 28
    Top = 152
  end
  object TWrite_Depots: TpFIBTransaction
    DefaultDatabase = Database
    Left = 200
    Top = 152
  end
  object TWrite_Firms: TpFIBTransaction
    DefaultDatabase = Database
    Left = 286
    Top = 152
  end
  object S_GoodTypes: TDataSource
    DataSet = DS_GoodTypes
    Left = 375
    Top = 56
  end
  object DS_GoodTypes: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE GOODTYPES'
      'SET '
      '    NAME = :NAME,'
      '    PERC = :PERC,'
      '    ARR_GEN_PERC = :ARR_GEN_PERC,'
      '    ARR_SPEC_PERC = :ARR_SPEC_PERC,'
      '    NICHE_PERC = :NICHE_PERC'
      'WHERE'
      '    ID = :OLD_ID'
      '')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    GOODTYPES'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO GOODTYPES('
      '    ID,'
      '    NAME,'
      '    PERC,'
      '    ARR_GEN_PERC,'
      '    ARR_SPEC_PERC,'
      '    NICHE_PERC'
      ')'
      'VALUES('
      '    :ID,'
      '    :NAME,'
      '    :PERC,'
      '    :ARR_GEN_PERC,'
      '    :ARR_SPEC_PERC,'
      '    :NICHE_PERC'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME,'
      '    PERC,'
      '    ARR_GEN_PERC,'
      '    ARR_SPEC_PERC,'
      '    NICHE_PERC'
      'FROM'
      '    GOODTYPES'
      ' '
      ' WHERE '
      '        GOODTYPES.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME,'
      '    PERC,'
      '    ARR_GEN_PERC,'
      '    ARR_SPEC_PERC, NICHE_PERC'
      'FROM'
      '    GOODTYPES'
      'ORDER BY'
      '    NAME')
    AutoUpdateOptions.UpdateTableName = 'GOODTYPES'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'GOODTYPES_ID_GEN'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = TRead_GoodTypes
    Database = Database
    UpdateTransaction = TWrite_GoodTypes
    AutoCommit = True
    Left = 375
    Top = 8
    poSQLINT64ToBCD = True
  end
  object TRead_GoodTypes: TpFIBTransaction
    DefaultDatabase = Database
    Left = 372
    Top = 104
  end
  object TWrite_GoodTypes: TpFIBTransaction
    DefaultDatabase = Database
    Left = 372
    Top = 152
  end
  object S_Customers: TDataSource
    DataSet = DS_Customers
    Left = 461
    Top = 56
  end
  object DS_Customers: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE CUSTOMERS'
      'SET '
      '    NAME = :NAME,'
      '    PRINTNAME = :PRINTNAME,'
      '    CREDIT = :CREDIT,'
      '    DELAY = :DELAY,'
      '    C_TYPE = :C_TYPE,'
      '    TEL1 = :TEL1,'
      '    TEL2 = :TEL2,'
      '    TEL3 = :TEL3,'
      '    EMAIL = :EMAIL,'
      '    EMAILGROUP = :EMAILGROUP,'
      '    PRICETYPE = :PRICETYPE,'
      '    CURRENCY_ID = :CURRENCY_ID,'
      '    USED = :USED,'
      '    REMIND = :REMIND,'
      '    USERID = :USERID,'
      '    ACCOUNTING = :ACCOUNTING,'
      '    C_ROLE = :C_ROLE,'
      '    USE_EXT_PRICE = :USE_EXT_PRICE,'
      '    ID_NODE = :ID_NODE,'
      '    DISCOUNT_ID = :DISCOUNT_ID'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    CUSTOMERS'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO CUSTOMERS('
      '    ID,'
      '    NAME,'
      '    PRINTNAME,'
      '    CREDIT,'
      '    DELAY,'
      '    C_TYPE,'
      '    TEL1,'
      '    TEL2,'
      '    TEL3,'
      '    EMAIL,'
      '    EMAILGROUP,'
      '    PRICETYPE,'
      '    CURRENCY_ID,'
      '    USED,'
      '    REMIND,'
      '    USERID,'
      '    ACCOUNTING,'
      '    C_ROLE,'
      '    USE_EXT_PRICE,'
      '    ID_NODE,'
      '    DISCOUNT_ID'
      ')'
      'VALUES('
      '    :ID,'
      '    :NAME,'
      '    :PRINTNAME,'
      '    :CREDIT,'
      '    :DELAY,'
      '    :C_TYPE,'
      '    :TEL1,'
      '    :TEL2,'
      '    :TEL3,'
      '    :EMAIL,'
      '    :EMAILGROUP,'
      '    :PRICETYPE,'
      '    :CURRENCY_ID,'
      '    :USED,'
      '    :REMIND,'
      '    :USERID,'
      '    :ACCOUNTING,'
      '    :C_ROLE,'
      '    :USE_EXT_PRICE,'
      '    :ID_NODE,'
      '    :DISCOUNT_ID'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME,'
      '    PRINTNAME,'
      
        '    (SELECT DISCOUNT FROM DISCOUNTS WHERE CUSTOMERS.DISCOUNT_ID ' +
        '= DISCOUNTS.ID) AS DISCOUNT,'
      
        '    (SELECT DESC FROM DISCOUNTS WHERE CUSTOMERS.DISCOUNT_ID = DI' +
        'SCOUNTS.ID) AS DISCOUNT_DESC,'
      '    CREDIT,'
      '    DELAY,'
      '    C_TYPE,'
      '    TEL1,'
      '    TEL2,'
      '    TEL3,'
      '    EMAIL,'
      '    EMAILGROUP,'
      '    PRICETYPE,'
      '    CURRENCY_ID,'
      '    USED,'
      '    REMIND,'
      '    USERID,'
      '    ACCOUNTING,'
      '    C_ROLE,'
      '    USE_EXT_PRICE,'
      '    ID_NODE,'
      '    DISCOUNT_ID'
      'FROM'
      '    CUSTOMERS'
      'WHERE'
      '    CUSTOMERS.ID = :OLD_ID'
      '')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME,'
      '    PRINTNAME,'
      
        '    (SELECT DISCOUNT FROM DISCOUNTS WHERE CUSTOMERS.DISCOUNT_ID ' +
        '= DISCOUNTS.ID) AS DISCOUNT,'
      
        '    (SELECT DESC FROM DISCOUNTS WHERE CUSTOMERS.DISCOUNT_ID = DI' +
        'SCOUNTS.ID) AS DISCOUNT_DESC,'
      '    CREDIT,'
      '    DELAY,'
      '    C_TYPE,'
      '    TEL1,'
      '    TEL2,'
      '    TEL3,'
      '    EMAIL,'
      '    EMAILGROUP,'
      '    PRICETYPE,'
      '    CURRENCY_ID,'
      '    USED,'
      '    REMIND,'
      '    USERID,'
      '    ACCOUNTING,'
      '    C_ROLE,'
      '    USE_EXT_PRICE,'
      '    ID_NODE,'
      '    DISCOUNT_ID'
      'FROM'
      '    CUSTOMERS'
      'WHERE C_TYPE > 0'
      'ORDER BY'
      '    C_TYPE, NAME'
      '')
    AutoUpdateOptions.UpdateTableName = 'CUSTOMERS'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'CUSTOMERS_ID_GEN'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = TRead_Customers
    Database = Database
    UpdateTransaction = TWrite_Customers
    AutoCommit = True
    Left = 461
    Top = 8
    poSQLINT64ToBCD = True
  end
  object TRead_Customers: TpFIBTransaction
    DefaultDatabase = Database
    Left = 458
    Top = 104
  end
  object TWrite_Customers: TpFIBTransaction
    DefaultDatabase = Database
    Left = 458
    Top = 152
  end
  object S_Currency: TDataSource
    DataSet = DS_Currency
    Left = 546
    Top = 56
  end
  object DS_Currency: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE CURRENCY'
      'SET '
      '    NAME = :NAME,'
      '    PREFIX1 = :PREFIX1,'
      '    PREFIX2 = :PREFIX2,'
      '    ICON = :ICON'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    CURRENCY'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO CURRENCY('
      '    ID,'
      '    NAME,'
      '    PREFIX1,'
      '    PREFIX2,'
      '    ICON'
      ')'
      'VALUES('
      '    :ID,'
      '    :NAME,'
      '    :PREFIX1,'
      '    :PREFIX2,'
      '    :ICON'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME,'
      '    PREFIX1,'
      '    PREFIX2,'
      '    ICON'
      'FROM'
      '    CURRENCY '
      ' WHERE '
      '        CURRENCY.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME,'
      '    PREFIX1,'
      '    PREFIX2,'
      '    ICON'
      'FROM'
      '    CURRENCY'
      '')
    AutoUpdateOptions.UpdateTableName = 'CURRENCY'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'CURRENCY_ID_GEN'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = TRead_Currency
    Database = Database
    UpdateTransaction = TWrite_Currency
    AutoCommit = True
    Left = 546
    Top = 8
    poSQLINT64ToBCD = True
  end
  object TRead_Currency: TpFIBTransaction
    DefaultDatabase = Database
    Left = 545
    Top = 104
  end
  object TWrite_Currency: TpFIBTransaction
    DefaultDatabase = Database
    Left = 545
    Top = 152
  end
  object S_Curs: TDataSource
    DataSet = DS_Curs
    Left = 632
    Top = 56
  end
  object DS_Curs: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE CURS'
      'SET '
      '    "DATE" = :"DATE",'
      '    CURR_ID = :CURR_ID,'
      '    CURS = :CURS'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    CURS'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO CURS('
      '    ID,'
      '    "DATE",'
      '    CURR_ID,'
      '    CURS'
      ')'
      'VALUES('
      '    :ID,'
      '    :"DATE",'
      '    :CURR_ID,'
      '    :CURS'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    "DATE",'
      '    CURR_ID,'
      '    CURS'
      'FROM'
      '    CURS'
      'WHERE'
      '    CURR_ID > 0'
      'ORDER BY'
      '    "DATE" DESC'
      '')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    "DATE",'
      '    CURR_ID,'
      '    CURS'
      'FROM'
      '    CURS'
      'WHERE'
      '    CURR_ID > 0'
      'ORDER BY'
      '    "DATE" DESC')
    AutoUpdateOptions.UpdateTableName = 'CURS'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'CURS_ID_GEN'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = TRead_Curs
    Database = Database
    UpdateTransaction = TWrite_Curs
    AutoCommit = True
    Left = 632
    Top = 8
    poSQLINT64ToBCD = True
    object DS_CursID: TFIBIntegerField
      FieldName = 'ID'
    end
    object DS_CursDATE: TFIBDateTimeField
      DefaultExpression = 'NOW'
      FieldName = 'DATE'
      DisplayFormat = 'dd.mm.yyyy hh:mm AMPM'
    end
    object DS_CursCURR_ID: TFIBIntegerField
      DefaultExpression = '1'
      FieldName = 'CURR_ID'
    end
    object DS_CursCURS: TFIBFloatField
      Alignment = taCenter
      FieldName = 'CURS'
      currency = True
    end
    object DS_CursCURRENCY: TStringField
      FieldKind = fkLookup
      FieldName = 'CURRENCY'
      LookupDataSet = DS_Currency
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'CURR_ID'
      Size = 3
      Lookup = True
    end
  end
  object TRead_Curs: TpFIBTransaction
    DefaultDatabase = Database
    Left = 631
    Top = 104
  end
  object TWrite_Curs: TpFIBTransaction
    DefaultDatabase = Database
    Left = 631
    Top = 152
  end
  object S_Goods: TDataSource
    DataSet = DS_Goods
    Left = 32
    Top = 288
  end
  object DS_Goods: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE GOODS'
      'SET '
      '    FULLNAME = :FULLNAME,'
      '    TYPE_ID = :TYPE_ID,'
      '    FIRM_ID = :FIRM_ID,'
      '    PRICE1 = :PRICE1,'
      '    PRICE2 = :PRICE2,'
      '    PRICE_SHOP = :PRICE_SHOP,'
      '    PRICE_SHOP_LAST = :PRICE_SHOP_LAST,'
      '    PRICE_SHOP2 = :PRICE_SHOP2,'
      '    PRICE_SHOP2_LAST = :PRICE_SHOP2_LAST,'
      '    PRICE1_LAST = :PRICE1_LAST,'
      '    PRICE2_LAST = :PRICE2_LAST,'
      '    DATE_ADDED = :DATE_ADDED,'
      '    DATE_CHANGED = :DATE_CHANGED,'
      '    DATE_SALED = :DATE_SALED,'
      '    C0 = :C0,'
      '    C1 = :C1,'
      '    C2 = :C2,'
      '    C3 = :C3,'
      '    C4 = :C4,'
      '    C5 = :C5,'
      '    C6 = :C6,'
      '    C7 = :C7,'
      '    C8 = :C8,'
      '    C9 = :C9,'
      '    C10 = :C10,'
      '    C11 = :C11,'
      '    C12 = :C12,'
      '    C13 = :C13,'
      '    C14 = :C14,'
      '    C15 = :C15,'
      '    C16 = :C16,'
      '    C17 = :C17,'
      '    C18 = :C18,'
      '    C19 = :C19,'
      '    C20 = :C20,'
      '    W0 = :W0,'
      '    W1 = :W1,'
      '    W2 = :W2,'
      '    W3 = :W3,'
      '    W4 = :W4,'
      '    W5 = :W5,'
      '    W6 = :W6,'
      '    W7 = :W7,'
      '    W8 = :W8,'
      '    W9 = :W9,'
      '    W10 = :W10,'
      '    W11 = :W11,'
      '    W12 = :W12,'
      '    W13 = :W13,'
      '    W14 = :W14,'
      '    W15 = :W15,'
      '    W16 = :W16,'
      '    W17 = :W17,'
      '    W18 = :W18,'
      '    W19 = :W19,'
      '    W20 = :W20,'
      '    SELECTED = :SELECTED,'
      '    DELETED = :DELETED,'
      '    ART_1 = :ART_1,'
      '    ART_2 = :ART_2,'
      '    ART_3 = :ART_3,'
      '    ART_4 = :ART_4,'
      '    ART_5 = :ART_5,'
      '    ART_6 = :ART_6,'
      '    ART_7 = :ART_7,'
      '    ART_8 = :ART_8,'
      '    ART_9 = :ART_9,'
      '    ART_10 = :ART_10,'
      '    ART_11 = :ART_11,'
      '    ART_12 = :ART_12,'
      '    ART_13 = :ART_13,'
      '    ART_14 = :ART_14,'
      '    ART_15 = :ART_15,'
      '    ART_16 = :ART_16,'
      '    ART_17 = :ART_17,'
      '    ART_18 = :ART_18,'
      '    ART_19 = :ART_19,'
      '    ART_20 = :ART_20,'
      '    AVAILABLE_1 = :AVAILABLE_1,'
      '    AVAILABLE_2 = :AVAILABLE_2,'
      '    AVAILABLE_3 = :AVAILABLE_3,'
      '    AVAILABLE_4 = :AVAILABLE_4,'
      '    AVAILABLE_5 = :AVAILABLE_5,'
      '    AVAILABLE_6 = :AVAILABLE_6,'
      '    AVAILABLE_7 = :AVAILABLE_7,'
      '    AVAILABLE_8 = :AVAILABLE_8,'
      '    AVAILABLE_9 = :AVAILABLE_9,'
      '    AVAILABLE_10 = :AVAILABLE_10,'
      '    AVAILABLE_11 = :AVAILABLE_11,'
      '    AVAILABLE_12 = :AVAILABLE_12,'
      '    AVAILABLE_13 = :AVAILABLE_13,'
      '    AVAILABLE_14 = :AVAILABLE_14,'
      '    AVAILABLE_15 = :AVAILABLE_15,'
      '    AVAILABLE_16 = :AVAILABLE_16,'
      '    AVAILABLE_17 = :AVAILABLE_17,'
      '    AVAILABLE_18 = :AVAILABLE_18,'
      '    AVAILABLE_19 = :AVAILABLE_19,'
      '    AVAILABLE_20 = :AVAILABLE_20,'
      '    SUPL_PRICE_1 = :SUPL_PRICE_1,'
      '    SUPL_PRICE_2 = :SUPL_PRICE_2,'
      '    SUPL_PRICE_3 = :SUPL_PRICE_3,'
      '    SUPL_PRICE_4 = :SUPL_PRICE_4,'
      '    SUPL_PRICE_5 = :SUPL_PRICE_5,'
      '    SUPL_PRICE_6 = :SUPL_PRICE_6,'
      '    SUPL_PRICE_7 = :SUPL_PRICE_7,'
      '    SUPL_PRICE_8 = :SUPL_PRICE_8,'
      '    SUPL_PRICE_9 = :SUPL_PRICE_9,'
      '    SUPL_PRICE_10 = :SUPL_PRICE_10,'
      '    SUPL_PRICE_11 = :SUPL_PRICE_11,'
      '    SUPL_PRICE_12 = :SUPL_PRICE_12,'
      '    SUPL_PRICE_13 = :SUPL_PRICE_13,'
      '    SUPL_PRICE_14 = :SUPL_PRICE_14,'
      '    SUPL_PRICE_15 = :SUPL_PRICE_15,'
      '    SUPL_PRICE_16 = :SUPL_PRICE_16,'
      '    SUPL_PRICE_17 = :SUPL_PRICE_17,'
      '    SUPL_PRICE_18 = :SUPL_PRICE_18,'
      '    SUPL_PRICE_19 = :SUPL_PRICE_19,'
      '    SUPL_PRICE_20 = :SUPL_PRICE_20,'
      '    SUPPL_DATE_1 = :SUPPL_DATE_1,'
      '    SUPPL_DATE_2 = :SUPPL_DATE_2,'
      '    SUPPL_DATE_3 = :SUPPL_DATE_3,'
      '    SUPPL_DATE_4 = :SUPPL_DATE_4,'
      '    SUPPL_DATE_5 = :SUPPL_DATE_5,'
      '    SUPPL_DATE_6 = :SUPPL_DATE_6,'
      '    SUPPL_DATE_7 = :SUPPL_DATE_7,'
      '    SUPPL_DATE_8 = :SUPPL_DATE_8,'
      '    SUPPL_DATE_9 = :SUPPL_DATE_9,'
      '    SUPPL_DATE_10 = :SUPPL_DATE_10,'
      '    SUPPL_DATE_11 = :SUPPL_DATE_11,'
      '    SUPPL_DATE_12 = :SUPPL_DATE_12,'
      '    SUPPL_DATE_13 = :SUPPL_DATE_13,'
      '    SUPPL_DATE_14 = :SUPPL_DATE_14,'
      '    SUPPL_DATE_15 = :SUPPL_DATE_15,'
      '    SUPPL_DATE_16 = :SUPPL_DATE_16,'
      '    SUPPL_DATE_17 = :SUPPL_DATE_17,'
      '    SUPPL_DATE_18 = :SUPPL_DATE_18,'
      '    SUPPL_DATE_19 = :SUPPL_DATE_19,'
      '    SUPPL_DATE_20 = :SUPPL_DATE_20,'
      '    PRICE_CATEGORY_ID = :PRICE_CATEGORY_ID,'
      '    USE_EXPORT = :USE_EXPORT,'
      '    FIXED_PRICE = :FIXED_PRICE,'
      '    WEIGHT = :WEIGHT,'
      '    UNIT = :UNIT,'
      '    ITEM_WEIGHT = :ITEM_WEIGHT'
      'WHERE'
      '    ID = :OLD_ID'
      '')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    GOODS'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO GOODS('
      '    ID,'
      '    FULLNAME,'
      '    TYPE_ID,'
      '    FIRM_ID,'
      '    PRICE1,'
      '    PRICE2,'
      '    PRICE_SHOP,'
      '    PRICE_SHOP_LAST,'
      '    PRICE_SHOP2,'
      '    PRICE_SHOP2_LAST,'
      '    PRICE1_LAST,'
      '    PRICE2_LAST,'
      '    DATE_ADDED,'
      '    DATE_CHANGED,'
      '    DATE_SALED,'
      '    C0,'
      '    C1,'
      '    C2,'
      '    C3,'
      '    C4,'
      '    C5,'
      '    C6,'
      '    C7,'
      '    C8,'
      '    C9,'
      '    C10,'
      '    C11,'
      '    C12,'
      '    C13,'
      '    C14,'
      '    C15,'
      '    C16,'
      '    C17,'
      '    C18,'
      '    C19,'
      '    C20,'
      
        '    W0,W1,W2,W3,W4,W5,W6,W7,W8,W9,W10,W11,W12,W13,W14,W15,W16,W1' +
        '7,W18,W19,W20,'
      '    SELECTED,'
      '    DELETED,'
      '    ART_1,'
      '    ART_2,'
      '    ART_3,'
      '    ART_4,'
      '    ART_5,'
      '    ART_6,'
      '    ART_7,'
      '    ART_8,'
      '    ART_9,'
      '    ART_10,'
      '    ART_11,'
      '    ART_12,'
      '    ART_13,'
      '    ART_14,'
      '    ART_15,'
      '    ART_16,'
      '    ART_17,'
      '    ART_18,'
      '    ART_19,'
      '    ART_20,'
      '    AVAILABLE_1,'
      '    AVAILABLE_2,'
      '    AVAILABLE_3,'
      '    AVAILABLE_4,'
      '    AVAILABLE_5,'
      '    AVAILABLE_6,'
      '    AVAILABLE_7,'
      '    AVAILABLE_8,'
      '    AVAILABLE_9,'
      '    AVAILABLE_10,'
      '    AVAILABLE_11,'
      '    AVAILABLE_12,'
      '    AVAILABLE_13,'
      '    AVAILABLE_14,'
      '    AVAILABLE_15,'
      '    AVAILABLE_16,'
      '    AVAILABLE_17,'
      '    AVAILABLE_18,'
      '    AVAILABLE_19,'
      '    AVAILABLE_20,'
      '    SUPL_PRICE_1,'
      '    SUPL_PRICE_2,'
      '    SUPL_PRICE_3,'
      '    SUPL_PRICE_4,'
      '    SUPL_PRICE_5,'
      '    SUPL_PRICE_6,'
      '    SUPL_PRICE_7,'
      '    SUPL_PRICE_8,'
      '    SUPL_PRICE_9,'
      '    SUPL_PRICE_10,'
      '    SUPL_PRICE_11,'
      '    SUPL_PRICE_12,'
      '    SUPL_PRICE_13,'
      '    SUPL_PRICE_14,'
      '    SUPL_PRICE_15,'
      '    SUPL_PRICE_16,'
      '    SUPL_PRICE_17,'
      '    SUPL_PRICE_18,'
      '    SUPL_PRICE_19,'
      '    SUPL_PRICE_20,'
      '    SUPPL_DATE_1,'
      '    SUPPL_DATE_2,'
      '    SUPPL_DATE_3,'
      '    SUPPL_DATE_4,'
      '    SUPPL_DATE_5,'
      '    SUPPL_DATE_6,'
      '    SUPPL_DATE_7,'
      '    SUPPL_DATE_8,'
      '    SUPPL_DATE_9,'
      '    SUPPL_DATE_10,'
      '    SUPPL_DATE_11,'
      '    SUPPL_DATE_12,'
      '    SUPPL_DATE_13,'
      '    SUPPL_DATE_14,'
      '    SUPPL_DATE_15,'
      '    SUPPL_DATE_16,'
      '    SUPPL_DATE_17,'
      '    SUPPL_DATE_18,'
      '    SUPPL_DATE_19,'
      '    SUPPL_DATE_20,'
      '    PRICE_CATEGORY_ID,'
      '    USE_EXPORT,'
      '    FIXED_PRICE,'
      '    WEIGHT,'
      '    UNIT,'
      '    ITEM_WEIGHT'
      ')'
      'VALUES('
      '    :ID,'
      '    :FULLNAME,'
      '    :TYPE_ID,'
      '    :FIRM_ID,'
      '    :PRICE1,'
      '    :PRICE2,'
      '    :PRICE_SHOP,'
      '    :PRICE_SHOP_LAST,'
      '    :PRICE_SHOP2,'
      '    :PRICE_SHOP2_LAST,'
      '    :PRICE1_LAST,'
      '    :PRICE2_LAST,'
      '    :DATE_ADDED,'
      '    :DATE_CHANGED,'
      '    :DATE_SALED,'
      '    :C0,'
      '    :C1,'
      '    :C2,'
      '    :C3,'
      '    :C4,'
      '    :C5,'
      '    :C6,'
      '    :C7,'
      '    :C8,'
      '    :C9,'
      '    :C10,'
      '    :C11,'
      '    :C12,'
      '    :C13,'
      '    :C14,'
      '    :C15,'
      '    :C16,'
      '    :C17,'
      '    :C18,'
      '    :C19,'
      '    :C20,'
      
        '    :W0,:W1,:W2,:W3,:W4,:W5,:W6,:W7,:W8,:W9,:W10,:W11,:W12,:W13,' +
        ':W14,:W15,:W16,:W17,:W18,:W19,:W20,'
      '    :SELECTED,'
      '    :DELETED,'
      '    :ART_1,'
      '    :ART_2,'
      '    :ART_3,'
      '    :ART_4,'
      '    :ART_5,'
      '    :ART_6,'
      '    :ART_7,'
      '    :ART_8,'
      '    :ART_9,'
      '    :ART_10,'
      '    :ART_11,'
      '    :ART_12,'
      '    :ART_13,'
      '    :ART_14,'
      '    :ART_15,'
      '    :ART_16,'
      '    :ART_17,'
      '    :ART_18,'
      '    :ART_19,'
      '    :ART_20,'
      '    :AVAILABLE_1,'
      '    :AVAILABLE_2,'
      '    :AVAILABLE_3,'
      '    :AVAILABLE_4,'
      '    :AVAILABLE_5,'
      '    :AVAILABLE_6,'
      '    :AVAILABLE_7,'
      '    :AVAILABLE_8,'
      '    :AVAILABLE_9,'
      '    :AVAILABLE_10,'
      '    :AVAILABLE_11,'
      '    :AVAILABLE_12,'
      '    :AVAILABLE_13,'
      '    :AVAILABLE_14,'
      '    :AVAILABLE_15,'
      '    :AVAILABLE_16,'
      '    :AVAILABLE_17,'
      '    :AVAILABLE_18,'
      '    :AVAILABLE_19,'
      '    :AVAILABLE_20,'
      '    :SUPL_PRICE_1,'
      '    :SUPL_PRICE_2,'
      '    :SUPL_PRICE_3,'
      '    :SUPL_PRICE_4,'
      '    :SUPL_PRICE_5,'
      '    :SUPL_PRICE_6,'
      '    :SUPL_PRICE_7,'
      '    :SUPL_PRICE_8,'
      '    :SUPL_PRICE_9,'
      '    :SUPL_PRICE_10,'
      '    :SUPL_PRICE_11,'
      '    :SUPL_PRICE_12,'
      '    :SUPL_PRICE_13,'
      '    :SUPL_PRICE_14,'
      '    :SUPL_PRICE_15,'
      '    :SUPL_PRICE_16,'
      '    :SUPL_PRICE_17,'
      '    :SUPL_PRICE_18,'
      '    :SUPL_PRICE_19,'
      '    :SUPL_PRICE_20,'
      '    :SUPPL_DATE_1,'
      '    :SUPPL_DATE_2,'
      '    :SUPPL_DATE_3,'
      '    :SUPPL_DATE_4,'
      '    :SUPPL_DATE_5,'
      '    :SUPPL_DATE_6,'
      '    :SUPPL_DATE_7,'
      '    :SUPPL_DATE_8,'
      '    :SUPPL_DATE_9,'
      '    :SUPPL_DATE_10,'
      '    :SUPPL_DATE_11,'
      '    :SUPPL_DATE_12,'
      '    :SUPPL_DATE_13,'
      '    :SUPPL_DATE_14,'
      '    :SUPPL_DATE_15,'
      '    :SUPPL_DATE_16,'
      '    :SUPPL_DATE_17,'
      '    :SUPPL_DATE_18,'
      '    :SUPPL_DATE_19,'
      '    :SUPPL_DATE_20,'
      '    :PRICE_CATEGORY_ID,'
      '    :USE_EXPORT,'
      '    :FIXED_PRICE,'
      '    :WEIGHT,'
      '    :UNIT,'
      '    :ITEM_WEIGHT'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    FULLNAME,'
      '    TYPE_ID,'
      '    FIRM_ID,'
      '    PRICE1,'
      '    PRICE2,'
      '    PRICE_SHOP, PRICE_SHOP_LAST, PRICE_SHOP2, PRICE_SHOP2_LAST, '
      '    PRICE1_LAST, PRICE2_LAST,'
      '    DATE_ADDED, DATE_CHANGED,'
      '    DATE_SALED,'
      
        '    C0, C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C13, ' +
        'C14,C15, C16, C17, C18, C19, C20,'
      
        '    W0, W1, W2, W3, W4, W5, W6, W7, W8, W9, W10, W11, W12, W13, ' +
        'W14, W15, W16, W17, W18, W19, W20,'
      '    SELECTED,'
      '    DELETED,'
      
        '    ART_1, ART_2, ART_3, ART_4, ART_5, ART_6, ART_7, ART_8, ART_' +
        '9, ART_10, ART_11, ART_12, ART_13, ART_14, ART_15, ART_16, ART_1' +
        '7, ART_18, ART_19, ART_20,'
      
        '    AVAILABLE_1, AVAILABLE_2, AVAILABLE_3, AVAILABLE_4, AVAILABL' +
        'E_5, AVAILABLE_6, AVAILABLE_7, AVAILABLE_8, AVAILABLE_9, AVAILAB' +
        'LE_10, AVAILABLE_11, AVAILABLE_12, AVAILABLE_13, AVAILABLE_14, A' +
        'VAILABLE_15, AVAILABLE_16, AVAILABLE_17, AVAILABLE_18, AVAILABLE' +
        '_19, AVAILABLE_20,'
      
        '    SUPL_PRICE_1, SUPL_PRICE_2, SUPL_PRICE_3, SUPL_PRICE_4, SUPL' +
        '_PRICE_5, SUPL_PRICE_6, SUPL_PRICE_7, SUPL_PRICE_8, SUPL_PRICE_9' +
        ', SUPL_PRICE_10, SUPL_PRICE_11, SUPL_PRICE_12, SUPL_PRICE_13, SU' +
        'PL_PRICE_14, SUPL_PRICE_15, SUPL_PRICE_16, SUPL_PRICE_17, SUPL_P' +
        'RICE_18, SUPL_PRICE_19, SUPL_PRICE_20,'
      
        '    SUPPL_DATE_1, SUPPL_DATE_2, SUPPL_DATE_3, SUPPL_DATE_4, SUPP' +
        'L_DATE_5, SUPPL_DATE_6, SUPPL_DATE_7, SUPPL_DATE_8, SUPPL_DATE_9' +
        ', SUPPL_DATE_10, SUPPL_DATE_11, SUPPL_DATE_12, SUPPL_DATE_13, SU' +
        'PPL_DATE_14, SUPPL_DATE_15, SUPPL_DATE_16, SUPPL_DATE_17, SUPPL_' +
        'DATE_18,SUPPL_DATE_19,SUPPL_DATE_20,'
      '    PRICE_CATEGORY_ID,'
      '    USE_EXPORT,'
      '    FIXED_PRICE,'
      '    WEIGHT,'
      '    UNIT,'
      '    ITEM_WEIGHT,'
      '    CNT_ALL,'
      '    WEIGHT_ALL,'
      '    TOTAL_WEIGHT'
      'FROM'
      '    GOODS '
      ' WHERE '
      '    GOODS.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    FULLNAME,'
      '    TYPE_ID,'
      '    FIRM_ID,'
      '    PRICE1,'
      '    PRICE2,'
      '    PRICE_SHOP, PRICE_SHOP_LAST, PRICE_SHOP2, PRICE_SHOP2_LAST, '
      '    PRICE1_LAST, PRICE2_LAST,'
      '    DATE_ADDED, DATE_CHANGED,'
      '    DATE_SALED,'
      
        '    C0, C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C13, ' +
        'C14,C15, C16, C17, C18, C19, C20,'
      
        '    W0, W1, W2, W3, W4, W5, W6, W7, W8, W9, W10, W11, W12, W13, ' +
        'W14, W15, W16, W17, W18, W19, W20,'
      '    SELECTED,'
      '    DELETED,'
      
        '    ART_1, ART_2, ART_3, ART_4, ART_5, ART_6, ART_7, ART_8, ART_' +
        '9, ART_10, ART_11, ART_12, ART_13, ART_14, ART_15, ART_16, ART_1' +
        '7, ART_18, ART_19, ART_20,'
      
        '    AVAILABLE_1, AVAILABLE_2, AVAILABLE_3, AVAILABLE_4, AVAILABL' +
        'E_5, AVAILABLE_6, AVAILABLE_7, AVAILABLE_8, AVAILABLE_9, AVAILAB' +
        'LE_10, AVAILABLE_11, AVAILABLE_12, AVAILABLE_13, AVAILABLE_14, A' +
        'VAILABLE_15, AVAILABLE_16, AVAILABLE_17, AVAILABLE_18, AVAILABLE' +
        '_19, AVAILABLE_20,'
      
        '    SUPL_PRICE_1, SUPL_PRICE_2, SUPL_PRICE_3, SUPL_PRICE_4, SUPL' +
        '_PRICE_5, SUPL_PRICE_6, SUPL_PRICE_7, SUPL_PRICE_8, SUPL_PRICE_9' +
        ', SUPL_PRICE_10, SUPL_PRICE_11, SUPL_PRICE_12, SUPL_PRICE_13, SU' +
        'PL_PRICE_14, SUPL_PRICE_15, SUPL_PRICE_16, SUPL_PRICE_17, SUPL_P' +
        'RICE_18, SUPL_PRICE_19, SUPL_PRICE_20,'
      
        '    SUPPL_DATE_1, SUPPL_DATE_2, SUPPL_DATE_3, SUPPL_DATE_4, SUPP' +
        'L_DATE_5, SUPPL_DATE_6, SUPPL_DATE_7, SUPPL_DATE_8, SUPPL_DATE_9' +
        ', SUPPL_DATE_10, SUPPL_DATE_11, SUPPL_DATE_12, SUPPL_DATE_13, SU' +
        'PPL_DATE_14, SUPPL_DATE_15, SUPPL_DATE_16, SUPPL_DATE_17, SUPPL_' +
        'DATE_18,SUPPL_DATE_19,SUPPL_DATE_20,'
      '    PRICE_CATEGORY_ID,'
      '    USE_EXPORT,'
      '    FIXED_PRICE,'
      '    WEIGHT,'
      '    UNIT,'
      '    ITEM_WEIGHT,'
      '    CNT_ALL,'
      '    WEIGHT_ALL,'
      '    TOTAL_WEIGHT'
      'FROM'
      '    GOODS '
      'ORDER BY '
      '    FULLNAME')
    FilterOptions = [foCaseInsensitive]
    AutoUpdateOptions.UpdateTableName = 'GOODS'
    AutoUpdateOptions.GeneratorName = 'GOODS_ID_GEN'
    Transaction = TRead_Goods
    Database = Database
    UpdateTransaction = TWrite_Goods
    AutoCommit = True
    Left = 32
    Top = 240
    poSQLINT64ToBCD = True
  end
  object TRead_Goods: TpFIBTransaction
    Active = True
    DefaultDatabase = Database
    Left = 32
    Top = 336
  end
  object TWrite_Goods: TpFIBTransaction
    DefaultDatabase = Database
    Left = 32
    Top = 384
  end
  object S_Arrival: TDataSource
    DataSet = DS_Arrival
    Left = 117
    Top = 56
  end
  object DS_Arrival: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE ARRIVAL'
      'SET '
      '    "NAKL_ID" = :"MAS_ID",'
      '    "GOOD_ID" = :"GOOD_ID",'
      '    "CNT" = :"CNT",'
      '    "PRICE" = :"PRICE",'
      '    "SUM_REAL" = :"SUM_REAL",'
      '    "WEIGHT_TOTAL" = :"WEIGHT_TOTAL"'
      'WHERE'
      '    "ID" = :"OLD_ID"'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    ARRIVAL'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO ARRIVAL('
      '    "ID",'
      '    "NAKL_ID",'
      '    "GOOD_ID",'
      '    "CNT",'
      '    "PRICE",'
      '    "SUM_REAL",'
      '    "WEIGHT_TOTAL"'
      ')'
      'VALUES('
      '    :"ID",'
      '    :"MAS_ID",'
      '    :"GOOD_ID",'
      '    :"CNT",'
      '    :"PRICE",'
      '    :"SUM_REAL",'
      '    :"WEIGHT_TOTAL"'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '  a.ID,'
      '  a.NAKL_ID,'
      '  a.GOOD_ID,'
      '  g.fullname as name,'
      
        '  g.PRICE1 / IIF(a.PRICE = 0, 0.00000001, a.PRICE) * 100 - 100 a' +
        's PRC,'
      '  IIF(a.GOOD_ID IS NULL, '#39#39', IIF(g.UNIT=0, '#39#1096#1090'.'#39', '#39#1082#1075'.'#39')) UNIT,'
      '  g.unit as UNIT_ID,'
      '  a.CNT,'
      '  a.PRICE,'
      '  a.SUMM,'
      '  a.SUM_REAL,'
      '  a.WEIGHT_TOTAL'
      'FROM ARRIVAL a'
      'JOIN GOODS g on a.good_id = g.id'
      'WHERE'
      '  ("NAKL_ID" = :"ID") and'
      '  (a.ID = :OLD_ID)')
    SelectSQL.Strings = (
      'SELECT'
      '  a.ID,'
      '  a.NAKL_ID,'
      '  a.GOOD_ID,'
      '  g.fullname as name,'
      
        '  g.PRICE1 / IIF(a.PRICE = 0, 0.00000001, a.PRICE) * 100 - 100 a' +
        's PRC,'
      '  IIF(a.GOOD_ID IS NULL, '#39#39', IIF(g.UNIT=0, '#39#1096#1090'.'#39', '#39#1082#1075'.'#39')) UNIT,'
      '  g.unit as UNIT_ID,'
      '  a.CNT,'
      '  a.PRICE,'
      '  a.SUMM,'
      '  a.SUM_REAL,'
      '  a.WEIGHT_TOTAL'
      'FROM ARRIVAL a'
      'JOIN GOODS g on a.good_id = g.id'
      'WHERE'
      '  ("NAKL_ID" = :"ID")')
    AutoUpdateOptions.UpdateTableName = 'ARRIVAL'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'ARRIVAL_ID_GEN'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AfterDelete = DS_ArrivalAfterDelete
    AfterPost = DS_ArrivalAfterPost
    Transaction = TRead_Arrival
    Database = Database
    UpdateTransaction = TWrite_Arrival
    AutoCommit = True
    DataSource = S_Arrival_N
    Left = 117
    Top = 8
    poSQLINT64ToBCD = True
  end
  object TRead_Arrival: TpFIBTransaction
    Active = True
    DefaultDatabase = Database
    Left = 114
    Top = 104
  end
  object TWrite_Arrival: TpFIBTransaction
    DefaultDatabase = Database
    Left = 114
    Top = 152
  end
  object DS_Arrival_N: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE ARRIVAL_N'
      'SET '
      '    COMMENTS = :COMMENTS,'
      '    A_TYPE = :A_TYPE,'
      '    CUST_ID = :CUST_ID,'
      '    DEPOT_ID = :DEPOT_ID,'
      '    CURR_ID = :CURR_ID,'
      '    ENTERED = :ENTERED,'
      '    IS_NEW = :IS_NEW,'
      '    USERID = :USERID,'
      '    EUSERID = :EUSERID,'
      '    CHANGED = :CHANGED,'
      '    CURS = :CURS'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    ARRIVAL_N'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO ARRIVAL_N('
      '    ID,'
      '    COMMENTS,'
      '    A_TYPE,'
      '    CUST_ID,'
      '    DEPOT_ID,'
      '    CURR_ID,'
      '    ENTERED,'
      '    IS_NEW,'
      '    USERID,'
      '    EUSERID,'
      '    CHANGED,'
      '    CURS'
      ')'
      'VALUES('
      '    :ID,'
      '    :COMMENTS,'
      '    :A_TYPE,'
      '    :CUST_ID,'
      '    :DEPOT_ID,'
      '    :CURR_ID,'
      '    :ENTERED,'
      '    :IS_NEW,'
      '    :USERID,'
      '    :EUSERID,'
      '    :CHANGED,'
      '    :CURS'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      ' ID,'
      ' COMMENTS,'
      ' SUMM,'
      ' A_TYPE,'
      ' A_DATE,'
      ' DEPOT_ID,'
      ' CUST_ID,'
      ' CURR_ID,'
      ' ENTERED,'
      ' CNT,'
      ' IS_NEW,'
      ' USERID,EUSERID,'
      ' CHANGED, CURS, SUM_TOTAL, SUM_REAL,'
      
        ' (SELECT ID FROM USERS WHERE (CURRENT_DOC = 1) AND (CURRENT_DOC_' +
        'ID = ARRIVAL_N.ID) ROWS 1) EDITINGBY,'
      
        ' (SELECT NAME FROM CURRENCY WHERE CURR_ID = CURRENCY.ID) CURRENC' +
        'Y,'
      
        ' (SELECT PREFIX1 FROM CURRENCY WHERE CURR_ID = CURRENCY.ID) CURR' +
        '_PREFIX,'
      ' (SELECT NAME FROM DEPOTS WHERE DEPOT_ID = DEPOTS.ID) DEPOT,'
      
        ' (SELECT NAME FROM CUSTOMERS WHERE CUST_ID = CUSTOMERS.ID) CLIEN' +
        'T,'
      
        ' (SELECT PRINTNAME FROM CUSTOMERS WHERE CUST_ID = CUSTOMERS.ID) ' +
        'CLIENT_PRINT,'
      ' (SELECT USERNAME FROM USERS WHERE USERID = USERS.ID) USERNAME,'
      ' (SELECT USERNAME FROM USERS WHERE EUSERID = USERS.ID) EUSERNAME'
      ''
      ''
      'FROM'
      '  ARRIVAL_N'
      'WHERE'
      '  ARRIVAL_N.ID = :OLD_ID'
      '')
    SelectSQL.Strings = (
      'SELECT'
      ' ID,'
      ' COMMENTS,'
      ' SUMM,'
      ' A_TYPE,'
      ' A_DATE,'
      ' DEPOT_ID,'
      ' CUST_ID,'
      ' CURR_ID,'
      ' ENTERED,'
      ' CNT,'
      ' IS_NEW,'
      ' USERID,EUSERID,'
      ' CHANGED, CURS, SUM_TOTAL, SUM_REAL,'
      
        ' (SELECT ID FROM USERS WHERE (CURRENT_DOC = 1) AND (CURRENT_DOC_' +
        'ID = ARRIVAL_N.ID) ROWS 1) EDITINGBY,'
      
        ' (SELECT NAME FROM CURRENCY WHERE CURR_ID = CURRENCY.ID) CURRENC' +
        'Y,'
      
        ' (SELECT PREFIX1 FROM CURRENCY WHERE CURR_ID = CURRENCY.ID) CURR' +
        '_PREFIX,'
      ' (SELECT NAME FROM DEPOTS WHERE DEPOT_ID = DEPOTS.ID) DEPOT,'
      
        ' (SELECT NAME FROM CUSTOMERS WHERE CUST_ID = CUSTOMERS.ID) CLIEN' +
        'T,'
      
        ' (SELECT PRINTNAME FROM CUSTOMERS WHERE CUST_ID = CUSTOMERS.ID) ' +
        'CLIENT_PRINT,'
      ' (SELECT USERNAME FROM USERS WHERE USERID = USERS.ID) USERNAME,'
      ' (SELECT USERNAME FROM USERS WHERE EUSERID = USERS.ID) EUSERNAME'
      ''
      'FROM'
      ' ARRIVAL_N'
      ''
      'WHERE'
      ' ENTERED = 0'
      ''
      'ORDER BY'
      ' A_DATE')
    AutoUpdateOptions.UpdateTableName = 'ARRIVAL_N'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'ARRIVAL_N_ID_GEN'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AfterEdit = AfterEdit
    AfterInsert = AfterInsert
    Transaction = TRead_Arrival_N
    Database = Database
    UpdateTransaction = TWrite_Arrival_N
    AutoCommit = True
    Left = 32
    Top = 8
    poSQLINT64ToBCD = True
    object DS_Arrival_NID: TFIBIntegerField
      FieldName = 'ID'
    end
    object DS_Arrival_NCOMMENTS: TFIBStringField
      FieldName = 'COMMENTS'
      Size = 255
      EmptyStrToNull = True
    end
    object DS_Arrival_NSUMM: TFIBFloatField
      FieldName = 'SUMM'
      DisplayFormat = '0.00'
    end
    object DS_Arrival_NA_TYPE: TFIBSmallIntField
      FieldName = 'A_TYPE'
    end
    object DS_Arrival_NA_DATE: TFIBDateTimeField
      FieldName = 'A_DATE'
    end
    object DS_Arrival_NDEPOT_ID: TFIBSmallIntField
      FieldName = 'DEPOT_ID'
    end
    object DS_Arrival_NCUST_ID: TFIBSmallIntField
      FieldName = 'CUST_ID'
    end
    object DS_Arrival_NCURR_ID: TFIBIntegerField
      FieldName = 'CURR_ID'
    end
    object DS_Arrival_NENTERED: TFIBBooleanField
      FieldName = 'ENTERED'
    end
    object DS_Arrival_NCNT: TFIBFloatField
      FieldName = 'CNT'
    end
    object DS_Arrival_NIS_NEW: TFIBBooleanField
      FieldName = 'IS_NEW'
    end
    object DS_Arrival_NUSERID: TFIBSmallIntField
      FieldName = 'USERID'
    end
    object DS_Arrival_NEUSERID: TFIBSmallIntField
      FieldName = 'EUSERID'
    end
    object DS_Arrival_NCHANGED: TFIBDateTimeField
      FieldName = 'CHANGED'
    end
    object DS_Arrival_NCURS: TFIBFloatField
      FieldName = 'CURS'
    end
    object DS_Arrival_NSUM_TOTAL: TFIBFloatField
      FieldName = 'SUM_TOTAL'
      DisplayFormat = '0.00'
    end
    object DS_Arrival_NEDITINGBY: TFIBIntegerField
      FieldName = 'EDITINGBY'
    end
    object DS_Arrival_NCURRENCY: TFIBStringField
      FieldName = 'CURRENCY'
      Size = 3
      EmptyStrToNull = True
    end
    object DS_Arrival_NCURR_PREFIX: TFIBStringField
      FieldName = 'CURR_PREFIX'
      Size = 255
      EmptyStrToNull = True
    end
    object DS_Arrival_NDEPOT: TFIBStringField
      FieldName = 'DEPOT'
      Size = 255
      EmptyStrToNull = True
    end
    object DS_Arrival_NCLIENT: TFIBStringField
      FieldName = 'CLIENT'
      Size = 255
      EmptyStrToNull = True
    end
    object DS_Arrival_NCLIENT_PRINT: TFIBStringField
      FieldName = 'CLIENT_PRINT'
      Size = 255
      EmptyStrToNull = True
    end
    object DS_Arrival_NUSERNAME: TFIBStringField
      FieldName = 'USERNAME'
      Size = 255
      EmptyStrToNull = True
    end
    object DS_Arrival_NEUSERNAME: TFIBStringField
      FieldName = 'EUSERNAME'
      Size = 255
      EmptyStrToNull = True
    end
    object DS_Arrival_NSUM_REAL: TFIBFloatField
      FieldName = 'SUM_REAL'
      DisplayFormat = '0.00'
    end
  end
  object DS_Defaults: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE DEFAULTS'
      'SET '
      '    SUPPLIER = :SUPPLIER,'
      '    CURRENCY = :CURRENCY,'
      '    CUSTOMER = :CUSTOMER,'
      '    DEPOT = :DEPOT,'
      '    GOODTYPE = :GOODTYPE,'
      '    REALIZER = :REALIZER,'
      '    DEPOT_FROM = :DEPOT_FROM,'
      '    DEPOT_TO = :DEPOT_TO,'
      '    NEW_DAYS = :NEW_NEW_DAYS,'
      '    DISCOUNT = :DISCOUNT,'
      '    CURS = :CURS,'
      '    PRICE1_DISCOUNT = :PRICE1_DISCOUNT,'
      '    PRICE2_DISCOUNT = :PRICE2_DISCOUNT,'
      '    LAST_SYS_DATE = :LAST_SYS_DATE,'
      '    SANAS_CURS = :SANAS_CURS,'
      '    SANAS_DOSTAVKA = :SANAS_DOSTAVKA,'
      '    PRICE_EXPORT_DISCOUNT = :PRICE_EXPORT_DISCOUNT')
    RefreshSQL.Strings = (
      'SELECT * FROM DEFAULTS')
    SelectSQL.Strings = (
      'SELECT * FROM DEFAULTS')
    Transaction = TRead_Defaults
    Database = Database
    UpdateTransaction = TWrite_Defaults
    AutoCommit = True
    Left = 117
    Top = 240
    poSQLINT64ToBCD = True
    object DS_DefaultsSUPPLIER: TFIBIntegerField
      FieldName = 'SUPPLIER'
    end
    object DS_DefaultsCURRENCY: TFIBIntegerField
      FieldName = 'CURRENCY'
    end
    object DS_DefaultsCUSTOMER: TFIBIntegerField
      FieldName = 'CUSTOMER'
    end
    object DS_DefaultsDEPOT: TFIBIntegerField
      FieldName = 'DEPOT'
    end
    object DS_DefaultsGOODTYPE: TFIBIntegerField
      FieldName = 'GOODTYPE'
    end
    object DS_DefaultsREALIZER: TFIBIntegerField
      FieldName = 'REALIZER'
    end
    object DS_DefaultsDEPOT_FROM: TFIBIntegerField
      FieldName = 'DEPOT_FROM'
    end
    object DS_DefaultsDEPOT_TO: TFIBIntegerField
      FieldName = 'DEPOT_TO'
    end
    object DS_DefaultsNEW_DAYS: TFIBIntegerField
      FieldName = 'NEW_DAYS'
    end
    object DS_DefaultsDISCOUNT: TFIBFloatField
      DefaultExpression = '0.0'
      FieldName = 'DISCOUNT'
    end
    object DS_DefaultsCURS: TFIBFloatField
      FieldName = 'CURS'
    end
    object DS_DefaultsPRICE1_DISCOUNT: TFIBFloatField
      DefaultExpression = '0.0'
      FieldName = 'PRICE1_DISCOUNT'
    end
    object DS_DefaultsPRICE2_DISCOUNT: TFIBFloatField
      DefaultExpression = '0.0'
      FieldName = 'PRICE2_DISCOUNT'
    end
    object DS_DefaultsLAST_SYS_DATE: TFIBDateTimeField
      FieldName = 'LAST_SYS_DATE'
    end
    object DS_DefaultsSANAS_CURS: TFIBFloatField
      FieldName = 'SANAS_CURS'
    end
    object DS_DefaultsSANAS_DOSTAVKA: TFIBFloatField
      FieldName = 'SANAS_DOSTAVKA'
    end
    object DS_DefaultsSANAS_DISCOUNT: TFIBSmallIntField
      FieldName = 'SANAS_DISCOUNT'
    end
    object DS_DefaultsPRICE_EXPORT_DISCOUNT: TFIBFloatField
      FieldName = 'PRICE_EXPORT_DISCOUNT'
    end
  end
  object TRead_Defaults: TpFIBTransaction
    DefaultDatabase = Database
    Left = 117
    Top = 336
  end
  object TWrite_Defaults: TpFIBTransaction
    DefaultDatabase = Database
    Left = 117
    Top = 384
  end
  object S_Defaults: TDataSource
    DataSet = DS_Defaults
    Left = 117
    Top = 288
  end
  object S_Sale_N: TDataSource
    DataSet = DS_Sale_N
    Left = 203
    Top = 288
  end
  object DS_Sale_N: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE SALE_N'
      'SET '
      '    COMMENTS = :COMMENTS,'
      '    CUST_ID = :CUST_ID,'
      '    ENTERED = :ENTERED,'
      '    CURR_ID = :CURR_ID,'
      '    PRICE_TYPE = :PRICE_TYPE,'
      '    PRINTED = :PRINTED,'
      '    SUMM_ARRIVAL = :SUMM_ARRIVAL,'
      '    DISCOUNT = :DISCOUNT,'
      '    CURS = :CURS,'
      '    USERID = :USERID,'
      '    EUSERID = :EUSERID'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    SALE_N'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO SALE_N('
      '    ID,'
      '    COMMENTS,'
      '    CUST_ID,'
      '    ENTERED,'
      '    CURR_ID,'
      '    PRICE_TYPE,'
      '    PRINTED,'
      '    SUMM_ARRIVAL,'
      '    DISCOUNT,'
      '    CURS,'
      '    USERID,'
      '    EUSERID'
      ')'
      'VALUES('
      '    :ID,'
      '    :COMMENTS,'
      '    :CUST_ID,'
      '    :ENTERED,'
      '    :CURR_ID,'
      '    :PRICE_TYPE,'
      '    :PRINTED,'
      '    :SUMM_ARRIVAL,'
      '    :DISCOUNT,'
      '    :CURS,'
      '    :USERID,'
      '    :EUSERID'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    sn.ID,'
      '    sn.COMMENTS,'
      '    sn.SUMM,'
      '    sn.S_DATE,'
      '    sn.CUST_ID,'
      '    sn.ENTERED,'
      '    sn.CNT,'
      '    sn.CURR_ID,'
      '    sn.PRICE_TYPE,'
      '    sn.PRINTED,'
      '    sn.SUMM_ARRIVAL,'
      '    sn.DISCOUNT,'
      '    sn.CURS,'
      '    sn.USERID,'
      '    sn.EUSERID,'
      '    sn.CHANGED,'
      '    sn.SUM_TOTAL, sn.SUM_REAL,'
      '    u.id as EDITINGBY,'
      
        '    (SELECT SUM(SUMM) FROM KASSA WHERE sn.ID = KASSA.NAKL_ID) PA' +
        'ID,'
      '    cr.name as CURRENCY,'
      '    cr.PREFIX1 as CURR_PREFIX,'
      '    c.NAME as CUSTOMER,'
      '    c.PRINTNAME as CUST_PRINT,'
      '    u1.USERNAME,'
      '    u2.USERNAME as EUSERNAME'
      'FROM sale_n sn'
      'JOIN currency cr ON sn.curr_id = cr.id'
      'JOIN customers c ON sn.cust_id = c.id '
      
        'LEFT JOIN users u ON sn.ID = u.current_doc_id AND u.current_doc ' +
        '= 0'
      'LEFT JOIN users u1 ON sn.USERID = u1.ID '
      'LEFT JOIN users u2 ON sn.EUSERID = u2.ID'
      'WHERE sn.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    sn.ID,'
      '    sn.COMMENTS,'
      '    sn.SUMM,'
      '    sn.S_DATE,'
      '    sn.CUST_ID,'
      '    sn.ENTERED,'
      '    sn.CNT,'
      '    sn.CURR_ID,'
      '    sn.PRICE_TYPE,'
      '    sn.PRINTED,'
      '    sn.SUMM_ARRIVAL,'
      '    sn.DISCOUNT,'
      '    sn.CURS,'
      '    sn.USERID,'
      '    sn.EUSERID,'
      '    sn.CHANGED,'
      '    sn.SUM_TOTAL, sn.SUM_REAL,'
      '    u.id as EDITINGBY,'
      
        '    (SELECT SUM(SUMM) FROM KASSA WHERE sn.ID = KASSA.NAKL_ID) PA' +
        'ID,'
      '    cr.name as CURRENCY,'
      '    cr.PREFIX1 as CURR_PREFIX,'
      '    c.NAME as CUSTOMER,'
      '    c.PRINTNAME as CUST_PRINT,'
      '    u1.USERNAME,'
      '    u2.USERNAME as EUSERNAME'
      'FROM sale_n sn'
      'JOIN currency cr ON sn.curr_id = cr.id'
      'JOIN customers c ON sn.cust_id = c.id '
      
        'LEFT JOIN users u ON sn.ID = u.current_doc_id AND u.current_doc ' +
        '= 0'
      'LEFT JOIN users u1 ON sn.USERID = u1.ID '
      'LEFT JOIN users u2 ON sn.EUSERID = u2.ID'
      'WHERE'
      '    sn.ENTERED = 0'
      ''
      ''
      'ORDER BY'
      '    sn.S_DATE;')
    AutoUpdateOptions.UpdateTableName = 'SALE_N'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'SALE_N_ID_GEN'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AfterEdit = AfterEdit
    AfterInsert = AfterInsert
    AfterRefresh = DS_Sale_NAfterRefresh
    Transaction = TRead_Sale_N
    Database = Database
    UpdateTransaction = TWrite_Sale_N
    AutoCommit = True
    Left = 203
    Top = 240
    poSQLINT64ToBCD = True
    object DS_Sale_NID: TFIBIntegerField
      FieldName = 'ID'
    end
    object DS_Sale_NCOMMENTS: TFIBStringField
      FieldName = 'COMMENTS'
      Size = 255
      EmptyStrToNull = True
    end
    object DS_Sale_NSUMM: TFIBFloatField
      DefaultExpression = '0.0'
      FieldName = 'SUMM'
      DisplayFormat = '0.00'
    end
    object DS_Sale_NS_DATE: TFIBDateTimeField
      DefaultExpression = 'NOW'
      FieldName = 'S_DATE'
      DisplayFormat = 'dd.mm.yyyy hh:nn'
    end
    object DS_Sale_NCUST_ID: TFIBSmallIntField
      FieldName = 'CUST_ID'
    end
    object DS_Sale_NENTERED: TFIBBooleanField
      DefaultExpression = 'False'
      FieldName = 'ENTERED'
    end
    object DS_Sale_NCNT: TFIBFloatField
      DefaultExpression = '0'
      FieldName = 'CNT'
      DisplayFormat = '0.000#'
    end
    object DS_Sale_NCURR_ID: TFIBSmallIntField
      DefaultExpression = '1'
      FieldName = 'CURR_ID'
    end
    object DS_Sale_NPRICE_TYPE: TFIBIntegerField
      DefaultExpression = '1'
      FieldName = 'PRICE_TYPE'
    end
    object DS_Sale_NPRINTED: TFIBIntegerField
      DefaultExpression = '0'
      FieldName = 'PRINTED'
    end
    object DS_Sale_NSUMM_ARRIVAL: TFIBFloatField
      FieldName = 'SUMM_ARRIVAL'
      DisplayFormat = '0.00##'
    end
    object DS_Sale_NDISCOUNT: TFIBFloatField
      DefaultExpression = '0.0'
      FieldName = 'DISCOUNT'
    end
    object DS_Sale_NCURS: TFIBFloatField
      DefaultExpression = '1.0'
      FieldName = 'CURS'
    end
    object DS_Sale_NUSERID: TFIBSmallIntField
      FieldName = 'USERID'
    end
    object DS_Sale_NEUSERID: TFIBSmallIntField
      FieldName = 'EUSERID'
    end
    object DS_Sale_NCHANGED: TFIBDateTimeField
      DefaultExpression = 'NOW'
      FieldName = 'CHANGED'
      DisplayFormat = 'dd.mm.yyyy hh:nn'
    end
    object DS_Sale_NSUM_TOTAL: TFIBFloatField
      FieldName = 'SUM_TOTAL'
      DisplayFormat = '0.00'
    end
    object DS_Sale_NEDITINGBY: TFIBIntegerField
      FieldName = 'EDITINGBY'
    end
    object DS_Sale_NPAID: TFIBFloatField
      FieldName = 'PAID'
    end
    object DS_Sale_NCURRENCY: TFIBStringField
      FieldName = 'CURRENCY'
      Size = 3
      EmptyStrToNull = True
    end
    object DS_Sale_NCURR_PREFIX: TFIBStringField
      FieldName = 'CURR_PREFIX'
      Size = 255
      EmptyStrToNull = True
    end
    object DS_Sale_NCUSTOMER: TFIBStringField
      FieldName = 'CUSTOMER'
      Size = 255
      EmptyStrToNull = True
    end
    object DS_Sale_NCUST_PRINT: TFIBStringField
      FieldName = 'CUST_PRINT'
      Size = 255
      EmptyStrToNull = True
    end
    object DS_Sale_NUSERNAME: TFIBStringField
      FieldName = 'USERNAME'
      Size = 255
      EmptyStrToNull = True
    end
    object DS_Sale_NEUSERNAME: TFIBStringField
      FieldName = 'EUSERNAME'
      Size = 255
      EmptyStrToNull = True
    end
    object DS_Sale_NSUM_REAL: TFIBFloatField
      FieldName = 'SUM_REAL'
      DisplayFormat = '0.00'
    end
  end
  object TRead_Sale_N: TpFIBTransaction
    Active = True
    DefaultDatabase = Database
    Left = 203
    Top = 336
  end
  object TWrite_Sale_N: TpFIBTransaction
    DefaultDatabase = Database
    Left = 203
    Top = 384
  end
  object S_Sale: TDataSource
    DataSet = DS_Sale
    Left = 289
    Top = 288
  end
  object DS_Sale: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE SALE'
      'SET '
      '    CNT = :CNT,'
      '    DEPOT_ID = :DEPOT_ID,'
      '    PRICE = :PRICE,'
      '    NAKL_ID = :MAS_ID,'
      '    GOOD_ID = :GOOD_ID,'
      '    PRICE_LAST_ARRIVAL = :PRICE_LAST_ARRIVAL,'
      '    SUM_REAL = :SUM_REAL,'
      '    WEIGHT_TOTAL = :WEIGHT_TOTAL'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    SALE'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO SALE('
      '    ID,'
      '    CNT,'
      '    DEPOT_ID,'
      '    PRICE,'
      '    NAKL_ID,'
      '    GOOD_ID,'
      '    PRICE_LAST_ARRIVAL,'
      '    SUM_REAL,'
      '    WEIGHT_TOTAL'
      ')'
      'VALUES('
      '    :ID,'
      '    :CNT,'
      '    :DEPOT_ID,'
      '    :PRICE,'
      '    :MAS_ID,'
      '    :GOOD_ID,'
      '    :PRICE_LAST_ARRIVAL,'
      '    :SUM_REAL,'
      '    :WEIGHT_TOTAL'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      
        '  S.ID, S.CNT, S.DEPOT_ID, S.PRICE, S.NAKL_ID, S.GOOD_ID, S.SUMM' +
        ','
      '  S.PRICE_LAST_ARRIVAL, S.SUMM_LAST_ARRIVAL,'
      '  D.NAME AS DEPOT,'
      '  G.FULLNAME AS NAME,'
      
        '  IIF(GOOD_ID IS NULL, '#39#39', IIF((SELECT UNIT FROM GOODS WHERE GOO' +
        'D_ID = GOODS.ID)=0, '#39#1096#1090'.'#39', '#39#1082#1075'.'#39')) UNIT,'
      '  (SELECT UNIT FROM GOODS WHERE GOOD_ID = GOODS.ID) UNIT_ID,'
      '  (SELECT ROUND(A.PRICE / AN.CURS, 2)'
      '   FROM ARRIVAL A, ARRIVAL_N AN, SALE_N SN'
      '   WHERE'
      '     (AN.A_DATE < SN.S_DATE) AND'
      '     (A.GOOD_ID = S.GOOD_ID) AND'
      '     (AN.ID = A.NAKL_ID) AND'
      '     (SN.ID = S.NAKL_ID)'
      '   ORDER BY AN.A_DATE DESC ROWS 1) AS LAST_AR_PRICE,'
      '  S.WEIGHT_TOTAL, S.SUM_REAL'
      'FROM SALE S, DEPOTS D, GOODS G'
      'WHERE'
      '  (S.NAKL_ID = :ID) AND'
      '  (D.ID = S.DEPOT_ID) AND'
      '  (G.ID = S.GOOD_ID) AND'
      '  (S.ID = :OLD_ID)')
    SelectSQL.Strings = (
      'SELECT'
      
        '  S.ID, S.CNT, S.DEPOT_ID, S.PRICE, S.NAKL_ID, S.GOOD_ID, S.SUMM' +
        ','
      '  S.PRICE_LAST_ARRIVAL, S.SUMM_LAST_ARRIVAL,'
      '  D.NAME AS DEPOT,'
      '  G.FULLNAME AS NAME,'
      
        '  IIF(GOOD_ID IS NULL, '#39#39', IIF((SELECT UNIT FROM GOODS WHERE GOO' +
        'D_ID = GOODS.ID)=0, '#39#1096#1090'.'#39', '#39#1082#1075'.'#39')) UNIT,'
      '  (SELECT UNIT FROM GOODS WHERE GOOD_ID = GOODS.ID) UNIT_ID,'
      '  (SELECT ROUND(A.PRICE / AN.CURS, 2)'
      '   FROM ARRIVAL A, ARRIVAL_N AN, SALE_N SN'
      '   WHERE'
      '     (AN.A_DATE < SN.S_DATE) AND'
      '     (A.GOOD_ID = S.GOOD_ID) AND'
      '     (AN.ID = A.NAKL_ID) AND'
      '     (SN.ID = S.NAKL_ID)'
      '   ORDER BY AN.A_DATE DESC ROWS 1) AS LAST_AR_PRICE,'
      '  S.WEIGHT_TOTAL, S.SUM_REAL'
      'FROM SALE S, DEPOTS D, GOODS G'
      'WHERE'
      '  (S.NAKL_ID = :ID) AND'
      '  (D.ID = S.DEPOT_ID) AND'
      '  (G.ID = S.GOOD_ID)'
      'ORDER BY S.ID')
    AutoUpdateOptions.UpdateTableName = 'SALE'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'SALE_ID_GEN'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AfterDelete = DS_SaleAfterDelete
    AfterPost = DS_SaleAfterPost
    OnNewRecord = DS_SaleNewRecord
    Transaction = TRead_Sale
    Database = Database
    UpdateTransaction = TWrite_Sale
    AutoCommit = True
    DataSource = S_Sale_N
    Left = 289
    Top = 240
    poSQLINT64ToBCD = True
  end
  object TRead_Sale: TpFIBTransaction
    Active = True
    DefaultDatabase = Database
    Left = 289
    Top = 336
  end
  object TWrite_Sale: TpFIBTransaction
    DefaultDatabase = Database
    Left = 289
    Top = 384
  end
  object S_Moves_N: TDataSource
    DataSet = DS_Moves_N
    Left = 375
    Top = 288
  end
  object S_Moves: TDataSource
    DataSet = DS_Moves
    Left = 461
    Top = 288
  end
  object DS_Moves_N: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE DEPOT_MOVES_N'
      'SET '
      '    DEPOT_TO_ID = :DEPOT_TO_ID,'
      '    COMMENTS = :COMMENTS,'
      '    DEPOT_FROM_ID = :DEPOT_FROM_ID,'
      '    ENTERED = :ENTERED,'
      '    PRINTED = :PRINTED,'
      '    USERID = :USERID,'
      '    EUSERID = :EUSERID,'
      '    CHANGED = :CHANGED'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    DEPOT_MOVES_N'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO DEPOT_MOVES_N('
      '    ID,'
      '    DEPOT_TO_ID,'
      '    COMMENTS,'
      '    DEPOT_FROM_ID,'
      '    ENTERED,'
      '    PRINTED,'
      '    USERID,'
      '    EUSERID,'
      '    CHANGED'
      ')'
      'VALUES('
      '    :ID,'
      '    :DEPOT_TO_ID,'
      '    :COMMENTS,'
      '    :DEPOT_FROM_ID,'
      '    :ENTERED,'
      '    :PRINTED,'
      '    :USERID,'
      '    :EUSERID,'
      '    :CHANGED'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    DEPOT_TO_ID,'
      '    COMMENTS,'
      '    DEPOT_FROM_ID,'
      '    ENTERED,'
      '    M_DATE,'
      '    CNT, PRINTED, USERID, EUSERID, CHANGED,'
      
        '    (SELECT ID FROM USERS WHERE (CURRENT_DOC = 2) AND (CURRENT_D' +
        'OC_ID = DEPOT_MOVES_N.ID) ROWS 1) EDITINGBY,'
      
        '    (SELECT NAME FROM DEPOTS WHERE DEPOT_TO_ID = DEPOTS.ID) DEPO' +
        'T_TO,'
      
        '    (SELECT NAME FROM DEPOTS WHERE DEPOT_FROM_ID = DEPOTS.ID) DE' +
        'POT_FROM,'
      
        '    (SELECT USERNAME FROM USERS WHERE USERID = USERS.ID) USERNAM' +
        'E,'
      
        '    (SELECT USERNAME FROM USERS WHERE EUSERID = USERS.ID) EUSERN' +
        'AME    '
      'FROM'
      '    DEPOT_MOVES_N '
      ' WHERE '
      '        DEPOT_MOVES_N.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    DEPOT_TO_ID,'
      '    COMMENTS,'
      '    DEPOT_FROM_ID,'
      '    ENTERED,'
      '    M_DATE,'
      '    CNT, PRINTED, USERID, EUSERID, CHANGED,'
      
        '    (SELECT ID FROM USERS WHERE (CURRENT_DOC = 2) AND (CURRENT_D' +
        'OC_ID = DEPOT_MOVES_N.ID) ROWS 1) EDITINGBY,'
      
        '    (SELECT NAME FROM DEPOTS WHERE DEPOT_TO_ID = DEPOTS.ID) DEPO' +
        'T_TO,'
      
        '    (SELECT NAME FROM DEPOTS WHERE DEPOT_FROM_ID = DEPOTS.ID) DE' +
        'POT_FROM,'
      
        '    (SELECT USERNAME FROM USERS WHERE USERID = USERS.ID) USERNAM' +
        'E,'
      
        '    (SELECT USERNAME FROM USERS WHERE EUSERID = USERS.ID) EUSERN' +
        'AME'
      'FROM'
      '    DEPOT_MOVES_N '
      'WHERE'
      '    ENTERED = 0'
      'ORDER BY'
      '    M_DATE')
    AutoUpdateOptions.UpdateTableName = 'DEPOT_MOVES_N'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'DEPOT_MOVES_N_ID_GEN'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AfterEdit = AfterEdit
    AfterInsert = AfterInsert
    Transaction = TRead_Moves_N
    Database = Database
    UpdateTransaction = TWrite_Moves_N
    AutoCommit = True
    Left = 375
    Top = 240
    poSQLINT64ToBCD = True
  end
  object DS_Moves: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE DEPOT_MOVES'
      'SET '
      '    CNT = :CNT,'
      '    NAKL_ID = :MAS_ID,'
      '    GOOD_ID = :GOOD_ID,'
      '    WEIGHT_TOTAL = :WEIGHT_TOTAL'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    DEPOT_MOVES'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO DEPOT_MOVES('
      '    ID,'
      '    CNT,'
      '    NAKL_ID,'
      '    GOOD_ID,'
      '    WEIGHT_TOTAL'
      ')'
      'VALUES('
      '    :ID,'
      '    :CNT,'
      '    :MAS_ID,'
      '    :GOOD_ID,'
      '    :WEIGHT_TOTAL'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    m.id,'
      '    m.cnt,'
      '    m.nakl_id,'
      '    m.good_id,'
      '    g.fullname AS name,'
      
        '    IIF(m.good_id IS NULL, '#39#39', IIF(g.unit = 0, '#39#1096#1090'.'#39', '#39#1082#1075'.'#39')) AS' +
        ' unit,'
      '    g.unit AS unit_id,'
      '    g.price1,'
      '    g.date_changed,'
      '    m.weight_total'
      'FROM depot_moves m'
      'JOIN goods g ON g.id = m.good_id'
      'WHERE nakl_id = :id AND  m.id = :old_id')
    SelectSQL.Strings = (
      'SELECT'
      '    m.id,'
      '    m.cnt,'
      '    m.nakl_id,'
      '    m.good_id,'
      '    g.fullname AS name,'
      
        '    IIF(m.good_id IS NULL, '#39#39', IIF(g.unit = 0, '#39#1096#1090'.'#39', '#39#1082#1075'.'#39')) AS' +
        ' unit,'
      '    g.unit AS unit_id,'
      '    g.price1,'
      '    g.date_changed,'
      '    m.weight_total'
      'FROM depot_moves m'
      'JOIN goods g ON g.id = m.good_id'
      'WHERE '
      '    nakl_id = :id')
    AutoUpdateOptions.UpdateTableName = 'DEPOT_MOVES'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'DEPOT_MOVES_ID_GEN'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AfterDelete = DS_MovesAfterDelete
    AfterPost = DS_MovesAfterPost
    Transaction = TRead_Moves
    Database = Database
    UpdateTransaction = TWrite_Moves
    AutoCommit = True
    DataSource = S_Moves_N
    Left = 461
    Top = 240
    poSQLINT64ToBCD = True
  end
  object TRead_Moves_N: TpFIBTransaction
    Active = True
    DefaultDatabase = Database
    Left = 375
    Top = 336
  end
  object TWrite_Moves_N: TpFIBTransaction
    DefaultDatabase = Database
    Left = 375
    Top = 384
  end
  object TRead_Moves: TpFIBTransaction
    Active = True
    DefaultDatabase = Database
    Left = 461
    Top = 336
  end
  object TWrite_Moves: TpFIBTransaction
    DefaultDatabase = Database
    Left = 461
    Top = 384
  end
  object S_Return_Suppl: TDataSource
    DataSet = DS_Return_Suppl
    Left = 632
    Top = 288
  end
  object DS_Return_Suppl: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE RETURN_SUPPL'
      'SET '
      '    GOOD_ID = :GOOD_ID,'
      '    NAKL_ID = :MAS_ID,'
      '    CNT = :CNT,'
      '    PRICE = :PRICE,'
      '    DEPOT_ID = :DEPOT_ID,'
      '    SUM_REAL = :SUM_REAL,'
      '    WEIGHT_TOTAL = :WEIGHT_TOTAL'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    RETURN_SUPPL'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO RETURN_SUPPL('
      '    ID,'
      '    GOOD_ID,'
      '    NAKL_ID,'
      '    CNT,'
      '    PRICE,'
      '    DEPOT_ID,'
      '    SUM_REAL,'
      '    WEIGHT_TOTAL'
      ')'
      'VALUES('
      '    :ID,'
      '    :GOOD_ID,'
      '    :MAS_ID,'
      '    :CNT,'
      '    :PRICE,'
      '    :DEPOT_ID,'
      '    :SUM_REAL,'
      '    :WEIGHT_TOTAL'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '   R.ID,'
      '   R.GOOD_ID,'
      '   R.NAKL_ID,'
      '   R.CNT,'
      '   R.PRICE,'
      '   R.SUMM,'
      '   R.DEPOT_ID,'
      '   G.FULLNAME AS NAME,'
      '   D.NAME AS DEPOT,'
      
        '   IIF(R.GOOD_ID IS NULL, '#39#39', IIF(G.UNIT = 0, '#39#1096#1090'.'#39', '#39#1082#1075'.'#39')) AS ' +
        'UNIT,'
      '   G.UNIT AS UNIT_ID,'
      '   R.SUM_REAL,'
      '   R.WEIGHT_TOTAL'
      'FROM RETURN_SUPPL R'
      'JOIN GOODS G ON G.ID = R.GOOD_ID'
      'LEFT JOIN DEPOTS D ON R.DEPOT_ID = D.ID'
      'WHERE NAKL_ID = :ID AND R.ID = :OLD_ID')
    SelectSQL.Strings = (
      'SELECT'
      '   R.ID,'
      '   R.GOOD_ID,'
      '   R.NAKL_ID,'
      '   R.CNT,'
      '   R.PRICE,'
      '   R.SUMM,'
      '   R.DEPOT_ID,'
      '   G.FULLNAME AS NAME,'
      '   D.NAME AS DEPOT,'
      
        '   IIF(R.GOOD_ID IS NULL, '#39#39', IIF(G.UNIT = 0, '#39#1096#1090'.'#39', '#39#1082#1075'.'#39')) AS ' +
        'UNIT,'
      '   G.UNIT AS UNIT_ID,'
      '   R.SUM_REAL,'
      '   R.WEIGHT_TOTAL'
      'FROM RETURN_SUPPL R'
      'JOIN GOODS G ON G.ID = R.GOOD_ID'
      'LEFT JOIN DEPOTS D ON R.DEPOT_ID = D.ID'
      'WHERE NAKL_ID = :ID')
    AutoUpdateOptions.UpdateTableName = 'RETURN_SUPPL'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'RETURN_SUPPL_ID_GEN'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AfterDelete = DS_Return_SupplAfterDelete
    AfterPost = DS_Return_SupplAfterPost
    OnNewRecord = DS_Return_SupplNewRecord
    Transaction = TRead_Return_Suppl
    Database = Database
    UpdateTransaction = TWrite_Return_Suppl
    AutoCommit = True
    DataSource = S_Return_Suppl_N
    Left = 632
    Top = 240
    poSQLINT64ToBCD = True
  end
  object TRead_Return_Suppl: TpFIBTransaction
    Active = True
    DefaultDatabase = Database
    Left = 632
    Top = 336
  end
  object TWrite_Return_Suppl: TpFIBTransaction
    DefaultDatabase = Database
    Left = 632
    Top = 384
  end
  object S_Return_Suppl_N: TDataSource
    DataSet = DS_Return_Suppl_N
    Left = 546
    Top = 288
  end
  object DS_Return_Suppl_N: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE RETURN_SUPPL_N'
      'SET '
      '    CUST_ID = :CUST_ID,'
      '    COMMENTS = :COMMENTS,'
      '    CURR_ID = :CURR_ID,'
      '    ENTERED = :ENTERED,'
      '    USERID = :USERID, '
      '    EUSERID = :EUSERID,'
      '    CHANGED = :CHANGED,'
      '    CURS = :CURS'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    RETURN_SUPPL_N'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO RETURN_SUPPL_N('
      '    ID,'
      '    CUST_ID,'
      '    COMMENTS,'
      '    CURR_ID,'
      '    ENTERED,'
      '    USERID,'
      '    EUSERID,'
      '    CHANGED,'
      '    CURS'
      ')'
      'VALUES('
      '    :ID,'
      '    :CUST_ID,'
      '    :COMMENTS,'
      '    :CURR_ID,'
      '    :ENTERED,'
      '    :USERID,'
      '    :EUSERID,'
      '    :CHANGED,'
      '    :CURS'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      
        '    ID, R_DATE, CUST_ID, COMMENTS, CURR_ID, CNT, SUMM, ENTERED, ' +
        'USERID, EUSERID, CHANGED, CURS, SUMM_TOTAL,SUM_REAL,'
      
        '    (SELECT NAME FROM CUSTOMERS WHERE CUST_ID = CUSTOMERS.ID) CL' +
        'IENT,'
      
        '    (SELECT PRINTNAME FROM CUSTOMERS WHERE CUST_ID = CUSTOMERS.I' +
        'D) CLIENT_PRINT,'
      
        '    (SELECT NAME FROM CURRENCY WHERE CURR_ID = CURRENCY.ID) CURR' +
        'ENCY,'
      
        '    (SELECT PREFIX1 FROM CURRENCY WHERE CURR_ID = CURRENCY.ID) C' +
        'URR_PREFIX,'
      
        '    (SELECT ID FROM USERS WHERE (CURRENT_DOC = 4) AND (CURRENT_D' +
        'OC_ID = RETURN_SUPPL_N.ID) ROWS 1) EDITINGBY,'
      
        '    (SELECT USERNAME FROM USERS WHERE USERID = USERS.ID) USERNAM' +
        'E,'
      
        '    (SELECT USERNAME FROM USERS WHERE EUSERID = USERS.ID) EUSERN' +
        'AME'
      'FROM'
      '    RETURN_SUPPL_N '
      'WHERE '
      '   RETURN_SUPPL_N.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID, R_DATE, CUST_ID, COMMENTS,'
      '    CURR_ID, CNT, SUMM,'
      
        '    ENTERED, USERID, EUSERID, CHANGED, CURS, SUMM_TOTAL, SUM_REA' +
        'L,'
      
        '    (SELECT NAME FROM CUSTOMERS WHERE CUST_ID = CUSTOMERS.ID) CL' +
        'IENT,'
      
        '    (SELECT PRINTNAME FROM CUSTOMERS WHERE CUST_ID = CUSTOMERS.I' +
        'D) CLIENT_PRINT,'
      
        '    (SELECT NAME FROM CURRENCY WHERE CURR_ID = CURRENCY.ID) CURR' +
        'ENCY,'
      
        '    (SELECT PREFIX1 FROM CURRENCY WHERE CURR_ID = CURRENCY.ID) C' +
        'URR_PREFIX,'
      
        '    (SELECT ID FROM USERS WHERE (CURRENT_DOC = 4) AND (CURRENT_D' +
        'OC_ID = RETURN_SUPPL_N.ID) ROWS 1) EDITINGBY,'
      
        '    (SELECT USERNAME FROM USERS WHERE USERID = USERS.ID) USERNAM' +
        'E,'
      
        '    (SELECT USERNAME FROM USERS WHERE EUSERID = USERS.ID) EUSERN' +
        'AME'
      'FROM'
      '    RETURN_SUPPL_N '
      'WHERE'
      '  ENTERED = 0'
      ''
      'ORDER BY'
      '  R_DATE')
    AutoUpdateOptions.UpdateTableName = 'RETURN_SUPPL_N'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'RETURN_SUPPL_N_ID_GEN'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AfterEdit = AfterEdit
    AfterInsert = AfterInsert
    Transaction = TRead_Return_Suppl_N
    Database = Database
    UpdateTransaction = TWrite_Return_Suppl_N
    AutoCommit = True
    Left = 546
    Top = 240
    poSQLINT64ToBCD = True
    object DS_Return_Suppl_NID: TFIBIntegerField
      FieldName = 'ID'
    end
    object DS_Return_Suppl_NR_DATE: TFIBDateTimeField
      DefaultExpression = 'NOW'
      FieldName = 'R_DATE'
      DisplayFormat = 'dd.mm.yyyy hh:nn'
    end
    object DS_Return_Suppl_NCUST_ID: TFIBSmallIntField
      FieldName = 'CUST_ID'
    end
    object DS_Return_Suppl_NCOMMENTS: TFIBStringField
      FieldName = 'COMMENTS'
      Size = 255
      EmptyStrToNull = True
    end
    object DS_Return_Suppl_NCURR_ID: TFIBIntegerField
      FieldName = 'CURR_ID'
    end
    object DS_Return_Suppl_NCNT: TFIBFloatField
      DefaultExpression = '0'
      FieldName = 'CNT'
      DisplayFormat = '0.000#'
    end
    object DS_Return_Suppl_NSUMM: TFIBFloatField
      DefaultExpression = '0.0'
      FieldName = 'SUMM'
      DisplayFormat = '0.00'
    end
    object DS_Return_Suppl_NENTERED: TFIBBooleanField
      DefaultExpression = 'False'
      FieldName = 'ENTERED'
    end
    object DS_Return_Suppl_NUSERID: TFIBSmallIntField
      FieldName = 'USERID'
    end
    object DS_Return_Suppl_NEUSERID: TFIBSmallIntField
      FieldName = 'EUSERID'
    end
    object DS_Return_Suppl_NCHANGED: TFIBDateTimeField
      DefaultExpression = 'NOW'
      FieldName = 'CHANGED'
      DisplayFormat = 'dd.mm.yyyy hh:nn'
    end
    object DS_Return_Suppl_NCURS: TFIBFloatField
      DefaultExpression = '1.0'
      FieldName = 'CURS'
    end
    object DS_Return_Suppl_NSUMM_TOTAL: TFIBFloatField
      FieldName = 'SUMM_TOTAL'
      DisplayFormat = '0.00'
    end
    object DS_Return_Suppl_NCLIENT: TFIBStringField
      FieldName = 'CLIENT'
      Size = 255
      EmptyStrToNull = True
    end
    object DS_Return_Suppl_NCLIENT_PRINT: TFIBStringField
      FieldName = 'CLIENT_PRINT'
      Size = 255
      EmptyStrToNull = True
    end
    object DS_Return_Suppl_NCURRENCY: TFIBStringField
      FieldName = 'CURRENCY'
      Size = 3
      EmptyStrToNull = True
    end
    object DS_Return_Suppl_NCURR_PREFIX: TFIBStringField
      FieldName = 'CURR_PREFIX'
      Size = 255
      EmptyStrToNull = True
    end
    object DS_Return_Suppl_NEDITINGBY: TFIBIntegerField
      FieldName = 'EDITINGBY'
    end
    object DS_Return_Suppl_NUSERNAME: TFIBStringField
      FieldName = 'USERNAME'
      Size = 255
      EmptyStrToNull = True
    end
    object DS_Return_Suppl_NEUSERNAME: TFIBStringField
      FieldName = 'EUSERNAME'
      Size = 255
      EmptyStrToNull = True
    end
    object DS_Return_Suppl_NSUM_REAL: TFIBFloatField
      DefaultExpression = '0'
      FieldName = 'SUM_REAL'
      DisplayFormat = '0.00##'
    end
  end
  object TRead_Return_Suppl_N: TpFIBTransaction
    Active = True
    DefaultDatabase = Database
    Left = 546
    Top = 336
  end
  object TWrite_Return_Suppl_N: TpFIBTransaction
    DefaultDatabase = Database
    Left = 546
    Top = 384
  end
  object ExcelExport: TEXLReport
    About = '(About EMS ExcelReport)'
    DataSet = DS_Arrival
    Dictionary = <>
    Template = 'D:\Mosquito v3\Reports\'#1055#1088#1080#1093#1086#1076#1085#1072#1103'.xls'
    Title = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
    _Version = '1.01'
    OnBeforeBuild = ExcelExportBeforeBuild
    OnGetFieldValue = ExcelExportGetFieldValue
    Left = 1072
    Top = 56
  end
  object S_Filters: TDataSource
    DataSet = DS_Filters
    Left = 718
    Top = 288
  end
  object DS_Filters: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE FILTERS'
      'SET '
      '    NAME = :NAME,'
      '    F_TYPE = :F_TYPE,'
      '    "FILTER" = :"FILTER",'
      '    OGROUP = :OGROUP'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    FILTERS'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO FILTERS('
      '    ID,'
      '    NAME,'
      '    F_TYPE,'
      '    "FILTER",'
      '    OGROUP'
      ')'
      'VALUES('
      '    :ID,'
      '    :NAME,'
      '    :F_TYPE,'
      '    :"FILTER",'
      '    :OGROUP'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME,'
      '    F_TYPE,'
      '    "FILTER",'
      '    OGROUP'
      'FROM'
      '    FILTERS '
      ' WHERE '
      '        FILTERS.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME,'
      '    F_TYPE,'
      '    "FILTER",'
      '    OGROUP'
      'FROM'
      '    FILTERS '
      'ORDER BY'
      '    OGROUP, NAME')
    AutoUpdateOptions.GeneratorName = 'FILTERS_ID_GEN'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = TRead_Filters
    Database = Database
    UpdateTransaction = TWrite_Filters
    AutoCommit = True
    Left = 718
    Top = 240
    poSQLINT64ToBCD = True
  end
  object TRead_Filters: TpFIBTransaction
    DefaultDatabase = Database
    Left = 718
    Top = 336
  end
  object TWrite_Filters: TpFIBTransaction
    DefaultDatabase = Database
    Left = 718
    Top = 384
  end
  object DS_ImportPrice: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE IMP_SUPPLIERS'
      'SET '
      '    SUPPL_NAME = :SUPPL_NAME,'
      '    LAST_DATE = :LAST_DATE,'
      '    COL_ART = :COL_ART,'
      '    COL_PRICE = :COL_PRICE,'
      '    ROW_START = :ROW_START,'
      '    COL_NAME = :COL_NAME,'
      '    COL_ONDEPOT = :COL_ONDEPOT,'
      '    PERC = :PERC,'
      '    BARCODE = :BARCODE,'
      '    ARRIVAL_PERCENT = :ARRIVAL_PERCENT'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    IMP_SUPPLIERS'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO IMP_SUPPLIERS('
      '    ID,'
      '    SUPPL_NAME,'
      '    LAST_DATE,'
      '    COL_ART,'
      '    COL_PRICE,'
      '    ROW_START,'
      '    COL_NAME,'
      '    COL_ONDEPOT,'
      '    PERC,'
      '    BARCODE,'
      '    ARRIVAL_PERCENT'
      ')'
      'VALUES('
      '    :ID,'
      '    :SUPPL_NAME,'
      '    :LAST_DATE,'
      '    :COL_ART,'
      '    :COL_PRICE,'
      '    :ROW_START,'
      '    :COL_NAME,'
      '    :COL_ONDEPOT,'
      '    :PERC,'
      '    :BARCODE,'
      '    :ARRIVAL_PERCENT'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    SUPPL_NAME,'
      '    LAST_DATE,'
      '    COL_ART,'
      '    COL_PRICE,'
      '    ROW_START,'
      '    COL_NAME,'
      '    COL_ONDEPOT,'
      '    PERC,'
      '    BARCODE,'
      '    ARRIVAL_PERCENT'
      'FROM'
      '    IMP_SUPPLIERS '
      ''
      ' WHERE '
      '        IMP_SUPPLIERS.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    SUPPL_NAME,'
      '    LAST_DATE,'
      '    COL_ART,'
      '    COL_PRICE,'
      '    ROW_START,'
      '    COL_NAME,'
      '    COL_ONDEPOT,'
      '    PERC,'
      '    BARCODE,'
      '    ARRIVAL_PERCENT'
      'FROM'
      '    IMP_SUPPLIERS ')
    AutoUpdateOptions.UpdateTableName = 'SUPPLIERS'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'SUPPLIERS_ID_GEN'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = TRead_ImportPrice
    Database = Database
    UpdateTransaction = TWrite_ImportPrice
    AutoCommit = True
    Left = 804
    Top = 240
    poSQLINT64ToBCD = True
  end
  object S_ImportPrice: TDataSource
    DataSet = DS_ImportPrice
    Left = 804
    Top = 288
  end
  object TRead_ImportPrice: TpFIBTransaction
    DefaultDatabase = Database
    Left = 804
    Top = 336
  end
  object TWrite_ImportPrice: TpFIBTransaction
    DefaultDatabase = Database
    Left = 804
    Top = 384
  end
  object DS_Banned: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE UNSORTED'
      'SET '
      '    FULLNAME = :FULLNAME,'
      '    SUPPL_ID = :SUPPL_ID,'
      '    KIND = :KIND'
      'WHERE'
      '    ART = :OLD_ART'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    UNSORTED'
      'WHERE'
      '        ART = :OLD_ART'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO UNSORTED('
      '    ART,'
      '    FULLNAME,'
      '    SUPPL_ID,'
      '    KIND'
      ')'
      'VALUES('
      '    :ART,'
      '    :FULLNAME,'
      '    :SUPPL_ID,'
      '    :KIND'
      ')')
    RefreshSQL.Strings = (
      'SELECT * FROM UNSORTED '
      ' WHERE '
      '        UNSORTED.ART = :OLD_ART'
      '    ')
    SelectSQL.Strings = (
      'SELECT * FROM UNSORTED ')
    FilterOptions = [foCaseInsensitive]
    AutoUpdateOptions.UpdateTableName = 'SUPPLIERS'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'SUPPLIERS_ID_GEN'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = TRead_Banned
    Database = Database
    UpdateTransaction = TWrite_Banned
    AutoCommit = True
    Filtered = True
    Left = 890
    Top = 240
    poSQLINT64ToBCD = True
    object DS_BannedART: TFIBStringField
      FieldName = 'ART'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object DS_BannedFULLNAME: TFIBStringField
      FieldName = 'FULLNAME'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object DS_BannedSUPPL_ID: TFIBSmallIntField
      FieldName = 'SUPPL_ID'
    end
    object DS_BannedKIND: TFIBSmallIntField
      FieldName = 'KIND'
    end
    object DS_BannedSUPPLIER: TStringField
      FieldKind = fkLookup
      FieldName = 'SUPPLIER'
      LookupDataSet = DS_ImportPrice
      LookupKeyFields = 'ID'
      LookupResultField = 'SUPPL_NAME'
      KeyFields = 'SUPPL_ID'
      Lookup = True
    end
  end
  object S_Banned: TDataSource
    DataSet = DS_Banned
    Left = 890
    Top = 288
  end
  object TRead_Banned: TpFIBTransaction
    DefaultDatabase = Database
    Left = 890
    Top = 336
  end
  object TWrite_Banned: TpFIBTransaction
    DefaultDatabase = Database
    Left = 890
    Top = 384
  end
  object TRead_Return_Cust_N: TpFIBTransaction
    Active = True
    DefaultDatabase = Database
    Left = 803
    Top = 104
  end
  object S_Return_Cust_N: TDataSource
    DataSet = DS_Return_Cust_N
    Left = 804
    Top = 56
  end
  object TWrite_Return_Cust_N: TpFIBTransaction
    DefaultDatabase = Database
    Left = 803
    Top = 152
  end
  object S_Return_Cust: TDataSource
    DataSet = DS_Return_Cust
    Left = 890
    Top = 56
  end
  object DS_Return_Cust: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE RETURN_CUST'
      'SET '
      '    "NAKL_ID" = :"MAS_ID",'
      '    "GOOD_ID" = :"GOOD_ID",'
      '    "CNT" = :"CNT",'
      '    "PRICE" = :"PRICE",'
      '    "SUM_REAL" = :"SUM_REAL",'
      '    "WEIGHT_TOTAL" = :"WEIGHT_TOTAL"'
      'WHERE'
      '    "ID" = :"OLD_ID"')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    RETURN_CUST'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO RETURN_CUST('
      '    ID,'
      '    NAKL_ID,'
      '    GOOD_ID,'
      '    CNT,'
      '    PRICE,'
      '    SUM_REAL,'
      '    WEIGHT_TOTAL'
      ')'
      'VALUES('
      '    :ID,'
      '    :MAS_ID,'
      '    :GOOD_ID,'
      '    :CNT,'
      '    :PRICE,'
      '    :SUM_REAL,'
      '    :WEIGHT_TOTAL'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    R.ID,'
      '    R.GOOD_ID,'
      '    R.NAKL_ID,'
      '    R.CNT,'
      '    R.PRICE,'
      '    R.SUMM,'
      '    G.FULLNAME AS NAME,'
      
        '    IIF(R.GOOD_ID IS NULL, '#39#39', IIF(G.UNIT = 0, '#39#1096#1090'.'#39', '#39#1082#1075'.'#39')) AS' +
        ' UNIT,'
      '    G.UNIT AS UNIT_ID,'
      '    R.SUM_REAL,'
      '    R.WEIGHT_TOTAL'
      'FROM RETURN_CUST R'
      'JOIN GOODS G ON R.GOOD_ID = G.ID'
      'WHERE NAKL_ID = :ID'
      '    AND R.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    R.ID,'
      '    R.GOOD_ID,'
      '    R.NAKL_ID,'
      '    R.CNT,'
      '    R.PRICE,'
      '    R.SUMM,'
      '    G.FULLNAME AS NAME,'
      
        '    IIF(R.GOOD_ID IS NULL, '#39#39', IIF(G.UNIT = 0, '#39#1096#1090'.'#39', '#39#1082#1075'.'#39')) AS' +
        ' UNIT,'
      '    G.UNIT AS UNIT_ID,'
      '    R.SUM_REAL,'
      '    R.WEIGHT_TOTAL'
      'FROM RETURN_CUST R'
      'JOIN GOODS G ON R.GOOD_ID = G.ID'
      'WHERE NAKL_ID = :ID')
    AutoUpdateOptions.UpdateTableName = 'RETURN_CUST'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'RETURN_CUST_ID_GEN'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AfterDelete = DS_Return_CustAfterDelete
    AfterPost = DS_Return_CustAfterPost
    Transaction = TRead_Return_Cust
    Database = Database
    UpdateTransaction = TWrite_Return_Cust
    AutoCommit = True
    DataSource = S_Return_Cust_N
    Left = 890
    Top = 8
    poSQLINT64ToBCD = True
  end
  object TRead_Return_Cust: TpFIBTransaction
    Active = True
    DefaultDatabase = Database
    Left = 889
    Top = 104
  end
  object TWrite_Return_Cust: TpFIBTransaction
    DefaultDatabase = Database
    Left = 889
    Top = 152
  end
  object DS_Return_Cust_N: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE RETURN_CUST_N'
      'SET'
      '    CUST_ID = :CUST_ID,'
      '    DEPOT_ID = :DEPOT_ID,'
      '    COMMENTS = :COMMENTS,'
      '    CURR_ID = :CURR_ID,'
      '    ENTERED = :ENTERED,'
      '    USERID = :USERID,'
      '    EUSERID = :EUSERID,'
      '    CHANGED = :CHANGED,'
      '    CURS = :CURS'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    RETURN_CUST_N'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO RETURN_CUST_N('
      '    ID,'
      '    CUST_ID,'
      '    DEPOT_ID,'
      '    COMMENTS,'
      '    CURR_ID,'
      '    ENTERED,'
      '    USERID,'
      '    EUSERID,'
      '    CHANGED,'
      '    CURS'
      ')'
      'VALUES('
      '    :ID,'
      '    :CUST_ID,'
      '    :DEPOT_ID,'
      '    :COMMENTS,'
      '    :CURR_ID,'
      '    :ENTERED,'
      '    :USERID,'
      '    :EUSERID,'
      '    :CHANGED,'
      '    :CURS'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      
        '    ID, R_DATE, CUST_ID, DEPOT_ID, COMMENTS, CURR_ID, CNT, SUMM,' +
        ' ENTERED, USERID, EUSERID, CHANGED, CURS, SUMM_TOTAL, SUM_REAL,'
      
        '    (SELECT NAME FROM CUSTOMERS WHERE CUST_ID = CUSTOMERS.ID) CU' +
        'STOMER,'
      
        '    (SELECT PRINTNAME FROM CUSTOMERS WHERE CUST_ID = CUSTOMERS.I' +
        'D) CUST_PRINT,'
      
        '    (SELECT NAME FROM CURRENCY WHERE CURR_ID = CURRENCY.ID) CURR' +
        'ENCY,'
      '    (SELECT NAME FROM DEPOTS WHERE DEPOT_ID = DEPOTS.ID) DEPOT,'
      
        '    (SELECT ID FROM USERS WHERE (CURRENT_DOC = 3) AND (CURRENT_D' +
        'OC_ID = RETURN_CUST_N.ID) ROWS 1) EDITINGBY,'
      
        '    (SELECT USERNAME FROM USERS WHERE USERID = USERS.ID) USERNAM' +
        'E,'
      
        '    (SELECT USERNAME FROM USERS WHERE EUSERID = USERS.ID) EUSERN' +
        'AME'
      'FROM'
      '    RETURN_CUST_N '
      ' WHERE '
      '    RETURN_CUST_N.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      
        '    ID, R_DATE, CUST_ID, DEPOT_ID, COMMENTS, CURR_ID, CNT, SUMM,' +
        ' ENTERED, USERID, EUSERID, CHANGED, CURS, SUMM_TOTAL, SUM_REAL,'
      
        '    (SELECT NAME FROM CUSTOMERS WHERE CUST_ID = CUSTOMERS.ID) CU' +
        'STOMER,'
      
        '    (SELECT PRINTNAME FROM CUSTOMERS WHERE CUST_ID = CUSTOMERS.I' +
        'D) CUST_PRINT,'
      
        '    (SELECT NAME FROM CURRENCY WHERE CURR_ID = CURRENCY.ID) CURR' +
        'ENCY,'
      '    (SELECT NAME FROM DEPOTS WHERE DEPOT_ID = DEPOTS.ID) DEPOT,'
      
        '    (SELECT ID FROM USERS WHERE (CURRENT_DOC = 3) AND (CURRENT_D' +
        'OC_ID = RETURN_CUST_N.ID) ROWS 1) EDITINGBY,'
      
        '    (SELECT USERNAME FROM USERS WHERE USERID = USERS.ID) USERNAM' +
        'E,'
      
        '    (SELECT USERNAME FROM USERS WHERE EUSERID = USERS.ID) EUSERN' +
        'AME'
      ''
      'FROM'
      '    RETURN_CUST_N'
      'WHERE'
      ' ENTERED = 0'
      ''
      'ORDER BY'
      ' R_DATE')
    AutoUpdateOptions.UpdateTableName = 'RETURN_CUST_N'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'RETURN_CUST_N_ID_GEN'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AfterEdit = AfterEdit
    AfterInsert = AfterInsert
    Transaction = TRead_Return_Cust_N
    Database = Database
    UpdateTransaction = TWrite_Return_Cust_N
    AutoCommit = True
    Left = 804
    Top = 8
    poSQLINT64ToBCD = True
    object DS_Return_Cust_NID: TFIBIntegerField
      FieldName = 'ID'
    end
    object DS_Return_Cust_NR_DATE: TFIBDateTimeField
      DefaultExpression = 'NOW'
      FieldName = 'R_DATE'
      DisplayFormat = 'dd.mm.yyyy hh:nn'
    end
    object DS_Return_Cust_NCUST_ID: TFIBIntegerField
      FieldName = 'CUST_ID'
    end
    object DS_Return_Cust_NDEPOT_ID: TFIBIntegerField
      FieldName = 'DEPOT_ID'
    end
    object DS_Return_Cust_NCOMMENTS: TFIBStringField
      FieldName = 'COMMENTS'
      Size = 255
      EmptyStrToNull = True
    end
    object DS_Return_Cust_NCURR_ID: TFIBIntegerField
      FieldName = 'CURR_ID'
    end
    object DS_Return_Cust_NCNT: TFIBFloatField
      DefaultExpression = '0'
      FieldName = 'CNT'
    end
    object DS_Return_Cust_NSUMM: TFIBFloatField
      DefaultExpression = '0.0'
      FieldName = 'SUMM'
      DisplayFormat = '0.00'
    end
    object DS_Return_Cust_NENTERED: TFIBBooleanField
      DefaultExpression = 'False'
      FieldName = 'ENTERED'
    end
    object DS_Return_Cust_NUSERID: TFIBSmallIntField
      FieldName = 'USERID'
    end
    object DS_Return_Cust_NEUSERID: TFIBSmallIntField
      FieldName = 'EUSERID'
    end
    object DS_Return_Cust_NCHANGED: TFIBDateTimeField
      DefaultExpression = 'NOW'
      FieldName = 'CHANGED'
      DisplayFormat = 'dd.mm.yyyy hh:nn'
    end
    object DS_Return_Cust_NCURS: TFIBFloatField
      DefaultExpression = '1.0'
      FieldName = 'CURS'
    end
    object DS_Return_Cust_NSUMM_TOTAL: TFIBFloatField
      FieldName = 'SUMM_TOTAL'
      DisplayFormat = '0.00'
    end
    object DS_Return_Cust_NCUSTOMER: TFIBStringField
      FieldName = 'CUSTOMER'
      Size = 255
      EmptyStrToNull = True
    end
    object DS_Return_Cust_NCUST_PRINT: TFIBStringField
      FieldName = 'CUST_PRINT'
      Size = 255
      EmptyStrToNull = True
    end
    object DS_Return_Cust_NCURRENCY: TFIBStringField
      FieldName = 'CURRENCY'
      Size = 3
      EmptyStrToNull = True
    end
    object DS_Return_Cust_NDEPOT: TFIBStringField
      FieldName = 'DEPOT'
      Size = 255
      EmptyStrToNull = True
    end
    object DS_Return_Cust_NEDITINGBY: TFIBIntegerField
      FieldName = 'EDITINGBY'
    end
    object DS_Return_Cust_NUSERNAME: TFIBStringField
      FieldName = 'USERNAME'
      Size = 255
      EmptyStrToNull = True
    end
    object DS_Return_Cust_NEUSERNAME: TFIBStringField
      FieldName = 'EUSERNAME'
      Size = 255
      EmptyStrToNull = True
    end
    object DS_Return_Cust_NSUM_REAL: TFIBFloatField
      DefaultExpression = '0'
      FieldName = 'SUM_REAL'
      DisplayFormat = '0.00##'
    end
  end
  object S_PriceCategory: TDataSource
    DataSet = DS_PriceCategory
    Left = 632
    Top = 512
  end
  object DS_PriceCategory: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE PRICE_CATEGORY'
      'SET '
      '    ID = :ID,'
      '    CATEGORY_NAME = :CATEGORY_NAME'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    PRICE_CATEGORY'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO PRICE_CATEGORY('
      '    ID,'
      '    CATEGORY_NAME'
      ')'
      'VALUES('
      '    :ID,'
      '    :CATEGORY_NAME'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    CATEGORY_NAME'
      'FROM'
      '    PRICE_CATEGORY '
      ' WHERE '
      '        PRICE_CATEGORY.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    CATEGORY_NAME'
      'FROM'
      '    PRICE_CATEGORY ')
    AutoUpdateOptions.UpdateTableName = 'GOODTYPES'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'GOODTYPES_ID_GEN'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = TRead_PriceCategory
    Database = Database
    UpdateTransaction = TWrite_PriceCategory
    AutoCommit = True
    Left = 632
    Top = 464
    poSQLINT64ToBCD = True
  end
  object TRead_PriceCategory: TpFIBTransaction
    DefaultDatabase = Database
    Left = 632
    Top = 560
  end
  object TWrite_PriceCategory: TpFIBTransaction
    DefaultDatabase = Database
    Left = 632
    Top = 608
  end
  object S_KASSA: TDataSource
    DataSet = DS_KASSA
    Left = 718
    Top = 56
  end
  object DS_KASSA: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE KASSA'
      'SET '
      '    SUMM = :SUMM,'
      '    CLIENT_ID = :CLIENT_ID,'
      '    NAKL_ID = :NAKL_ID,'
      '    COMMENTS = :COMMENTS,'
      '    K_DATE = :K_DATE,'
      '    SUMM_UA = :SUMM_UA,'
      '    SUMM_USD = :SUMM_USD,'
      '    CURS = :CURS,'
      '    NAKL_SUMM = :NAKL_SUMM,'
      '    IN_USE = :IN_USE,'
      '    CASHOUT = :CASHOUT'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    KASSA'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO KASSA('
      '    ID,'
      '    SUMM,'
      '    CLIENT_ID,'
      '    NAKL_ID,'
      '    COMMENTS,'
      '    K_DATE,'
      '    SUMM_UA,'
      '    SUMM_USD,'
      '    CURS,'
      '    NAKL_SUMM,'
      '    IN_USE,'
      '    CASHOUT'
      ')'
      'VALUES('
      '    :ID,'
      '    :SUMM,'
      '    :CLIENT_ID,'
      '    :NAKL_ID,'
      '    :COMMENTS,'
      '    :K_DATE,'
      '    :SUMM_UA,'
      '    :SUMM_USD,'
      '    :CURS,'
      '    :NAKL_SUMM,'
      '    :IN_USE,'
      '    :CASHOUT'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    SUMM,'
      '    CLIENT_ID,'
      '    NAKL_ID,'
      '    COMMENTS,'
      '    K_DATE,'
      '    SUMM_UA,'
      '    SUMM_USD,'
      '    CURS,NAKL_SUMM, IN_USE, CASHOUT,'
      
        '    (SELECT NAME FROM CUSTOMERS WHERE CLIENT_ID = CUSTOMERS.ID) ' +
        'CLIENT_NAME'
      'FROM'
      '    KASSA '
      ''
      ''
      ' WHERE '
      '        KASSA.ID = :OLD_ID')
    SelectSQL.Strings = (
      'SELECT'
      '    KASSA.ID,'
      '    KASSA.SUMM,'
      '    KASSA.CLIENT_ID,'
      '    KASSA.NAKL_ID,'
      '    KASSA.COMMENTS,'
      '    KASSA.K_DATE,'
      '    KASSA.SUMM_UA,'
      '    KASSA.SUMM_USD,'
      '    KASSA.CURS,KASSA.NAKL_SUMM, KASSA.IN_USE, KASSA.CASHOUT,'
      '    CUSTOMERS.NAME CLIENT_NAME'
      'FROM'
      '    KASSA, CUSTOMERS'
      ''
      'WHERE KASSA.CLIENT_ID <> 0'
      ' AND KASSA.CLIENT_ID = CUSTOMERS.ID AND CUSTOMERS.C_TYPE >=0'
      ''
      'ORDER BY '
      '    K_DATE')
    AutoUpdateOptions.UpdateTableName = 'KASSA'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'KASSA_ID_GEN'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = TRead_KASSA
    Database = Database
    UpdateTransaction = TWrite_KASSA
    AutoCommit = True
    Left = 718
    Top = 8
    poSQLINT64ToBCD = True
    object DS_KASSAID: TFIBIntegerField
      FieldName = 'ID'
    end
    object DS_KASSASUMM: TFIBFloatField
      DefaultExpression = '0.0'
      FieldName = 'SUMM'
    end
    object DS_KASSACLIENT_ID: TFIBIntegerField
      DefaultExpression = '0'
      FieldName = 'CLIENT_ID'
    end
    object DS_KASSANAKL_ID: TFIBIntegerField
      FieldName = 'NAKL_ID'
    end
    object DS_KASSACOMMENTS: TFIBStringField
      FieldName = 'COMMENTS'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object DS_KASSAK_DATE: TFIBDateTimeField
      DefaultExpression = 'NOW'
      FieldName = 'K_DATE'
      DisplayFormat = 'dd.mm.yyyy hh:mm AMPM'
    end
    object DS_KASSASUMM_UA: TFIBFloatField
      DefaultExpression = '0.0'
      FieldName = 'SUMM_UA'
    end
    object DS_KASSASUMM_USD: TFIBFloatField
      DefaultExpression = '0.0'
      FieldName = 'SUMM_USD'
    end
    object DS_KASSACURS: TFIBFloatField
      DefaultExpression = '0.0'
      FieldName = 'CURS'
    end
    object DS_KASSANAKL_SUMM: TFIBFloatField
      FieldName = 'NAKL_SUMM'
    end
    object DS_KASSAIN_USE: TFIBSmallIntField
      DefaultExpression = '1'
      FieldName = 'IN_USE'
    end
    object DS_KASSACASHOUT: TFIBSmallIntField
      FieldName = 'CASHOUT'
    end
    object DS_KASSACLIENT_NAME: TFIBStringField
      FieldName = 'CLIENT_NAME'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object TRead_KASSA: TpFIBTransaction
    DefaultDatabase = Database
    Left = 717
    Top = 104
  end
  object TWrite_KASSA: TpFIBTransaction
    DefaultDatabase = Database
    Left = 717
    Top = 152
  end
  object S_Users: TDataSource
    DataSet = DS_Users
    Left = 976
    Top = 56
  end
  object DS_Users: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE USERS'
      'SET '
      '    USERNAME = :USERNAME,'
      '    CURRENT_TABLE = :CURRENT_TABLE,'
      '    CURRENT_TABLE_ID = :CURRENT_TABLE_ID,'
      '    USERPASSWORD = :USERPASSWORD,'
      '    SHORTNAME = :SHORTNAME,'
      '    CURRENT_DOC = :CURRENT_DOC,'
      '    CURRENT_DOC_ID = :CURRENT_DOC_ID'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    USERS'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO USERS('
      '    ID,'
      '    USERNAME,'
      '    CURRENT_TABLE,'
      '    CURRENT_TABLE_ID,'
      '    USERPASSWORD,'
      '    SHORTNAME,'
      '    CURRENT_DOC,'
      '    CURRENT_DOC_ID'
      ')'
      'VALUES('
      '    :ID,'
      '    :USERNAME,'
      '    :CURRENT_TABLE,'
      '    :CURRENT_TABLE_ID,'
      '    :USERPASSWORD,'
      '    :SHORTNAME,'
      '    :CURRENT_DOC,'
      '    :CURRENT_DOC_ID'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    USERNAME,'
      '    CURRENT_TABLE,'
      '    CURRENT_TABLE_ID,'
      '    USERPASSWORD,'
      '    SHORTNAME,'
      '    CURRENT_DOC,'
      '    CURRENT_DOC_ID'
      'FROM'
      '    USERS '
      ' WHERE '
      '        USERS.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    USERNAME,'
      '    CURRENT_TABLE,'
      '    CURRENT_TABLE_ID,'
      '    USERPASSWORD,'
      '    SHORTNAME,'
      '    CURRENT_DOC,'
      '    CURRENT_DOC_ID'
      'FROM'
      '    USERS '
      'ORDER BY'
      '    USERNAME')
    AutoUpdateOptions.UpdateTableName = 'CURS'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'CURS_ID_GEN'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = TRead_Users
    Database = Database
    UpdateTransaction = TWrite_Users
    AutoCommit = True
    Left = 976
    Top = 8
    poSQLINT64ToBCD = True
  end
  object TRead_Users: TpFIBTransaction
    DefaultDatabase = Database
    Left = 976
    Top = 104
  end
  object TWrite_Users: TpFIBTransaction
    DefaultDatabase = Database
    Left = 976
    Top = 152
  end
  object DS_EXT_PRICE: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE SUPPL_PRICES'
      'SET '
      '    ID = :ID,'
      '    GOOD_ID = :GOOD_ID,'
      '    EXT_ART = :EXT_ART,'
      '    EXT_NAME = :EXT_NAME,'
      '    SUPPL_ID = :SUPPL_ID,'
      '    EXT_PRICE = :EXT_PRICE,'
      '    EXT_LAST_DATE = :EXT_LAST_DATE,'
      '    EXT_AVAILABLE = :EXT_AVAILABLE'
      'WHERE'
      '    ID = :OLD_ID')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    SUPPL_PRICES'
      'WHERE'
      '    ID = :OLD_ID        ')
    InsertSQL.Strings = (
      'INSERT INTO SUPPL_PRICES('
      '    ID,'
      '    GOOD_ID,'
      '    EXT_ART,'
      '    EXT_NAME,'
      '    SUPPL_ID,'
      '    EXT_PRICE,'
      '    EXT_LAST_DATE,'
      '    EXT_AVAILABLE'
      ')'
      'VALUES('
      '    :ID,'
      '    :GOOD_ID,'
      '    :EXT_ART,'
      '    :EXT_NAME,'
      '    :SUPPL_ID,'
      '    :EXT_PRICE,'
      '    :EXT_LAST_DATE,'
      '    :EXT_AVAILABLE'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    GOOD_ID,'
      '    EXT_ART,'
      '    EXT_NAME,'
      '    SUPPL_ID,'
      '    EXT_PRICE,'
      '    EXT_LAST_DATE,'
      '    EXT_AVAILABLE,'
      
        '    (SELECT NAME FROM CUSTOMERS WHERE CUSTOMERS.ID = SUPPL_ID) A' +
        'S CUSTOMER'
      'FROM'
      '    SUPPL_PRICES'
      ' WHERE'
      '    SUPPL_PRICES.ID = :OLD_ID'
      '')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    GOOD_ID,'
      '    EXT_ART,'
      '    EXT_NAME,'
      '    SUPPL_ID,'
      '    EXT_PRICE,'
      '    EXT_LAST_DATE,'
      '    EXT_AVAILABLE,'
      
        '    (SELECT NAME FROM CUSTOMERS WHERE CUSTOMERS.ID = SUPPL_ID) A' +
        'S CUSTOMER'
      'FROM'
      '    SUPPL_PRICES'
      'WHERE'
      '--  (GOOD_ID = 0) AND'
      
        '  ((SELECT USE_EXT_PRICE FROM CUSTOMERS WHERE CUSTOMERS.ID =SUPP' +
        'L_ID) = 1)'
      'ORDER BY'
      '    EXT_AVAILABLE DESC,'
      '    EXT_PRICE')
    AutoUpdateOptions.UpdateTableName = 'REALIZERS'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'REALIZERS_ID_GEN'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = TRead_EXT_PRICE
    Database = Database
    UpdateTransaction = TWrite_EXT_PRICE
    AutoCommit = True
    Left = 208
    Top = 464
    poSQLINT64ToBCD = True
  end
  object S_EXT_PRICE: TDataSource
    DataSet = DS_EXT_PRICE
    Left = 208
    Top = 512
  end
  object TRead_EXT_PRICE: TpFIBTransaction
    DefaultDatabase = Database
    Left = 208
    Top = 560
  end
  object TWrite_EXT_PRICE: TpFIBTransaction
    DefaultDatabase = Database
    Left = 208
    Top = 608
  end
  object DS_LAST_ARRIVALS: TpFIBDataSet
    UpdateSQL.Strings = (
      '')
    DeleteSQL.Strings = (
      '')
    InsertSQL.Strings = (
      '')
    RefreshSQL.Strings = (
      '')
    SelectSQL.Strings = (
      'SELECT'
      '    GOOD_ID,'
      
        '    (SELECT NAME FROM CUSTOMERS WHERE CUSTOMERS.ID = CUST_ID) AS' +
        ' CUSTOMER,'
      '    LAST_DATE,'
      '    PRICE'
      'FROM'
      '    LAST_ARRIVALS'
      'WHERE'
      '    (GOOD_ID = :ID)'
      'ORDER BY'
      '    LAST_DATE DESC,'
      '    PRICE')
    AutoUpdateOptions.UpdateTableName = 'REALIZERS'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'REALIZERS_ID_GEN'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = TRead_LAST_ARRIVALS
    Database = Database
    AutoCommit = True
    DataSource = S_Goods
    Left = 896
    Top = 464
    poSQLINT64ToBCD = True
  end
  object S_LAST_ARRIVALS: TDataSource
    DataSet = DS_LAST_ARRIVALS
    Left = 896
    Top = 512
  end
  object TRead_LAST_ARRIVALS: TpFIBTransaction
    DefaultDatabase = Database
    Left = 896
    Top = 560
  end
  object S_Discounts: TDataSource
    DataSet = DS_Discounts
    Left = 120
    Top = 512
  end
  object DS_Discounts: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE DISCOUNTS'
      'SET '
      '    ID = :ID,'
      '    DISCOUNT = :DISCOUNT,'
      '    "DESC" = :"DESC",'
      '    "ORDER" = :"ORDER"'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    DISCOUNTS'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO DISCOUNTS('
      '    ID,'
      '    DISCOUNT,'
      '    "DESC",'
      '    "ORDER"'
      ')'
      'VALUES('
      '    :ID,'
      '    :DISCOUNT,'
      '    :"DESC",'
      '    :"ORDER"'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    DISCOUNT,'
      '    "DESC",'
      '    "ORDER"'
      'FROM'
      '    DISCOUNTS'
      ' '
      ' WHERE '
      '        DISCOUNTS.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    DISCOUNT,'
      '    "DESC",'
      '    "ORDER"'
      'FROM'
      '    DISCOUNTS'
      'ORDER BY'
      '    "ORDER"')
    AutoUpdateOptions.UpdateTableName = 'CURS'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'CURS_ID_GEN'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = TRead_Discounts
    Database = Database
    UpdateTransaction = TWrite_Discounts
    AutoCommit = True
    Left = 120
    Top = 464
    poSQLINT64ToBCD = True
  end
  object TRead_Discounts: TpFIBTransaction
    DefaultDatabase = Database
    Left = 120
    Top = 560
  end
  object TWrite_Discounts: TpFIBTransaction
    DefaultDatabase = Database
    Left = 120
    Top = 608
  end
  object ExcelImport: TQImport3XLS
    ImportEmptyRows = False
    DataSet = DS_Goods
    ImportMode = qimUpdate
    Map.Strings = (
      'ID=['#1051#1080#1089#1090'1]A-COLFINISH;'
      'FULLNAME=['#1051#1080#1089#1090'1]B-COLFINISH;'
      'NAME=['#1051#1080#1089#1090'1]C-COLFINISH;'
      'ML=['#1051#1080#1089#1090'1]D-COLFINISH;'
      'STATE=['#1051#1080#1089#1090'1]I-COLFINISH;'
      'PRODUCT_COLOR=['#1051#1080#1089#1090'1]K-COLFINISH;'
      'PRODUCT_TYPE=['#1051#1080#1089#1090'1]H-COLFINISH;'
      'PRODUCT_NO=['#1051#1080#1089#1090'1]G-COLFINISH;'
      'SET_DESCRIPTION=['#1051#1080#1089#1090'1]E-COLFINISH;'
      'DEFECT_DESCRIPTION=['#1051#1080#1089#1090'1]F-COLFINISH;')
    Formats.DecimalSeparator = '.'
    Formats.ThousandSeparator = #160
    Formats.DateSeparator = '.'
    Formats.TimeSeparator = ':'
    Formats.BooleanTrue.Strings = (
      'True')
    Formats.BooleanFalse.Strings = (
      'False')
    Formats.NullValues.Strings = (
      'Null')
    Formats.ShortDateFormat = 'dd/MM/yyyy'
    Formats.LongDateFormat = 'd MMMM yyyy '#39#1075'/'#39
    Formats.ShortTimeFormat = 'h:mm'
    Formats.LongTimeFormat = 'h:mm:ss'
    FieldFormats = <>
    ErrorLogFileName = 'error.log'
    ShowErrorLog = True
    AddType = qatInsert
    KeyColumns.Strings = (
      'ID')
    AllowDuplicates = False
    FileName = 'C:\Users\SADIM\Desktop\'#1054#1090#1095#1077#1090#1099'\Luxparfum.xls'
    SkipFirstRows = 1
    Left = 1072
    Top = 104
  end
  object DS_EmailGroups: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE UNSORTED'
      'SET '
      '    FULLNAME = :FULLNAME,'
      '    SUPPL_ID = :SUPPL_ID,'
      '    KIND = :KIND'
      'WHERE'
      '    ART = :OLD_ART'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    EMAIL_GROUPS'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO EMAIL_GROUPS('
      '    ID,'
      '    GROUP_NAME,'
      '    GROUP_PERCENT'
      ')'
      'VALUES('
      '    :ID,'
      '    :GROUP_NAME,'
      '    :GROUP_PERCENT'
      ')')
    RefreshSQL.Strings = (
      'SELECT * FROM UNSORTED '
      ' WHERE '
      '        UNSORTED.ART = :OLD_ART'
      '    ')
    SelectSQL.Strings = (
      'SELECT * FROM EMAIL_GROUPS')
    FilterOptions = [foCaseInsensitive]
    AutoUpdateOptions.UpdateTableName = 'SUPPLIERS'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'SUPPLIERS_ID_GEN'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = TRead_EmailGroups
    Database = Database
    UpdateTransaction = TWrite_EmailGroups
    AutoCommit = True
    Filtered = True
    Left = 720
    Top = 464
    poSQLINT64ToBCD = True
    object FIBStringField1: TFIBStringField
      FieldName = 'ART'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object FIBStringField2: TFIBStringField
      FieldName = 'FULLNAME'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object FIBSmallIntField1: TFIBSmallIntField
      FieldName = 'SUPPL_ID'
    end
    object FIBSmallIntField2: TFIBSmallIntField
      FieldName = 'KIND'
    end
    object StringField1: TStringField
      FieldKind = fkLookup
      FieldName = 'SUPPLIER'
      LookupDataSet = DS_ImportPrice
      LookupKeyFields = 'ID'
      LookupResultField = 'SUPPL_NAME'
      KeyFields = 'SUPPL_ID'
      Lookup = True
    end
  end
  object S_EmailGroups: TDataSource
    DataSet = DS_EmailGroups
    Left = 720
    Top = 512
  end
  object TRead_EmailGroups: TpFIBTransaction
    DefaultDatabase = Database
    Left = 720
    Top = 560
  end
  object TWrite_EmailGroups: TpFIBTransaction
    DefaultDatabase = Database
    Left = 720
    Top = 608
  end
  object DS_PRICETOEXCEL: TpFIBDataSet
    UpdateSQL.Strings = (
      '')
    DeleteSQL.Strings = (
      '')
    InsertSQL.Strings = (
      '')
    RefreshSQL.Strings = (
      'SELECT'
      '    *'
      'FROM'
      '    PRICETOEXCEL')
    SelectSQL.Strings = (
      'SELECT * FROM PRICETOEXCEL'
      '')
    Transaction = TRead_PRICETOEXCEL
    Database = Database
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm AMPM'
    DefaultFormats.DisplayFormatTime = 'hh:mm AMPM'
    Left = 984
    Top = 464
    oFetchAll = True
  end
  object S_PRICETOEXCEL: TDataSource
    DataSet = DS_PRICETOEXCEL
    Left = 984
    Top = 512
  end
  object TRead_PRICETOEXCEL: TpFIBTransaction
    DefaultDatabase = Database
    Left = 984
    Top = 560
  end
  object DS_SaleImportDepots: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE DEPOTS'
      'SET '
      '    NAME = :NAME,'
      '    SALE_IMPORT_PRIORITY = :SALE_IMPORT_PRIORITY,'
      '    SALE_IMPORT_USE = :SALE_IMPORT_USE'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    DEPOTS'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO DEPOTS('
      '    ID,'
      '    NAME,'
      '    SALE_IMPORT_PRIORITY,'
      '    SALE_IMPORT_USE'
      ')'
      'VALUES('
      '    :ID,'
      '    :NAME,'
      '    :SALE_IMPORT_PRIORITY,'
      '    :SALE_IMPORT_USE'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME,'
      '    SALE_IMPORT_PRIORITY,'
      '    SALE_IMPORT_USE'
      'FROM'
      '    DEPOTS'
      ' '
      ' WHERE '
      '        DEPOTS.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME,'
      '    SALE_IMPORT_PRIORITY,'
      '    SALE_IMPORT_USE'
      'FROM'
      '    DEPOTS'
      'WHERE'
      '    USED = 1'
      'ORDER BY'
      '    SALE_IMPORT_PRIORITY')
    Transaction = TRead_SaleImportDepots
    Database = Database
    UpdateTransaction = TWrite_SaleImportDepots
    AutoCommit = True
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm AMPM'
    DefaultFormats.DisplayFormatTime = 'hh:mm AMPM'
    Left = 976
    Top = 240
    oFetchAll = True
  end
  object S_SaleImportDepots: TDataSource
    DataSet = DS_SaleImportDepots
    Left = 976
    Top = 288
  end
  object TRead_SaleImportDepots: TpFIBTransaction
    DefaultDatabase = Database
    Left = 976
    Top = 336
  end
  object TWrite_SaleImportDepots: TpFIBTransaction
    DefaultDatabase = Database
    Left = 976
    Top = 384
  end
  object TRead_Production_N: TpFIBTransaction
    Active = True
    DefaultDatabase = Database
    Left = 288
    Top = 560
  end
  object S_Production_N: TDataSource
    DataSet = DS_Production_N
    Left = 288
    Top = 512
  end
  object T_Write_Production_N: TpFIBTransaction
    DefaultDatabase = Database
    Left = 288
    Top = 608
  end
  object DS_Production_N: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE PRODUCTION_N'
      'SET '
      '    COMMENTS = :COMMENTS,'
      '    P_DATE = :P_DATE,'
      '    ENTERED = :ENTERED,'
      '    DEPOT_ID = :DEPOT_ID'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    PRODUCTION_N'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO PRODUCTION_N('
      '    ID,'
      '    COMMENTS,'
      '    P_DATE,'
      '    ENTERED,'
      '    DEPOT_ID'
      ')'
      'VALUES('
      '    :ID,'
      '    :COMMENTS,'
      '    :P_DATE,'
      '    :ENTERED,'
      '    :DEPOT_ID'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    P.ID,'
      '    P.COMMENTS,'
      '    P.SUMM,'
      '    P.P_DATE,'
      '    P.ENTERED,'
      '    P.DEPOT_ID,'
      '    P.USERID,'
      '    P.EUSERID,'
      '    P.CHANGED,'
      '    D.NAME DEPOT_NAME,'
      
        '    (SELECT ID FROM USERS WHERE (CURRENT_DOC = 1) AND (CURRENT_D' +
        'OC_ID = P.ID) ROWS 1) EDITINGBY,'
      
        '    (SELECT USERNAME FROM USERS WHERE USERID = USERS.ID) USERNAM' +
        'E,'
      
        '    (SELECT USERNAME FROM USERS WHERE EUSERID = USERS.ID) EUSERN' +
        'AME'
      'FROM PRODUCTION_N P'
      'INNER JOIN DEPOTS D ON D.ID = P.DEPOT_ID'
      ''
      ''
      'WHERE P.ID = :OLD_ID'
      '')
    SelectSQL.Strings = (
      'SELECT'
      '    P.ID,'
      '    P.COMMENTS,'
      '    P.SUMM,'
      '    P.P_DATE,'
      '    P.ENTERED,'
      '    P.DEPOT_ID,'
      '    P.USERID,'
      '    P.EUSERID,'
      '    P.CHANGED,'
      '    D.NAME DEPOT_NAME,'
      
        '    (SELECT ID FROM USERS WHERE (CURRENT_DOC = 7) AND (CURRENT_D' +
        'OC_ID = P.ID) ROWS 1) EDITINGBY,'
      
        '    (SELECT USERNAME FROM USERS WHERE USERID = USERS.ID) USERNAM' +
        'E,'
      
        '    (SELECT USERNAME FROM USERS WHERE EUSERID = USERS.ID) EUSERN' +
        'AME'
      'FROM PRODUCTION_N P'
      'INNER JOIN DEPOTS D ON D.ID = P.DEPOT_ID'
      'WHERE'
      '    ENTERED = 0'
      'ORDER BY'
      '    P_DATE'
      ''
      '')
    AutoUpdateOptions.UpdateTableName = 'PRODUCTION_N'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'PRODUCTION_N_ID_GEN'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AfterEdit = AfterEdit
    AfterInsert = AfterInsert
    Transaction = TRead_Production_N
    Database = Database
    UpdateTransaction = T_Write_Production_N
    AutoCommit = True
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm AMPM'
    DefaultFormats.DisplayFormatTime = 'hh:mm AMPM'
    Left = 288
    Top = 464
    poSQLINT64ToBCD = True
    dcForceMasterRefresh = True
    dcForceOpen = True
  end
  object S_Production: TDataSource
    DataSet = DS_Production
    Left = 376
    Top = 512
  end
  object DS_Production: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE PRODUCTION'
      'SET '
      '    GOOD_ID = :GOOD_ID,'
      '    CNT = :CNT,'
      '    NAKL_ID = :MAS_ID,'
      '    WEIGHT_TOTAL = :WEIGHT_TOTAL'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    PRODUCTION'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO PRODUCTION('
      '    ID,'
      '    GOOD_ID,'
      '    CNT,'
      '    NAKL_ID,'
      '    WEIGHT_TOTAL'
      ')'
      'VALUES('
      '    :ID,'
      '    :GOOD_ID,'
      '    :CNT,'
      '    :MAS_ID,'
      '    :WEIGHT_TOTAL'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    P.ID,'
      '    P.GOOD_ID,'
      '    P.CNT,'
      '    P.NAKL_ID,'
      '    G.FULLNAME AS NAME,'
      
        '    IIF(P.GOOD_ID IS NULL, '#39#39', IIF(G.UNIT = 0, '#39#1096#1090'.'#39', '#39#1082#1075'.'#39')) AS' +
        ' UNIT,'
      '    G.UNIT AS UNIT_ID,'
      
        '    (SELECT COUNT(ID) FROM PRODUCTION_SP SP WHERE SP.NAKL_ID = P' +
        '.ID) SPECIFICATION_COUNT,'
      '    P.WEIGHT_TOTAL'
      'FROM PRODUCTION P'
      'JOIN GOODS G ON P.GOOD_ID = G.ID'
      'WHERE P.ID = :OLD_ID'
      '')
    SelectSQL.Strings = (
      'SELECT'
      '    P.ID,'
      '    P.GOOD_ID,'
      '    P.CNT,'
      '    P.NAKL_ID,'
      '    G.FULLNAME AS NAME,'
      
        '    IIF(P.GOOD_ID IS NULL, '#39#39', IIF(G.UNIT = 0, '#39#1096#1090'.'#39', '#39#1082#1075'.'#39')) AS' +
        ' UNIT,'
      '    G.UNIT AS UNIT_ID,'
      
        '    (SELECT COUNT(ID) FROM PRODUCTION_SP SP WHERE SP.NAKL_ID = P' +
        '.ID) SPECIFICATION_COUNT,'
      '    P.WEIGHT_TOTAL'
      'FROM PRODUCTION P'
      'JOIN GOODS G ON P.GOOD_ID = G.ID'
      'WHERE NAKL_ID = :ID')
    AutoUpdateOptions.UpdateTableName = 'PRODUCTION'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'PRODUCTION_ID_GEN'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AfterDelete = DS_ProductionAfterDelete
    AfterPost = DS_ProductionAfterPost
    Transaction = TRead_Production
    Database = Database
    UpdateTransaction = TWrite_Production
    AutoCommit = True
    OnEndScroll = DS_ProductionEndScroll
    DataSource = S_Production_N
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm AMPM'
    DefaultFormats.DisplayFormatTime = 'hh:mm AMPM'
    Left = 376
    Top = 464
    poSQLINT64ToBCD = True
    dcForceMasterRefresh = True
    dcForceOpen = True
  end
  object TRead_Production: TpFIBTransaction
    Active = True
    DefaultDatabase = Database
    Left = 376
    Top = 560
  end
  object TWrite_Production: TpFIBTransaction
    DefaultDatabase = Database
    Left = 376
    Top = 608
  end
  object S_Production_SP: TDataSource
    DataSet = DS_Production_SP
    Left = 464
    Top = 512
  end
  object DS_Production_SP: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE PRODUCTION_SP'
      'SET '
      '    GOOD_ID = :GOOD_ID,'
      '    CNT = :CNT,'
      '    NAKL_ID = :MAS_ID,'
      '    DEPOT_ID = :DEPOT_ID,'
      '    WEIGHT_TOTAL = :WEIGHT_TOTAL'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    PRODUCTION_SP'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO PRODUCTION_SP('
      '    ID,'
      '    GOOD_ID,'
      '    CNT,'
      '    NAKL_ID,'
      '    DEPOT_ID,'
      '    WEIGHT_TOTAL'
      ')'
      'VALUES('
      '    :ID,'
      '    :GOOD_ID,'
      '    :CNT,'
      '    :MAS_ID,'
      '    :DEPOT_ID,'
      '    :WEIGHT_TOTAL'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    P.ID,'
      '    P.GOOD_ID,'
      '    P.CNT,'
      '    P.NAKL_ID,'
      '    P.DEPOT_ID,'
      '    G.FULLNAME NAME,'
      
        '    IIF(P.GOOD_ID IS NULL, '#39#39', IIF(G.UNIT = 0, '#39#1096#1090'.'#39', '#39#1082#1075'.'#39')) AS' +
        ' UNIT,'
      '    G.UNIT UNIT_ID,'
      '    D.NAME DEPOT_NAME,'
      '    P.WEIGHT_TOTAL'
      'FROM PRODUCTION_SP P'
      'JOIN GOODS G ON G.ID = P.GOOD_ID'
      'JOIN DEPOTS D ON D.ID = P.DEPOT_ID'
      'WHERE P.ID = :OLD_ID'
      '')
    SelectSQL.Strings = (
      'SELECT'
      '    P.ID,'
      '    P.GOOD_ID,'
      '    P.CNT,'
      '    P.NAKL_ID,'
      '    P.DEPOT_ID,'
      '    G.FULLNAME NAME,'
      
        '    IIF(P.GOOD_ID IS NULL, '#39#39', IIF(G.UNIT = 0, '#39#1096#1090'.'#39', '#39#1082#1075'.'#39')) AS' +
        ' UNIT,'
      '    G.UNIT UNIT_ID,'
      '    D.NAME DEPOT_NAME,'
      '    P.WEIGHT_TOTAL'
      'FROM PRODUCTION_SP P'
      'JOIN GOODS G ON G.ID = P.GOOD_ID'
      'JOIN DEPOTS D ON D.ID = P.DEPOT_ID'
      'WHERE P.NAKL_ID = :ID')
    AutoUpdateOptions.UpdateTableName = 'PRODUCTION_SP'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'PRODUCTION_SP_ID_GEN'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AfterDelete = DS_Production_SPAfterDelete
    AfterPost = DS_Production_SPAfterPost
    OnNewRecord = DS_Production_SPNewRecord
    Transaction = TRead_Production_SP
    Database = Database
    UpdateTransaction = TWrite_Production_SP
    AutoCommit = True
    DataSource = S_Production
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm AMPM'
    DefaultFormats.DisplayFormatTime = 'hh:mm AMPM'
    Left = 464
    Top = 464
    poSQLINT64ToBCD = True
    dcForceMasterRefresh = True
    dcForceOpen = True
  end
  object TRead_Production_SP: TpFIBTransaction
    Active = True
    DefaultDatabase = Database
    Left = 464
    Top = 560
  end
  object TWrite_Production_SP: TpFIBTransaction
    DefaultDatabase = Database
    Left = 464
    Top = 608
  end
end
