{
  pkgs,
  config,
  ...
}: {
  autoCmd = [
    {
      desc = "Highlight when tanking text";
      group = "kickstart-highlight-yank";
      callback.__raw = ''
        function()
            vim.hl.on_yank()
          end,
      '';
    }
  ];
  autoGroups = {
    "kickstart-highlight-yank".clear = true;
  };
}
