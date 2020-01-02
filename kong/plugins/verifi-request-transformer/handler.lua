local access = require "kong.plugins.verifi-request-transformer.access"


local VerifiRequestTransformerHandler = {
  VERSION  = "1.0.0",
  PRIORITY = 999,
}


function VerifiRequestTransformerHandler:access(conf)
  access.execute(conf)
end


return VerifiRequestTransformerHandler
