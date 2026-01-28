{ pkgs, ... }:

{
    programs.zsh = {
        # Plugins
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
    };
}
