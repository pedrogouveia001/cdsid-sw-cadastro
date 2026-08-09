object IWUserSession: TIWUserSession
  OldCreateOrder = False
  Height = 186
  Width = 631
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 40
    Top = 40
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF16
    HostName = 'localhost'
    Port = 3306
    Database = 'gerenciamento_cdsid'
    User = 'root'
    Password = ''
    Protocol = 'mysql'
    Left = 40
    Top = 104
  end
  object ZQuery2: TZQuery
    Connection = ZConnection2
    Params = <>
    Left = 120
    Top = 40
  end
  object ZQuery3: TZQuery
    Connection = ZConnection3
    Params = <>
    Left = 192
    Top = 48
  end
  object ZQuery4: TZQuery
    Connection = ZConnection4
    Params = <>
    Left = 256
    Top = 48
  end
  object ZConnection2: TZConnection
    ControlsCodePage = cCP_UTF16
    HostName = 'localhost'
    Port = 3306
    Database = 'fitradeoff_data'
    User = 'root'
    Password = ''
    Protocol = 'mysql'
    Left = 120
    Top = 112
  end
  object ZConnection3: TZConnection
    ControlsCodePage = cCP_UTF16
    HostName = 'localhost'
    Port = 3306
    Database = 'sidmcpm'
    User = 'root'
    Password = ''
    Protocol = 'mysql'
    Left = 192
    Top = 112
  end
  object ZConnection4: TZConnection
    ControlsCodePage = cCP_UTF16
    HostName = 'localhost'
    Port = 3306
    Database = 'bashe_user'
    User = 'root'
    Password = ''
    Protocol = 'mysql'
    Left = 256
    Top = 112
  end
  object ZQuery5: TZQuery
    Connection = ZConnection5
    Params = <>
    Left = 312
    Top = 48
  end
  object ZConnection5: TZConnection
    ControlsCodePage = cCP_UTF16
    HostName = 'localhost'
    Port = 3306
    Database = 'prometheeroc'
    User = 'root'
    Password = ''
    Protocol = 'mysql'
    Left = 312
    Top = 112
  end
end
