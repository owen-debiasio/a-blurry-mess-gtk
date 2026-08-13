-- Initialize Hyprland Lua Configuration

--------------------------------------------------------------------------------
-- Variables & Environment
--------------------------------------------------------------------------------
local mainMod = "SUPER"
local terminal = "kitty"
local fileManager = "nautilus"
local menu = "wofi --show drun -IibnO"
local systemMonitor = "resources"

--------------------------------------------------------------------------------
-- Environment Variables
--------------------------------------------------------------------------------

-- NVIDIA / Hardware Acceleration
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("GBM_BACKEND", "nvidia-drm")

-- Prime Offload / Vulkan
hl.env("__NV_PRIME_RENDER_OFFLOAD", "1")
hl.env("__VK_LAYER_NV_optimus", "NVIDIA_only")
hl.env("ENABLE_VKBASALT", "1")

-- Toolkit / Backend Preferences
hl.env("GDK_BACKEND", "wayland,x11")
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("CLUTTER_BACKEND", "wayland")

-- Qt Settings
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_SCALE_FACTOR_ROUNDING_POLICY", "RoundPreferFloor")

-- Cursor & Default Apps
hl.env("XCURSOR_SIZE", "24")
hl.env("XCURSOR_THEME", "Bibata-Modern-Classic")
hl.env("EDITOR", "nano")

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
        ["col.active_border"] = "rgba(3584e4ff)",
        ["col.inactive_border"] = "rgba(2d2d2dff)",
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle"
    },

    decoration = {
        rounding = 14,
        blur = {
            enabled = true,
            size = 5,
            passes = 2,
            popups = true,
            special = true,
        },
        motion_blur = { enabled = true },
        wobble = { enabled = true, intensity = 0.075 },
    },

    animations = {
        enabled = true,
        bezier = {
            { name = "easeOutQuint",  p1 = 0.23, p2 = 1,   p3 = 0.32, p4 = 1 },
            { name = "almostLinear", p1 = 0.5,  p2 = 0.5, p3 = 0.75, p4 = 1.0 },
            { name = "quick",        p1 = 0.15, p2 = 0,   p3 = 0.1,  p4 = 1 }
        },
        animation = {
            -- Parent animations (sub-animations inherit speed & curve unless overridden)
            { name = "global",     enabled = true, speed = 8, curve = "default" },
            { name = "windows",    enabled = true, speed = 6, curve = "easeOutQuint" },
            { name = "border",     enabled = true, speed = 10, curve = "easeOutQuint" },
            { name = "layers",     enabled = true, speed = 6, curve = "easeOutQuint" },
            { name = "fade",       enabled = true, speed = 5, curve = "quick" },

            -- Specific overrides (only keeping unique styles or curves)
            { name = "windowsIn",  enabled = true, speed = 15, curve = "quick", style = "popin 95%" },
            { name = "windowsOut", enabled = true, speed = 6,  curve = "quick", style = "popin 85%" },
            { name = "fadeOut",    enabled = true, speed = 5,  curve = "almostLinear" },
            { name = "workspaces", enabled = true, speed = 5,  curve = "almostLinear", style = "fade" }
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

-- Window Rules
hl.window_rule({
    match = { class = "^steam_app_.*" },
    fullscreen = true,
    suppress_event = "maximize",
    stay_focused = false
})

hl.window_rule({ match = { class = ".*" }, opacity = "0.85 0.85 1.0" })

-- Layer Rules
hl.layer_rule({ match = { namespace = "waybar" }, blur = true })

--------------------------------------------------------------------------------
-- Keybindings & Mouse Binds
--------------------------------------------------------------------------------

-- Apps & Core Actions
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + SHIFT + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + SHIFT + ALT + E", hl.dsp.exit())
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd(systemMonitor))
hl.bind(mainMod .. " + SHIFT + Space", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))
hl.bind("SUPER + L", hl.dsp.exec_cmd("__NV_PRIME_RENDER_OFFLOAD=0 hyprlock"))

-- Screenshots via Hyprshot
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd("hyprshot --mode output -o ~/Pictures/Screenshots"))
hl.bind(mainMod .. " + ALT + S", hl.dsp.exec_cmd("hyprshot --mode region -o ~/Pictures/Screenshots"))

-- Focus Movement
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

-- Move Window Position / Move to Monitor
hl.bind(mainMod .. " + SHIFT + left", hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + up", hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + down", hl.dsp.window.move({ direction = "down" }))

-- Workspace Operations Loop
for i = 1, 10 do
    local key = tostring(i % 10)
    hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Mouse Scroll / Window Controls
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Mouse Scroll / Window Controls
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

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
-- Autostart
--------------------------------------------------------------------------------
hl.on("hyprland.start", function()
    -- Export all env variables to DBus & Systemd in a single command
    hl.exec_cmd("dbus-update-activation-environment --systemd --all")
    hl.exec_cmd("systemctl --user import-environment")

    -- Start keyring & sync SSH socket
    hl.exec_cmd("sh -c 'eval $(gnome-keyring-daemon --start --components=secrets,ssh) && dbus-update-activation-environment --systemd SSH_AUTH_SOCK'")

    -- UI Desktop Components
    hl.exec_cmd("swaync")
    hl.exec_cmd("waybar")
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("__NV_PRIME_RENDER_OFFLOAD=0 hyprlock")

    -- Clipboard Daemon
    hl.exec_cmd("wl-clip-persist --clipboard regular")

    -- Focus target defaults
    hl.dispatch(hl.dsp.focus({ workspace = 2 }))
    hl.dispatch(hl.dsp.focus({ monitor = "DP-1" }))
end)

--------------------------------------------------------------------------------
-- Plugins
--------------------------------------------------------------------------------

if hl.plugin.dynamic_cursors then
    hl.config { plugin = { dynamic_cursors = {
        enabled = true,

        mode = "tilt",

        threshold = 3,

        tilt = {
            limit = 5000,
            activation = "negative_quadratic",
            window = 100,
            full = 60,
        },

        shake = { enabled = false },

        hyprcursor = {
            nearest = 1,
            enabled = true,
            resolution = -1,
            fallback = "clientside",
        },
    }}}
end
