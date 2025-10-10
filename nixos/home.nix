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
  home.file.".zprofile".source = ../zsh/.zprofile;

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
    stow
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
    EDITOR = "nvim";
    GIO_EXTRA_MODULES = "${pkgs.gvfs}/lib/gio/modules";
    GTK_THEME = "Adwaita-Mono";
    GTK_ICON_THEME = "Papirus-Dark";
    LANG = "en_US.UTF-8";
    LC_ALL = "en_US.UTF-8";
    NIXPKGS_ALLOW_UNFREE = "1";
    PATH = "$HOME/.local/bin:$HOME/.cargo/bin:${pkgs.stdenv.cc}/bin:$PATH";
    QT_QPA_PLATFORMTHEME = "qt6ct";
    TERM = "xterm-256color";
    VISUAL = "nvim";
    XCURSOR_THEME = "Bibata-Modern-Classic";
    XCURSOR_SIZE = "24";
    XDG_ICON_THEME = "Papirus-Dark";
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
