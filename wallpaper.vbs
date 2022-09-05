dim shell dim user

Set shell = WScript.CreateObject("WScript.Shell") user = shell.ExpandEnvironmentStrings("%USERNAME%")

Set fso = CreateObject("Scripting.FileSystemObject")

windowsDir = fso.GetSpecialFolder(0) wallpaper = "C:\Users\olive\Pictures\mountains2"

shell.RegWrite "HKCU\Control Panel\Desktop\Wallpaper", wallpaper

shell.Run "%windowsDir%\System32\RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters", 1, True