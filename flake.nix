{
  description = "Floxpkgs/Project Template";
  nixConfig.bash-prompt = "[flox] \\[\\033[38;5;172m\\]λ \\[\\033[0m\\]";
  inputs.floxpkgs.url = "github:flox/floxpkgs";

  # Declaration of external resources
  # =================================
  inputs.d2n.url = "github:nix-community/dream2nix";

  # =================================

  outputs = args @ {floxpkgs, ...}: floxpkgs.project args (_: {});
}
