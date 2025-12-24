{ config, pkgs, ... }:

{
  # Shell integrations
  imports = [
    ./shell/aliases.nix
    ./shell/functions.nix
    ./shell/integrations/programs.nix
    ./shell/integrations/yazi.nix
  ];

  # Base zsh configuration
  programs.zsh = {
    defaultKeymap = "emacs"; # Use Emacs binds
    enable = true; # Enable zsh for configuration

    # Plugins
    syntaxHighlighting.enable = true; # Colorize your shell
    autosuggestion.enable = true; # Autosuggestions
    enableCompletion = true; # Auto-completions

    # History configuration
    history = {
      size = 5000;
      save = 5000;
      share = true;
      ignoreSpace = true; # Don't include statements that start with a space
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
