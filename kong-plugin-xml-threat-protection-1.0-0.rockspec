-- This file was automatically generated for the LuaDist project.

package = "kong-plugin-xml-threat-protection"
version = "1.0-0"
supported_platforms = {"linux", "macosx"}
-- LuaDist source
source = {
  tag = "1.0-0",
  url = "git://github.com/LuaDist-testing/kong-plugin-xml-threat-protection.git"
}
-- Original source
-- source = {
--   url = "git://github.com/Trust1Team/kong-plugin-xml-threat-protection",
--   tag = "1.0.0"
-- }
description = {
  summary = "The Kong XML Threat Protection plugin.",
  license = "MIT",
  homepage = "http://www.trust1team.com",
  detailed = [[
  	Address XML vulnerabilities and minimize attacks on your API. Optionally, detect XML payload attacks based on configured limits. Screen against XML threats using the following approaches: 
  	- Validate messages against an XML schema (.xsd)
	- Evaluate message content for specific blacklisted keywords or patterns
	- Detect corrupt or malformed messages before those messages are parsed
  ]],
}
dependencies = {
  "lua ~> 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.xml-threat-protection.handler"] = "src/handler.lua",
    ["kong.plugins.xml-threat-protection.schema"] = "src/schema.lua",
    ["kong.plugins.xml-threat-protection.xml_validator"] = "src/xml_validator.lua"
  }
}