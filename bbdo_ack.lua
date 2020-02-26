bbdo_ack_proto = Proto("bbdo_ack", "BBDO Ack")


local f_ack = ProtoField.uint32("bbdo_ack.ack_event", "Ack event", base.HEX, nil, nil, "")

bbdo_ack_proto.fields = { f_ack }

function bbdo_ack_proto.dissector(buffer, pinfo, tree)
  pinfo.cols.protocol = "BBDO ACKNOWLEDGE"
  local subtree = tree:add(bbdo_ack_proto, buffer(), "BBDO Acknowledge")
  subtree:add(f_ack, buffer(0,4))
end
