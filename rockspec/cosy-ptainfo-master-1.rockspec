package = "cosy-ptainfo"
version = "master-1"

source = {
  url = "git://github.com/Seriane/tool-ptainfo",
}

description = {
  summary     = "Show clocks, parameters, states, transitions of a pta.",
  detailed    = [[]],
  license     = "MIT/X11",
  maintainer  = "Nizar Hdadech",
}

dependencies = {
  "cosy-client",
  "copas-ev",
}

build = {
  type    = "builtin",
  modules = {
    ["cosy.tool.ptainfo"       ] = "src/cosy/tool/graphinfo.lua",
    ["cosy.tool.ptainfo-test"  ] = "src/cosy/tool/ptainfo-test.lua",
  },
}
