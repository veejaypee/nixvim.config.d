{
  pkgs,
  config,
  ...
}: {
  plugins.orgmode = {
    enable = true;
    settings = {
      org_agenda_files = "~/orgfiles/**/*";
      org_default_notes_file = "~/orgfiles/refile.org";
    };
  };
}
