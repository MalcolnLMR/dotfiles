Dependencies that I needed:
```bash
sudo pacman -S lutris wine winetricks lib32-mesa lib32-vulkan-icd-loader lib32-vkd3d vkd3d lib32-gstreamer gstreamer gst-libav lib32-gst-plugins-base-libs
```

```bash
yay -S dxvk-bin
```

```bash
sudo pacman -S wine-staging
sudo pacman -S --needed --asdeps giflib lib32-giflib gnutls lib32-gnutls v4l-utils lib32-v4l-utils libpulse \
lib32-libpulse alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib sqlite lib32-sqlite libxcomposite \
lib32-libxcomposite ocl-icd lib32-ocl-icd libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs \
lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader sdl2-compat lib32-sdl2-compat
```

```json
Command exited with code 256

Traceback (most recent call last):

  File "/usr/lib/python3.13/site-packages/lutris/exception_backstops.py", line 79, in error_wrapper
    return handler(*args, **kwargs)

  File "/usr/lib/python3.13/site-packages/lutris/util/jobs.py", line 131, in wrapper
    repeat = func(*a, **kw)

  File "/usr/lib/python3.13/site-packages/lutris/installer/commands.py", line 439, in _monitor_task
    raise ScriptingError(_("Command exited with code %s") % command.return_code)

lutris.installer.errors.ScriptingError: Command exited with code 256

Lutris log:
[INFO:2025-12-15 11:38:43,838:application]: Starting Lutris 0.5.19
[INFO:2025-12-15 11:38:43,858:startup]: "card1" is Advanced Micro Devices, Inc. [AMD/ATI] Navi 44 [Radeon RX 9060 XT] (1002:7590 1043:0639 amdgpu) Driver 25.3.1
[ERROR:2025-12-15 11:38:43,858:startup]: i386 libgnutls.so.30 missing (needed by gnutls)
[INFO:2025-12-15 11:39:31,923:file_box]: Download completed
[INFO:2025-12-15 11:39:44,433:file_box]: Download completed
[INFO:2025-12-15 11:39:44,433:files_box]: All files available
[INFO:2025-12-15 11:39:44,434:installerwindow]: All files are available, continuing install
[INFO:2025-12-15 11:39:44,434:installerwindow]: Launching installer commands
[INFO:2025-12-15 11:39:44,440:wine]: Creating a win64 prefix in /home/malcolnlmr/games/epic-games-store
[INFO:2025-12-15 11:39:44,440:wine]: Winepath: /home/malcolnlmr/.local/share/Steam/steamapps/common/Proton Hotfix/files/bin/wine
[INFO:2025-12-15 11:39:45,941:wine]: win64 Prefix created in /home/malcolnlmr/games/epic-games-store
[INFO:2025-12-15 11:39:45,956:wine]: winetricks: Valve official Proton builds do not support winetricks.
[WARNING:2025-12-15 11:39:45,974:runner]: Accessing game config while runner wasn't given one.
[WARNING:2025-12-15 11:39:46,023:runner]: Accessing game config while runner wasn't given one.
[WARNING:2025-12-15 11:39:46,023:runner]: Accessing game config while runner wasn't given one.
[ERROR:2025-12-15 11:39:46,023:wine]: The game doesn't have an executable
[WARNING:2025-12-15 11:39:58,044:runner]: Accessing game config while runner wasn't given one.
[INFO:2025-12-15 11:41:28,363:runner]: Download canceled by the user.
[INFO:2025-12-15 11:49:11,289:egs]: EGS detected in /home/malcolnlmr/games/epic-games-store
[WARNING:2025-12-15 11:49:11,289:egs_launcher]: No valid path for EGS games manifests in /home/malcolnlmr/games/epic-games-store/drive_c/ProgramData/Epic/EpicGamesLauncher/Data/Manifests
[INFO:2025-12-15 12:21:48,247:file_box]: Download completed
[INFO:2025-12-15 12:21:48,247:files_box]: All files available
[INFO:2025-12-15 12:21:48,247:installerwindow]: All files are available, continuing install
[INFO:2025-12-15 12:21:48,247:installerwindow]: Launching installer commands
[INFO:2025-12-15 12:25:00,158:wine]: Creating a win64 prefix in /home/malcolnlmr/games/seeds-of-yggdrasil/prefix
[INFO:2025-12-15 12:25:00,158:wine]: Winepath: /home/malcolnlmr/.local/share/lutris/runners/wine/wine-ge-8-26-x86_64/bin/wine
[INFO:2025-12-15 12:30:00,711:wine]: win64 Prefix created in /home/malcolnlmr/games/seeds-of-yggdrasil/prefix
[WARNING:2025-12-15 12:30:00,721:runner]: Accessing game config while runner wasn't given one.
[ERROR:2025-12-15 12:30:01,737:errors]: Command exited with code 256
[ERROR:2025-12-15 12:30:01,737:exception_backstops]: Error handling timeout function: Command exited with code 256
Traceback (most recent call last):
  File "/usr/lib/python3.13/site-packages/lutris/exception_backstops.py", line 79, in error_wrapper
    return handler(*args, **kwargs)
  File "/usr/lib/python3.13/site-packages/lutris/util/jobs.py", line 131, in wrapper
    repeat = func(*a, **kw)
  File "/usr/lib/python3.13/site-packages/lutris/installer/commands.py", line 439, in _monitor_task
    raise ScriptingError(_("Command exited with code %s") % command.return_code)
lutris.installer.errors.ScriptingError: Command exited with code 256
```

```yaml
name: Seeds of Yggdrasil
game_slug: seeds-of-yggdrasil
version: Installer
slug: seeds-of-yggdrasil-lutris
runner: wine

script:
  game:
    exe: $GAMEDIR/Release/release/Client_tos.exe
    args: -SERVICE /S
    prefix: $GAMEDIR/prefix
    arch: win64
    working_dir: $GAMEDIR/Release
  system:
    prelaunch_command: /usr/bin/python3 -m http.server 8081 --bind 127.0.0.1 --directory
      $GAMEDIR/Release/release/www
    prelaunch_wait: false
    postexit_command: /usr/bin/pkill -f "/usr/bin/python3 -m http.server 8081 --bind
      127.0.0.1 --directory $GAMEDIR/Release/release/www"
  files:
  - latest_client:
      url: "https://nextcloud.enterprise.stormstrike.io/s/3gz5er9xdbK9p8i/download"
      filename: Release.zip
  installer:
  - extract:
      name: Game Extraction
      description: Extracting game files
      file: latest_client
      dst: $GAMEDIR/Release
  - execute:
      name: Linux Patches
      description: Applying Linux-specific patches
      command: unzip -o $GAMEDIR/Release/linux_launcher-extract-in-place-and-overwrite -d $GAMEDIR/Release/
  - task:
      name: winetricks
      description: Installing vcrun2019
      app: vcrun2019
  - task:
      name: winetricks
      description: Installing D3DCompiler 47
      app: d3dcompiler_47
  - write_file:
      name: Set HTTP Port
      description: Update client.xml to check port 8081 instead of port 80
      file: $GAMEDIR/Release/release/client.xml
      content: |
        <ClientCfgFile>
        	<Locale ServiceNation="KOR" Dictionary="YES" DefaultLanguage="English"/>
        	<Nexon UseNexonSSO="NO" UseNexonGameLogManager="NO" SSOServer="No"/>
        	<SecurityApp HackShield="NO" Xigncode="NO"/>
        	<Steam UseSteamClient="NO"/>
        	<Camera Long="45" Lati="38" Fov="45"/>
        	<Sound IgnoreTick="0.03" MaxRange="400" HoldRange="100" MixRate="22050" MaxChannel="16" DistFactor="1000" Pitch="1.0" FlutingVolume="255" MusicVolume="50" SoundVolume="255" TotalVolume="255" EnableReverb="TRUE" OtherCharBattleVolume="128" OtherCharSkillVolume="128" OtherCharVoiceVolume="128"/>
        	<GameOption ServerListURL="http://127.0.0.1:8081/toslive/update/serverlist.xml" StaticConfigURL="http://127.0.0.1:8081/toslive/update/" NewAccountURL="http://127.0.0.1:8081/" PaymentURL="http://127.0.0.1:8081/" LoadingImgURL="http://127.0.0.1:8081/toslive/update/loadingimg/" LoadingImgCount="46"/>
        	<Debug MailFreq="5"/>
        	<HotKey Version="1"/>
        </ClientCfgFile>
  - write_file:
      name: Fix Resolution
      description: Updating user.xml to use your primary display resolution
      file: $GAMEDIR/Release/release/user.xml
      content: |
        <?xml version="1.0" encoding="UTF-8"?>
        <idspace>
            <Login SaveId="1" Id="Adi" RecentServer="9002" RecentChar="1"/>
            <Config UseWater="1" UseFastLoading="0" UseEnvEffect="1" UseHitGlow="1" UseEnvSound="1" CaptureFormat="1" ChatEditVisible="0" MouseSensitivity="1.00" UseCharLod="0" UseEffectHigh="1" DevGamma="10" ResizeLevelOfTextures="0" DrawActorPersent="99" DrawMonsterPersent="99" InverseCameraHor="0" InverseCameraVert="0" InverseCameraZoom="0" CameraZoomIndex="2" UseCameraRotation="0" MaxCameraLongitute="45" Language="English" UseGlow="1" UseFXAA="1" UseWarfog="1" UseDepth="1" UseBloom="1" UseSoftParticle="1" UseHighTexture="1" UseLowOption="0" AutoAdjustLowLevel="1" SklCtrlSpd="200" AutoCellSelectSpd="500" DmgFontScale="1" ShowPadSkillRange="1" SimplifyBuffEffects="1"/>
            <Resolution mode="2" width="$RESOLUTION_WIDTH" height="$RESOLUTION_HEIGHT" BitPerPixel="32" VSync="1"/>
            <Sound TotalVolume="68" SoundVolume="255" FlutingVolume="255" MusicVolume="123" EnableOtherFluting="1" EnableSoundReverb="1" EnableOtherCharBalanceVolume="1" OtherCharBattleVolume="128" OtherCharSkillVolume="128" OtherCharVoiceVolume="128" Language=""/>
        </idspace>
  wine:
    version: wine-ge-8-26-x86_64
```

Requirements:
Python3 linux package
ProtonUp-QT
Bottles or an already existing Wine-GE8-26

>>>note that I used Arch packages for my installs, if you use flatpak or different distros your paths are gonna be different<<<

Instructions for Bottles


When you open Bottles, press the plus button at the top right of the window
set whichever name you want, select Gaming as Environment then hit Create. this makes our needed wineprefix

next step is to open ProtonUp-QT, in the drop down menu select Bottles
hit Add version button at the bottom left
first drop down select Wine-GE, second drop down selevt GE-proton8-26 and hit install
you can close ProtonUp-QT once the install is done

back to Bottles, enter the Environmentyou just created, go in Settings
click Runner, and change it to the Wine-GE you just installed, likely named lutris-GE-Proton8-26
leave DXVK and VKD3D on
scroll down to performance, change Syncrhronization to System
scroll down and change Windows Version to Windows 10

hit the back button at the top left, you're done with the Settings page
scroll down to tools, hit Legacy Wine Tools drop down then click Configuration
when that opens, just make sure the Windows Version shows as Windows 10, if not change it to that

next, still in Legacy Wine Tools, hit Explorer
click the forward slash and navigate to Seeds of Yggdrasil/_CommonRedist folder
double click the python installer there, click customize installation uncheck everything there, click next
uncheck Create shortcuts, and check Add Python to environment variables, then hit install 
next do the same thing but head into vcredist/2015 and install both x64 and x86
and again go to DirectX/Jun2010 scroll down and click DXSETUP.exe to install that
now you can close the explorer window


We are now done with Bottles, you can close it

first thing to do from here is to remove any space in the folder names for the game, for example: Seeds-of-Yggdrasil or SeedsofYggdrasil

now we need to make an edit to soylauncher_linux.sh  
right click and open it up with your prefered text editor
scroll down to line 81 and change the wineprefix first path to the wineprefix you made in bottles, idealy only the last folder name needs to be changed
the 2nd ~/ path is the wine bin for the wine version we installed earlier, if you installed it like earlier picking bottles, the path should be the same for you


now that we are done editing the script, save it and close

now we need to make it an executable, either right click>properties>permission then hit the checkbox
or use your terminal of choice, cd /path/to/folder containing the script then hit enter, then chmod +x ./soylauncher_linux.sh 

if you did not use terminal method, please open it now as we will need it

with terminal open, run this command without quotation mark "sudo iptables -t nat -A OUTPUT -o lo -p tcp --dport 80 -j REDIRECT --to-port 8081"
this only redirect port 80 which the game client uses to port 8081 which the script uses for python

^^^^^^
this will require you to enter your root password, this is the only time you need to enter it and only once per session, so if you log off your pc user or turn the pc off, when you log back on you will have to run this again
^^^^^^

this is the end of the instructions to get the game to run on linux, all you need to do now is double click soylauncher_linux.sh and enjoy