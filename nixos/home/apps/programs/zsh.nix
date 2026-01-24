{ pkgs, ... }:

{
    imports = [
        ./zsh/aliases.nix
        ./zsh/extraConfig.nix # Functions
        # ./zsh/binds.nix # Keybinds

        # zsh integrations
        ./zsh/integrations/bat.nix     # Better cat
        ./zsh/integrations/eza.nix     # Better ls
        ./zsh/integrations/fd.nix      # Better find
        ./zsh/integrations/fzf.nix     # Fuzzy finger
        ./zsh/integrations/nom.nix     # Better Nix outputs
        ./zsh/integrations/ripgrep.nix # Better grep
        ./zsh/integrations/yazi.nix    # File manager
        ./zsh/integrations/zoxide.nix  # Better cd
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
            ignorePatterns = [ "ls *" "cd *" "pwd *" ]; # Ignore frequent/redundant commands

            # Ignore duplicate commands
            ignoreDups = true;
            ignoreAllDups = true;
            saveNoDups = true;
            expireDuplicatesFirst = true;
        };
    };
}
