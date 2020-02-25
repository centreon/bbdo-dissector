bbdo_resp_proto = Proto("bbdo_response", "BBDO Response")

function bbdo_resp_proto.dissector(buffer, pinfo, tree)

  pinfo.cols.protocol = "BBDO RESPONSE"
  local subtree = tree:add(bbdo_resp_proto, buffer(), "BBDO Response")
  subtree:add(buffer(0,2), "Major: "..buffer(0,2):uint())
  subtree:add(buffer(2,2), "Minor: "..buffer(2,2):uint())
  subtree:add(buffer(4,2), "Patch: "..buffer(4,2):uint())
end
