# show file extensions
registry_key 'HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced ' do
  values [{
    name: 'HideFileExt',
    type: :dword,
    data: 0,
  }]
end

# show hidden files
registry_key 'HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced ' do
  values [{
    name: 'Hidden',
    type: :dword,
    data: 1,
  }]
end

# launch explorer to the PC not the user
registry_key 'HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced ' do
  values [{
    name: 'LaunchTo',
    type: :dword,
    data: 1,
  }]
end

registry_key 'HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced ' do
  values [{
    name: 'FullPathAddress',
    type: :dword,
    data: 1,
  }]
end

# disable notification popups
registry_key 'HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced ' do
  values [{
    name: 'EnableBalloonTips',
    type: :dword,
    data: 0,
  }]
end

# disable error reporting popups
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PCHealth\ErrorReporting ' do
  values [{
    name: 'DoReport',
    type: :dword,
    data: 0,
  }]
end

# disable prompting for a shutdown reason
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Reliability' do
  values [{
    name: 'ShutdownReasonOn',
    type: :dword,
    data: 0,
  }]
end
