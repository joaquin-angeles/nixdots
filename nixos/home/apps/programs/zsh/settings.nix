{ pkgs, ... }:

{
    imports = [
        ./aliases.nix
        ./init.nix # Functions
        # ./zsh/binds.nix # Keybinds

        # zsh integrations
        ./integrations/bat.nix      # Better cat
        ./integrations/eza.nix      # Better ls
        ./integrations/fd.nix       # Better find
        ./integrations/fzf.nix      # Fuzzy finger
        ./integrations/nom.nix      # Better Nix outputs
        ./integrations/ripgrep.nix  # Better grep
        ./integrations/yazi/app.nix # File manager
        ./integrations/zoxide.nix   # Better cd
    ];

    # Base zsh configuration
    programs.zsh = {
        enable = true;
        completionInit = "autoload -Uz compinit && compinit -C";
        defaultKeymap = "emacs"; # Emacs binds
    };
}
