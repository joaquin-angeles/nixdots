{ ... }:

{
    # eza
    programs.eza = {
        enable = true;
        enableZshIntegration = false;
        icons = "always"; # Always show icons
        extraOptions = [
            "--long"
            "--header"
            "--group"
            "--git"
            "--group-directories-first"
        ];
    };
}
