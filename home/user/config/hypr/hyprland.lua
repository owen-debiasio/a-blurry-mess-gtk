-- Initialize Hyprland Lua Configuration

--------------------------------------------------------------------------------
-- Variables & Environment
--------------------------------------------------------------------------------
local mainMod = "SUPER"
local terminal = "kitty"
local fileManager = "nemo"
local menu = "wofi --show drun -IibnO"
local systemMonitor = "kitty btop"

-- Environment Variables
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("GBM_BACKEND", "nvidia-drm")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("__VK_LAYER_NV_optimus", "NVIDIA_only")
hl.env("ENABLE_VKBASALT", "1")
hl.env("GDK_BACKEND", "wayland,x11")
hl.env("SDL_VIDEODRIVER", "wayland")
hl.env("CLUTTER_BACKEND", "wayland")
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_SCALE_FACTOR_ROUNDING_POLICY", "RoundPreferFloor")
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")
hl.env("XCURSOR_THEME", "Bibata-Modern-Classic")
hl.env("XCURSOR_SIZE", "24")

--------------------------------------------------------------------------------
-- Monitors
--------------------------------------------------------------------------------
hl.monitor({
    output = "DP-1",
    mode = "1920x1080@60",
    position = "0x0",
    scale = 1
})

hl.monitor({
    output = "eDP-1",
    mode = "1920x1080@60",
    position = "-1920x0",
    scale = 1
})

--------------------------------------------------------------------------------
-- Core System Settings (Config Object)
--------------------------------------------------------------------------------
hl.config({
    general = {
        gaps_in = 5,
        gaps_out = 20,
        border_size = 2,
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle"
    },

    decoration = {
        rounding = 14,
        blur = {
            enabled = true,
            size = 6,
            passes = 1,
            popups = true,
            special = true
        }
    },

    animations = {
        enabled = true,
        bezier = {
            { name = "easeOutQuint",  p1 = 0.23, p2 = 1,    p3 = 0.32, p4 = 1 },
            { name = "almostLinear", p1 = 0.5,  p2 = 0.5,  p3 = 0.75, p4 = 1.0 },
            { name = "quick",        p1 = 0.15, p2 = 0,    p3 = 0.1,  p4 = 1 }
        },
        animation = {
            { name = "global",     enabled = true, speed = 10,   curve = "default" },
            { name = "border",     enabled = true, speed = 5.39, curve = "easeOutQuint" },
            { name = "windows",    enabled = true, speed = 4.79, curve = "easeOutQuint" },
            { name = "windowsIn",  enabled = true, speed = 4.1,  curve = "easeOutQuint", style = "popin 87%" },
            { name = "windowsOut", enabled = true, speed = 1.49, curve = "linear",       style = "popin 87%" },
            { name = "fadeIn",     enabled = true, speed = 1.73, curve = "almostLinear" },
            { name = "fadeOut",    enabled = true, speed = 1.46, curve = "almostLinear" },
            { name = "fade",       enabled = true, speed = 3.03, curve = "quick" },
            { name = "layers",     enabled = true, speed = 3.81, curve = "easeOutQuint" },
            { name = "workspaces", enabled = true, speed = 1.94, curve = "almostLinear", style = "fade" }
        }
    },

    misc = {
        force_default_wallpaper = 0,
        disable_hyprland_logo = true,
        disable_splash_rendering = true,
        on_focus_under_fullscreen = 0
    },
})

--------------------------------------------------------------------------------
-- Window & Layer Rules
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Window & Layer Rules (Fixed for Hyprland v0.55)
--------------------------------------------------------------------------------

-- Window Rules
hl.window_rule({ match = { class = "^(steam_app_.)" }, fullscreen = true })
hl.window_rule({ match = { class = "^(steam_app_223470)$" }, stay_focused = true })
hl.window_rule({ match = { class = "^(kcm_about-distro)$" }, float = true })
hl.window_rule({ match = { class = "." }, suppress_event = "maximize" })
hl.window_rule({ match = { xwayland = true, float = true }, no_focus = true })
hl.window_rule({ match = { class = ".*" }, opacity = "0.9 0.9" })

-- Layer Rules
hl.layer_rule({ match = { namespace = "waybar" }, blur = true })

--------------------------------------------------------------------------------
-- Keybindings & Mouse Binds
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Keybindings & Mouse Binds (Fixed for Hyprland v0.55 hl.dsp)
--------------------------------------------------------------------------------

-- Apps & Core Actions
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + SHIFT + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + SHIFT + E", hl.dsp.exec_cmd("hyprctl dispatch exit"))
hl.bind(mainMod .. " + SHIFT + ALT + E", hl.dsp.exit())
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd(systemMonitor))
hl.bind(mainMod .. " + SHIFT + Space", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))
hl.bind("SUPER + L", hl.dsp.exec_cmd("env __NV_PRIME_RENDER_OFFLOAD=0 hyprlock"))

-- Screenshots via Hyprshot
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd("hyprshot --mode output -o ~/Pictures/Screenshots"))
hl.bind(mainMod .. " + ALT + S", hl.dsp.exec_cmd("hyprshot --mode region -o ~/Pictures/Screenshots"))

-- Focus Movement
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

-- Workspace Operations Loop
for i = 1, 10 do
    local key = tostring(i % 10) -- 10 becomes "0"
    hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Mouse Scroll / Window Controls
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Hardware Media & Control Keys (Using trailing flag tables)
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
--------------------------------------------------------------------------------
-- Autostart / Exec-once
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Autostart / Exec-once (Fixed for Hyprland v0.55 Event Hooks)
--------------------------------------------------------------------------------

hl.on("hyprland.start", function()
    -- Core Daemons & Security
    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
    hl.exec_cmd("dbus-update-activation-environment --all")
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("gnome-keyring-daemon --start --components=secrets,ssh")

    -- UI Desktop Components
    hl.exec_cmd("swaync")
    hl.exec_cmd("waybar")
    hl.exec_cmd("hyprpaper")

    -- Clipboard Daemon
    hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")

    -- Look & Feel / Initialization Commands
    hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-theme 'Bibata-Modern-Classic'")
    hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-size 24")
    hl.exec_cmd("hyprctl setcursor Bibata-Modern-Classic 24")
    hl.exec_cmd("hyprctl dispatch workspace 2")
end)
