{
  pkgs,
  config,
  ...
}: {
  plugins = {
    java = {
      enable = true;
    };
  };
}
