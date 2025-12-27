{ ... }:

{
    # eza
    programs.eza = {
        enable = true;
        icons = "always"; # Always show icons
        extraOptions = [
            "--group-directories-first"
            "--git"
        ];
    };
}
