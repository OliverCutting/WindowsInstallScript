# SET WALLPAPER
Move-Item -Path C:\Users\olive\Downloads\mountains2.jpg -Destination C:\Users\olive\Pictures\mountains2.jpg
$MyWallpaper="C:\Users\olive\Pictures\mountains2.jpg"
$code = @' 
using System.Runtime.InteropServices; 
namespace Win32{ 
    
     public class Wallpaper{ 
        [DllImport("user32.dll", CharSet=CharSet.Auto)] 
         static extern int SystemParametersInfo (int uAction , int uParam , string lpvParam , int fuWinIni) ; 
         
         public static void SetWallpaper(string thePath){ 
            SystemParametersInfo(20,0,thePath,3); 
         }
    }
 } 
'@

add-type $code 
[Win32.Wallpaper]::SetWallpaper($MyWallpaper)

# INSTALL FIREFOX
# Invoke-WebRequest -Uri "https://download.mozilla.org/?product=firefox-latest-ssl&os=win64&lang=en-GB" -OutFile "C:\Users\olive\Downloads\firefoxsetup.exe"
# Start-Process -FilePath "firefoxsetup.exe" -WorkingDirectory "C:\Users\olive\Downloads\"

# INSTALL VSCODE
Invoke-WebRequest -Uri "https://code.visualstudio.com/sha/download?build=stable&os=win32-user" -OutFile "C:\Users\olive\Downloads\vscode.exe"
Start-Process -FilePath "vscode.exe" -WorkingDirectory "C:\Users\olive\Downloads\"

# INSTALL STEAM
# Invoke-WebRequest -Uri "https://cdn.cloudflare.steamstatic.com/client/installer/SteamSetup.exe" -OutFile "C:\Users\olive\Downloads\SteamSetup.exe"
# Start-Process -FilePath "SteamSetup.exe" -WorkingDirectory "C:\Users\olive\Downloads\"

# INSTALL BATTLE.NET
# Invoke-WebRequest -Uri "https://cdn.cloudflare.steamstatic.com/client/installer/SteamSetup.exe" -OutFile "C:\Users\olive\Downloads\Battle.net-Setup.exe"
# Start-Process -FilePath "Battle.net-Setup.exe" -WorkingDirectory "C:\Users\olive\Downloads\"
