bbdo_ack_proto = Proto("bbdo_ack", "BBDO Ack")

function bbdo_ack_proto.dissector(buffer, pinfo, tree)

  pinfo.cols.protocol = "BBDO ACKNOWLEDGE"
  local subtree = tree:add(bbdo_resp_proto, buffer(), "BBDO Acknowledge")
  subtree:add(buffer(0,4), "Acknowledge Event: "..buffer(0,4):uint())
end
