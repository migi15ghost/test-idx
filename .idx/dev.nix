{ pkgs, ... }: {
  channel = "stable-23.11"; # or "unstable"
  packages = [
    pkgs.dotnet-sdk_8
  ];
  env = {
    DOTNET_ROOT = "${pkgs.dotnet-sdk}";
  };
  idx = {
    extensions = [    ];
    previews = {
      enable = true;
      previews = {
        web = {
          command = [
            "dotnet"
            "watch"
            "--urls=http://localhost:$PORT"
          ];
          manager = "web";
        };
      };
    };
  };
}