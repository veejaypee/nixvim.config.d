{
  pkgs,
  config,
  ...
}: {
  plugins = {
    opencode = {
      enable = true;
      # settings = {};
    };
  };
}
