package = "cosy-ptainfo"
version = "master-1"

source = {
  url = "git://github.com/Seriane/tool-ptainfo",
}

description = {
  summary     = "Show clocks, parameters, states, transitions of a pta.",
  detailed    = [[]],
  license     = "MIT/X11",
  maintainer  = "Alban Linard <alban@linard.fr>",
}

dependencies = {
  "cosy-client",
  "copas-ev",
}

build = {
  type    = "builtin",
  modules = {
    ["cosy.tool.ptainfo"       ] = "src/cosy/tool/ptainfo.lua",
    ["cosy.tool.ptainfo-test"  ] = "src/cosy/tool/ptainfo-test.lua",
  },
}
