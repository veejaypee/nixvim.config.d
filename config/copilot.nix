{
  pkgs,
  config,
  ...
}: {
  plugins = {
    copilot-chat.enable = true;
    copilot-cmp.enable = true;
    copilot-lua.enable = true;
  };
}
