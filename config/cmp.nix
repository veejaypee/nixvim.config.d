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
          {name = "cmdline";}
          {name = "path";}
          {name = "treesitter";}
        ];
        mapping = {
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<Tab>" = "cmp.mapping.select_next_item()";
          "<S-Tab>" = "cmp.mapping.select_prev_item()";
        };
      };
    };
    cmp-buffer.enable = true;
    cmp-cmdline.enable = true;
    cmp-conventionalcommits.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp-nvim-lsp-document-symbol.enable = true;
    cmp-nvim-lsp-signature-help.enable = true;
    cmp-snippy.enable = true;
    cmp-path.enable = true;
    cmp-treesitter.enable = true;
  };
}
