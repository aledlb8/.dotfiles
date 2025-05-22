mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")

$env.config.buffer_editor = "code"

$env.config.show_banner = false

let current_dir = (pwd | str downcase | str replace "/" "\\")
if $current_dir == "c:\\windows\\system32" {
    cd "C:\\Users\\<user>"
}

clear

def config [] {
    ^code ...[
        "C:\\Users\\<user>\\AppData\\Roaming\\alacritty\\alacritty.toml"
        "C:\\Users\\<user>\\AppData\\Roaming\\nushell\\config.nu"
        "C:\\Users\\<user>\\.config\\starship.toml"
    ]
}