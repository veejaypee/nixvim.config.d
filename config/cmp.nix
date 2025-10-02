{
  pkgs,
  config,
  ...
}: {
  plugins = {
    cmp = {
      enable = true;
      autoEnableSources = true;
      settings = {
        snippet.expand = "function(args) require('snippy').expand_snippet(args.body) end";
        sources = [
          {name = "snippy";}
          {name = "nvim_lsp";}
          {name = "nvim_lsp_document_symbol";}
          {name = "nvim_lsp_signature_help";}
          {name = "buffer";}
          {name = "path";}
          {name = "treesitter";}
          {name = "conventionalcommits";}
          {name = "cmdline";}
        ];
        mapping = {
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<Tab>" = "cmp.mapping.select_next_item()";
          "<S-Tab>" = "cmp.mapping.select_prev_item()";
        };
      };
    };
  };
}
