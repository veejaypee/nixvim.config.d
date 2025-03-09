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
    cursorline = true;
    cursorlineopt = "both";
  };
  colorschemes.catppuccin = {
    enable = true;
    settings = {
      flavour = "mocha";
    };
  };
}
