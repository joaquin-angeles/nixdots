{ config, pkgs, ... }:

{
  programs.zsh = {
    defaultKeymap = "emacs";
    enable = true;
    syntaxHighlighting.enable = true;
    autosuggestion.enable = true;
    enableCompletion = true;
    history = {
      size = 5000;
      save = 5000;
      share = true;
      ignoreSpace = true;
      extended = true;
      ignorePatterns = [ "ls" "cd" "pwd" "ls *" "cd *" "pwd *" ];
    };
  };
}
