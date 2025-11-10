{
  pkgs,
  config,
  ...
}: {
  autoCmd = [
    {
      event = ["TextYankPost"];
      desc = "Highlight when yanking text";
      group = "kickstart-highlight-yank";
      callback.__raw = ''
        function()
        vim.hl.on_yank()
        end
      '';
    }
  ];
  autoGroups = {
    kickstart-highlight-yank = {
      clear = true;
    };
  };
}
