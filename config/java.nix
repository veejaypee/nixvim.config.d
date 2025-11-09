{
  pkgs,
  config,
  ...
}: {
  plugins = {
    dap.enable = true;
    jdtls = {
      enable = true;
      settings = {
      };
    };
  };
}
