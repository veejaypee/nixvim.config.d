{
  pkgs,
  config,
  ...
}: {
  plugins = {
    lsp = {
      enable = true;
      servers = {
        rust_analyzer = {
          enable = true;
          installRustc = true;
          installCargo = true;
        };
        bashls.enable = true;
        ts_ls.enable = true;
        angularls = {
          enable = true;
          package = null;
        };
        ## vscode-langservers-extracted:
        eslint.enable = true;
        jsonls.enable = true;
        html.enable = true;
        cssls.enable = true;
      };
    };
    none-ls = {
      enable = true;
      enableLspFormat = true;
      sources.formatting = {
        alejandra.enable = true;
      };
    };
    lsp-format.enable = true;
    lsp-lines.enable = true;
    lsp-status.enable = true;
    lspkind = {
      enable = true;
      cmp.enable = true;
    };
    lint.enable = true;
    nix.enable = true;
    treesitter = {
      enable = true;
      settings.auto_install = true;
      settings.highlight.enable = true;
    };
    rainbow-delimiters.enable = true;
    trouble = {
      enable = false;
      settings.modes = {
        diagnostics = {
          auto_open = true;
          auto_close = true;
        };
      };
    };
  };
}
