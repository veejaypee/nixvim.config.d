{
  pkgs,
  config,
  ...
}: {
  imports = [
    ./keymaps.nix
    ./plugins.nix
  ];
  opts = {
    number = true;
    relativenumber = true;
  };
  colorschemes.catppuccin = {
    enable = true;
    settings = {
      flavour = "mocha";
    };
  };
}
