{
  pkgs,
  config,
  ...
}: {
  plugins = {
    codecompanion = {
      enable = true;
    };
  };
}
