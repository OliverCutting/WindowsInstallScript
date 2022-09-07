# SET WALLPAPER
$setwallpapersrc = @"
using System.Runtime.InteropServices;

public class Wallpaper
{
  public const int SetDesktopWallpaper = 20;
  public const int UpdateIniFile = 0x01;
  public const int SendWinIniChange = 0x02;
  [DllImport("user32.dll", SetLastError = true, CharSet = CharSet.Auto)]
  private static extern int SystemParametersInfo(int uAction, int uParam, string lpvParam, int fuWinIni);
  public static void SetWallpaper(string path)
  {
    SystemParametersInfo(SetDesktopWallpaper, 0, path, UpdateIniFile | SendWinIniChange);
  }
}
"@
Add-Type -TypeDefinition $setwallpapersrc

[Wallpaper]::SetWallpaper("C:\Users\olive\OneDrive\Pictures\mountains2.jpg")

# ACTIVATE DARK MODE
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 0

# INSTALL FIREFOX
Invoke-WebRequest -Uri "https://download.mozilla.org/?product=firefox-latest-ssl&os=win64&lang=en-GB" -OutFile "C:\Users\olive\Downloads\firefoxsetup.exe"
Start-Process -FilePath "firefoxsetup.exe" -WorkingDirectory "C:\Users\olive\Downloads\"

# INSTALL VSCODE
Invoke-WebRequest -Uri "https://code.visualstudio.com/sha/download?build=stable&os=win32-user" -OutFile "C:\Users\olive\Downloads\vscode.exe"
Start-Process -FilePath "vscode.exe" -WorkingDirectory "C:\Users\olive\Downloads\"

# INSTALL STEELSERIES ENGINE
Invoke-WebRequest -Uri "https://steelseries.com/gg/downloads/gg/latest/windows" -OutFile "C:\Users\olive\Downloads\steelseriesengine.exe"
Start-Process -FilePath "steelseriesengine.exe" -WorkingDirectory "C:\Users\olive\Downloads\"

# INSTALL X-MOUSE BUTTON CONTROL
Invoke-WebRequest -Uri "https://www.highrez.co.uk/scripts/download.asp?package=XMouse" -OutFile "C:\Users\olive\Downloads\xbuttonmousecontrol.exe"
Start-Process -FilePath "xbuttonmousecontrol.exe" -WorkingDirectory "C:\Users\olive\Downloads\"

# INSTALL STEAM
Invoke-WebRequest -Uri "https://cdn.cloudflare.steamstatic.com/client/installer/SteamSetup.exe" -OutFile "C:\Users\olive\Downloads\SteamSetup.exe"
Start-Process -FilePath "SteamSetup.exe" -WorkingDirectory "C:\Users\olive\Downloads\"

# INSTALL BATTLE.NET
Invoke-WebRequest -Uri "https://www.battle.net/download/getInstallerForGame?os=win&gameProgram=BATTLENET_APP&version=Live&id=undefined" -OutFile "C:\Users\olive\Downloads\Battle.net-Setup.exe"
Start-Process -FilePath "Battle.net-Setup.exe" -WorkingDirectory "C:\Users\olive\Downloads\"

# INSTALL DISCORD
Invoke-WebRequest -Uri "https://discord.com/api/downloads/distributions/app/installers/latest?channel=stable&platform=win&arch=x86" -OutFile "C:\Users\olive\Downloads\discord.exe"
Start-Process -FilePath "discord.exe" -WorkingDirectory "C:\Users\olive\Downloads\"

# INSTALL SPOTIFY
Invoke-WebRequest -Uri "https://download.scdn.co/SpotifySetup.exe" -OutFile "C:\Users\olive\Downloads\spotify.exe"
Start-Process -FilePath "spotify.exe" -WorkingDirectory "C:\Users\olive\Downloads\"
