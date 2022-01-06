local util = require 'lspconfig.util'

return {
  default_config = {
    cmd = {
      "pasls",
      -- Uncomment for debugging:
      --"--save-log", "pasls-log", "--save-replay", "pasls-replay"
    };
    --env = {
    --  PP           = "/usr/bin/fpc",
    --  FPCDIR       = "/usr/lib/fpc/src",
    --  LAZARUSDIR   = "/usr/lib/lazarus",
    --  FPCTARGET    = "linux",
    --  FPCTARGETCPU = "x86_64"
    --};
    filetypes = {"pascal"};
    root_dir = util.root_pattern(".git", "Makefile.fpc");
    init_options = {}
  };
  docs = {
    description = [[
https://github.com/Isopod/pascal-language-server

`pascal-language-server`, a language server for Pascal, based on fpc.
]];
    default_config = {
      root_dir = [[root_pattern(".git", "Makefile.fpc")]];
    };
  };
}

-- vim:et ts=2 sw=2
