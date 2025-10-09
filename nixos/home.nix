{ config, pkgs, ... }:

{
  # User configuration
  home.username = "joaquin";
  home.homeDirectory = "/home/joaquin";
  home.stateVersion = "25.05";

  # Configurations
  home.file.".config/foot".source = ../foot;
  home.file.".config/hypr".source = ../hyprland;
  home.file.".config/lf".source = ../lf;
  home.file.".config/mako".source = ../mako;
  home.file.".config/nvim".source = ../neovim;
  home.file.".p10k.zsh".source = ../zsh/.p10k.zsh;
  home.file.".config/rofi".source = ../rofi;
  home.file.".config/Kvantum".source = ../kvantum;
  home.file.".config/swayosd".source = ../swayosd;
  home.file.".config/tmux".source = ../tmux;
  home.file.".config/waybar".source = ../waybar;
  home.file.".icons".source = ../icons;
  home.file.".themes".source = ../themes;
  home.file.".zprofile".source = ../zsh/.zprofile;
  home.file.".zshenv".text = ''
  # Core theming
  export GTK_THEME=Adwaita-Mono
  export GTK_ICON_THEME="Papirus-Dark"
  export XDG_ICON_THEME="Papirus-Dark"
  export QT_QPA_PLATFORMTHEME=qt6ct
  export XCURSOR_THEME=Bibata-Modern-Classic
  export XCURSOR_SIZE=24

  # Editor and terminal
  export EDITOR="nvim"
  export VISUAL="nvim"
  export TERM=xterm-256color
  export TERMINAL="foot"

  # Language locales
  export LANG=en_US.UTF-8
  export LC_ALL=en_US.UTF-8

  # Path variables
  export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$PATH"
  export NIXPKGS_ALLOW_UNFREE=1
  '';

  # FZF
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  # Packages
  home.packages = with pkgs; [
    bat
    bibata-cursors
    btop
    celluloid
    chafa
    cliphist
    eza
    fastfetchMinimal
    foot
    fzf
    grim
    hyprlock
    hyprpicker
    hyprshot
    imv
    lazygit
    lf
    mako
    neovim
    ripgrep
    unstable.impala
    unstable.swayosd
    unstable.wiremix
    tmux
    waybar
    wbg
    wl-clipboard
    zsh-powerlevel10k
  ];

  # Rofi
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    plugins = [pkgs.rofi-emoji];
  };

  # Variables
  home.sessionVariables = {
    GIO_EXTRA_MODULES = "${pkgs.gvfs}/lib/gio/modules";
  };

  # Zoxide
  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };

  # Z Shell
  programs.zsh = {
    enable = true;
    syntaxHighlighting.enable = true;
    autosuggestion.enable = true;
    history = {
      size = 5000;
      save = 5000;
      share = true;
      ignoreSpace = true;
      extended = true;
      ignorePatterns = [ "ls *" "cd *" "pwd *" ];
    };
    shellAliases = {
      bat = "bat --color=always --theme=base16 --style=plain";
      c = "clear";
      flatpak = "flatpak --user";
      fzf = ''
      fzf --preview "
        if [ -d {} ]; then
          eza -l --color=always {} || ls -la {}
        else
          bat --color=always --theme=base16 --style=plain {}
        fi
      "
      '';
      grep = "rg";
      k = "kill";
      lsa = "eza -a";
      ll = "eza -l";
      lla = "eza -la";
      ls = "eza";
      "nv-run" = "__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia";
      paru = "paru --skipreview";
      paruf = "~/.bin/parufzf";
      pk = "pkill";
      vim = "nvim";
      v = "nvim";
      "nix-shell" = "nix-shell --run $SHELL";
    };
    initContent = ''
precmd() {
  print -Pn "\e]0;%n@%m:%~\a"
}
source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
    if command -v fastfetch >/dev/null 2>&1; then
      fastfetch
      echo ""
    fi
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
    cd() {
      z "$@" && eza
    }
stty intr "^G"
bindkey "^c" kill-whole-line
bindkey "^a" beginning-of-line
bindkey "^e" end-of-line
bindkey "^j" history-search-forward
bindkey "^k" history-search-backward
bindkey "^r" fzf-history-widget
    '';
  };
}
