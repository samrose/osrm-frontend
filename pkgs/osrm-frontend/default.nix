{
  self,
  system,
  inputs,
  pkgs,
}:
(inputs.d2n.lib.makeFlakeOutputs {
  pkgs = pkgs;
  source = self;
  settings = [
    {
      builder = "granular-nodejs";
      translator = "package-lock";
      buildScript = "npm run build";
    }
  ];
}).packages.${system}.default
