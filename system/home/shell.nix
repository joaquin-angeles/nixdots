{ config, pkgs, ... }:

{
    imports = [
        ./shell/aliases.nix
        ./shell/extraConfig.nix # Functions
        ./shell/binds.nix # Keybinds

        # Shell integrations
        ./shell/integrations/bat.nix     # Better cat
        ./shell/integrations/eza.nix     # Better ls
        ./shell/integrations/fd.nix      # Better find
        ./shell/integrations/fzf.nix     # Fuzzy finger
        ./shell/integrations/nom.nix     # Better Nix outputs
        ./shell/integrations/ripgrep.nix # Better grep
        ./shell/integrations/yazi.nix    # File manager
        ./shell/integrations/zoxide.nix  # Better cd
    ];

    # Base zsh configuration
    programs.zsh = {
        defaultKeymap = "emacs"; # Emacs binds
        enable = true;

        # Plugins
        completionInit = "autoload -Uz compinit && compinit -C";
        syntaxHighlighting.enable = true; # Colorize your shell
        autosuggestion.enable = true; # Autosuggestions
        enableCompletion = true; # Auto-completions

        # Powerlevel10K
        plugins = [
            {
                name = "powerlevel10k";
                src  = pkgs.zsh-powerlevel10k;
                file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
            }
        ];

        # History configuration
        history = {
            size = 5000; # HISTSIZE
            save = 5000;
            share = true;
            ignoreSpace = true; # Ignore commands that start with a space
            extended = true;
            ignorePatterns = [ "ls" "cd" "pwd" "ls *" "cd *" "pwd *" ]; # Ignore frequent/redundant commands

            # Ignore duplicate commands
            ignoreDups = true;
            ignoreAllDups = true;
            saveNoDups = true;
            expireDuplicatesFirst = true;
        };
    };
}
