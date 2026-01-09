{ ... }:

{
    # eza
    programs.eza = {
        enable = true;
        enableZshIntegration = false;
        icons = "always"; # Always show icons
        extraOptions = [
            "--git"
            "--group-directories-first"
        ];
    };
}
