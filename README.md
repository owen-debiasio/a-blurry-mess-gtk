# a-blurry-mess-gtk

My Hyprland dot/config files

[Original theme](https://github.com/owen-debiasio/a-blurry-mess) (QT version)
**(No longer maintained)**

<!-- markdownlint-disable MD033 -->

<img
  width="1920"
  height="1080"
  alt="2026-08-11-145123_hyprshot"
  src="https://github.com/user-attachments/assets/2bfb2f6d-9459-4a76-9df1-3d9c11403a63"
/>

<!-- markdownlint-disable MD025 -->

> [!IMPORTANT]  
> This branch is currently built for Hyprland `v0.56.0`

# Basic configuration

## Apps

The apps I choose to use. As always, use what you wish

### Essentials

Things I recommend you have

#### Desktop/System

- **Wallpaper manager**: [hyprpaper](https://github.com/hyprwm/hyprpaper)
- **Bar/Shelf**: [waybar](https://github.com/Alexays/Waybar)
- **Notification Manager**:
  [Sway Notification Center](https://github.com/ErikReider/SwayNotificationCenter)
- **Application launcher**: [wofi](https://github.com/SimplyCEO/wofi)
- **Screen Locker**: [hyprlock](https://github.com/hyprwm/hyprlock)
- **Screenshot manager**: [hyprshot](https://github.com/Gustash/Hyprshot)

#### Essential Apps

- **Terminal**: [kitty](https://github.com/kovidgoyal/kitty)
- **File Manager**: [Nautilus](https://apps.gnome.org/en/Nautilus/)
- **System Monitor**:
  [Resources](https://gitlab.gnome.org/GNOME/Incubator/resources) through Kitty)
- **Disk Manager**: [GNOME Disks](https://apps.gnome.org/DiskUtility/)
- **Bluetooth Manager**: [blueman](https://github.com/blueman-project/blueman)
- **Network Manager**:
  [nm-connection-editor](https://archlinux.org/packages/extra/x86_64/networkmanager/)
- **Audio Control**:
  [Pavucontrol](https://archlinux.org/packages/extra/x86_64/pavucontrol/)

##### Multimedia

- **Image Viewer**: [Loupe](https://apps.gnome.org/Loupe/)
- **Document Viewer**: [Papers](https://apps.gnome.org/en/Papers/)
- **Music Player**: [Decibels](https://apps.gnome.org/en/Decibels/)
- **Video Player**: [Showtime](https://apps.gnome.org/en/Showtime/)

#### Terminal Ricing

- **Shell**: Bash
- **Shell prompt**: [Starship](https://starship.rs/)
- **Extras**:
  - **ble.sh**: [Github Repo](https://github.com/akinomyoga/ble.sh)
  - **bash-completion**: [Github Repo](https://github.com/scop/bash-completion)

##### Theming tools

- **QT Customizer**: [qt6ct](https://github.com/trialuser02/qt6ct),
  [qt5ct](https://github.com/desktop-app/qt5ct),
  [Kvantum](https://github.com/tsujan/kvantum)
- **GTK Customizer**: [nwg-look](https://github.com/nwg-piotr/nwg-look)

### Everyday

Things I use all the time. Not super important but worth mentioning

- **Zen Browser**: [Github Repository](https://github.com/zen-browser)
- **Steam**:
  [Arch Linux package](https://archlinux.org/packages/multilib/x86_64/steam/)
- **Discord**:
  [Arch Linux package](https://archlinux.org/packages/extra/x86_64/discord/)
- **Zed**:
  [Arch Linux package](https://archlinux.org/packages/extra/x86_64/zed/)
- **Prismlauncher**:
  [Arch Linux package](https://archlinux.org/packages/extra/x86_64/prismlauncher/)
- **Gimp**:
  [Arch Linux package](https://archlinux.org/packages/extra/x86_64/gimp/)
- **Audacity**:
  [Arch Linux package](https://archlinux.org/packages/extra/x86_64/audacity/)
- **Fooyin**:
  [Arch Linux package](https://archlinux.org/packages/extra/x86_64/fooyin/)

## Themes

This rice is heavily inspired by the colors of
[Orchis Dark](https://github.com/vinceliuice/Orchis-theme), so that's what I
have provided here.

### Universal

- **GTK/QT**:
  [Orchis Dark (Dark Blue Regular)](https://github.com/vinceliuice/Orchis-theme)
  w/ [Orchis Dark kvantum](https://store.kde.org/p/1458909/)
- **Icon Theme**:
  [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
- **Cursor Theme**:
  [Bibata Modern Classic](https://github.com/ful1e5/Bibata_Cursor)

### [Zed](https://github.com/zed-industries/zed)

- **Theme**:
  [Orchis Dark Zed Theme](https://github.com/owen-debiasio/orchis-dark-zed-theme)

### [Zen Browser](https://github.com/zen-browser)

- [Zen Internet](https://github.com/sameerasw/zeninternet) +
  [Dark Reader](https://addons.mozilla.org/en-US/firefox/addon/darkreader/)
  extension

#### Accent color

> [!NOTE]  
> Set through `about:config` -> `zen.theme.accent-color`

- Accent color: `#3584e4`

#### Mods

Some mods I've chosen to enhance Zen for myself.

- **Disable Status Bar**:
  [Mod Homepage](https://zen-browser.app/mods/b51ff956-6aea-47ab-80c7-d6c047c0d510)
- **Transparent Zen**:
  [Mod Homepage](https://zen-browser.app/mods/642854b5-88b4-4c40-b256-e035532109df)
  - **Settings**:
    - Allow Transparency = `enabled` **(The Linux one too)**
    - Disable transparency when not in focus on Linux = `disabled`
    - Transparent Sidebar = `enabled`
    - Transparent Glance = `true`
    - Enable custom background color = `true`
      - Set color to: `#212121`
