# a-blurry-mess-gtk

My Hyprland dot/config files

[Original theme](https://github.com/owen-debiasio/a-blurry-mess) (QT version) **(No longer maintained)**

<img width="1920" height="1080" alt="2026-08-11-145123_hyprshot" src="https://github.com/user-attachments/assets/2bfb2f6d-9459-4a76-9df1-3d9c11403a63" />

# Basic configuration

## Apps

The apps I choose to use. As always, use what you wish

### Essentials

#### Desktop/System

- **Wallpaper manager**: [hyprpaper](https://github.com/hyprwm/hyprpaper)
- **Bar/Shelf**: [waybar](https://github.com/Alexays/Waybar)
- **Notification Manager**: [Sway Notification Center](https://github.com/ErikReider/SwayNotificationCenter)
- **Application launcher**: [wofi](https://github.com/SimplyCEO/wofi)
- **Screen Locker**: [hyprlock](https://github.com/hyprwm/hyprlock)
- **Screenshot manager**: [hyprshot](https://github.com/Gustash/Hyprshot)

#### Essential Apps

- **Terminal**: [kitty](https://github.com/kovidgoyal/kitty)
- **File Manager**: [Nemo](https://github.com/linuxmint/nemo)/[Yazi](https://github.com/sxyazi/yazi)
- **System Monitor:** [btop](https://github.com/aristocratos/btop) (Launched through Kitty)

##### Multimedia

- **Image Viewer**: [Ristretto](https://archlinux.org/packages/extra/x86_64/ristretto/)
- **Document Viewer**: [Atril](https://archlinux.org/packages/extra/x86_64/atril/)
- **Music Player**: [Fooyin](https://archlinux.org/packages/extra/x86_64/fooyin/)
- **Video Player**: [mpv](https://archlinux.org/packages/extra/x86_64/mpv/)

##### Theming tools

- **QT Customizer**: [qt6ct](https://github.com/trialuser02/qt6ct)
- **GTK Customizer**: [nwg-look](https://github.com/nwg-piotr/nwg-look)
- **Kvantum**: [Kvantum](https://github.com/tsujan/kvantum)

### Everyday

- **Zen Browser**: [Github Repository](https://github.com/zen-browser)
- **Steam**: [Arch Linux package](https://archlinux.org/packages/multilib/x86_64/steam/)
- **Discord**: [Arch Linux package](https://archlinux.org/packages/extra/x86_64/discord/)
- **Zed**: [Arch Linux package](https://archlinux.org/packages/extra/x86_64/zed/)
- **Prismlauncher**: [Arch Linux package](https://archlinux.org/packages/extra/x86_64/prismlauncher/)
- **Gimp**: [Arch Linux package](https://archlinux.org/packages/extra/x86_64/gimp/)
- **Audacity**: [Arch Linux package](https://archlinux.org/packages/extra/x86_64/audacity/)
- **Fooyin**: [Arch Linux package](https://archlinux.org/packages/extra/x86_64/fooyin/)

## Themes

This rice is heavily inspired by the colors of [Orchis Dark](https://github.com/vinceliuice/Orchis-theme), so that's what I have provided here.

### Universal
- **GTK/QT**: [Orchis Dark (Dark Blue Regular)](https://github.com/vinceliuice/Orchis-theme) w/ [Orchis Dark kvantum](https://store.kde.org/p/1458909/)
- **Icon Theme**: [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
- **Cursor Theme**: [Bibata Modern Classic](https://github.com/ful1e5/Bibata_Cursor)
### [Zed](https://github.com/zed-industries/zed)
- **Theme**: [Orchis Dark Zed Theme](https://github.com/owen-debiasio/orchis-dark-zed-theme)
### [Zen Browser](https://github.com/zen-browser)
- [Zen Internet](https://github.com/sameerasw/zeninternet) + [Dark Reader](https://addons.mozilla.org/en-US/firefox/addon/darkreader/) extension
- Accent color `#3584e4` set through about:config -> `zen.theme.accent-color`
#### Mods
- Disable Status Bar
- Transparent Zen
  - Settings:
    - Allow transparency = `enabled` (The Linux one too)
    - Disable transparency when not in focus on linux = `disabled`
    - Transparent sidebar (bookmarks, history and sync) = `enabled`
    - Transparent glance = `true`
    - Enable custom background color for Zen = `true`
      - Set color to: `#212121`
