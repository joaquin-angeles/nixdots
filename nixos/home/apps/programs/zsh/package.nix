{ pkgs, ... }:

{
    imports = [
        ./aliases.nix
        ./config/init.nix
        ./config/history.nix
        ./config/plugins.nix

        # zsh integrations
        ./integrations/bat.nix          # Better cat
        ./integrations/eza.nix          # Better ls
        ./integrations/fd.nix           # Better find
        ./integrations/fzf.nix          # Fuzzy finger
        ./integrations/nom.nix          # Better Nix outputs
        ./integrations/ripgrep.nix      # Better grep
        ./integrations/yazi/package.nix # File manager
        ./integrations/zoxide.nix       # Better cd
    ];

    # Base zsh configuration
    programs.zsh = {
        enable = true;
        completionInit = "autoload -Uz compinit && compinit -C";
        defaultKeymap = "emacs"; # Emacs binds
    };
}
