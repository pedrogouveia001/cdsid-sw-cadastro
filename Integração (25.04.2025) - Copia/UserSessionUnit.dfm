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
    Connected = True
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
    Connected = True
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
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'sidfw'
    User = 'root'
    Password = ''
    Protocol = 'mysql'
    Left = 192
    Top = 112
  end
  object ZConnection4: TZConnection
    ControlsCodePage = cCP_UTF16
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'bashe_user'
    User = 'root'
    Password = ''
    Protocol = 'mysql'
    Left = 256
    Top = 112
  end
  object ZQuery6: TZQuery
    Connection = ZConnection6
    Params = <>
    Left = 376
    Top = 56
  end
  object ZConnection6: TZConnection
    ControlsCodePage = cCP_UTF16
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'prometheeroc'
    User = 'root'
    Password = ''
    Protocol = 'mysql'
    Left = 376
    Top = 112
  end
  object ZConnection7: TZConnection
    ControlsCodePage = cCP_UTF16
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'prometheecotimo'
    User = 'root'
    Password = ''
    Protocol = 'mysql'
    Left = 456
    Top = 112
  end
  object ZQuery7: TZQuery
    Connection = ZConnection7
    Params = <>
    Left = 440
    Top = 56
  end
  object ZConnection8: TZConnection
    ControlsCodePage = cCP_UTF16
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'sidmcpm'
    User = 'root'
    Password = ''
    Protocol = 'mysql'
    Left = 496
    Top = 112
  end
  object ZQuery8: TZQuery
    Connection = ZConnection8
    Params = <>
    Left = 488
    Top = 56
  end
end
