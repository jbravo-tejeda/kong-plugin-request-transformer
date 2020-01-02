package = "verifi-request-transformer"
version = "1.0.0-0"

source = {
  url = "git://github.com/Kong/kong-plugin-request-transformer",
  tag = "1.0.0-0"
}

supported_platforms = {"linux", "macosx"}
description = {
  summary = "verifi's Kong Request Transformer Plugin",
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.verifi-request-transformer.migrations.cassandra"] = "kong/plugins/verifi-request-transformer/migrations/cassandra.lua",
    ["kong.plugins.verifi-request-transformer.migrations.postgres"] = "kong/plugins/verifi-request-transformer/migrations/postgres.lua",
    ["kong.plugins.verifi-request-transformer.migrations.common"] = "kong/plugins/verifi-request-transformer/migrations/common.lua",
    ["kong.plugins.verifi-request-transformer.handler"] = "kong/plugins/verifi-request-transformer/handler.lua",
    ["kong.plugins.verifi-request-transformer.access"] = "kong/plugins/verifi-request-transformer/access.lua",
    ["kong.plugins.verifi-request-transformer.schema"] = "kong/plugins/verifi-request-transformer/schema.lua",
  }
}
