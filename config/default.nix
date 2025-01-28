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
}
