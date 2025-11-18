{ pkgs, ... }:

{
  home.packages = with pkgs; [
    file-roller
    imv
    mpv
    unstable.hyprlock
    unstable.hyprshot
    unstable.impala
    unstable.swayosd
    unstable.wiremix
    zsh-powerlevel10k
  ];
}
