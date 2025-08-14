{
  pkgs,
  config,
  ...
}: {
  plugins = {
    lsp = {
      enable = true;
      servers = {
        # rust_analyzer = {
        #   enable = true;
        #   installRustc = false;
        #   cargoPackage = false;
        #   installCargo = false;
        # };
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
      sources.formatting.alejandra.enable = true;
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
      settings.highlight.enable = true;
    };
    rainbow-delimiters.enable = true;
    trouble = {
      enable = true;
      settings.modes = {
        diagnostics = {
          auto_open = true;
          auto_close = true;
        };
      };
    };
  };
}
