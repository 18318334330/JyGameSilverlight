Name "��ӹȺ����X-�ű�������Ա��"
OutFile "��ӹȺ����X-�ű�������Ա��.exe"
#InstallDir "$PROGRAMFILES\JyGame"
InstallDir "D:\jygame"

XPStyle on

Section
	SetOutPath "$INSTDIR\Resource"
	SetOverwrite ifnewer
	File /r "Resource\*"
SectionEnd

Section
	SetOutPath "$INSTDIR\Scripts"
	SetOverwrite ifnewer
	File /r "..\..\JyGameSL5\Scripts\*"
SectionEnd

Section
    SetOutPath "$INSTDIR"
    SetOverwrite ifnewer
    File "Silverlight.exe"
    ExecWait "$INSTDIR\Silverlight.exe /q /doNotRequireDRMPrompt"
    File "JyGame_secure.xap"
    ExecWait '"$PROGRAMFILES\Microsoft Silverlight\sllauncher.exe" /install:"$INSTDIR\JyGame_secure.xap" /origin:"$INSTDIR\JyGame_secure.xap" /overwrite /shortcut:desktop+startmenu'
SectionEnd

