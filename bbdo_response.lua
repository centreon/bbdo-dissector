bbdo_resp_proto = Proto("bbdo_response", "BBDO Response")

local f_major = ProtoField.uint16("bbdo_response.major", "Major", base.HEX, nil, nil, "")
local f_minor = ProtoField.uint16("bbdo_response.minor", "Minor", base.HEX, nil, nil, "")
local f_patch = ProtoField.uint16("bbdo_response.patch", "Patch", base.HEX, nil, nil, "")
local f_ext = ProtoField.stringz("bbdo_response.patch", "Extension")

bbdo_resp_proto.fields = { f_major, f_minor, f_patch, f_ext }


function bbdo_resp_proto.dissector(buffer, pinfo, tree)
  pinfo.cols.protocol = "BBDO RESPONSE"
  local subtree = tree:add(bbdo_resp_proto, buffer(), "BBDO Response")
  subtree:add(f_major, buffer(0,2))
  subtree:add(f_minor, buffer(2,2))
  subtree:add(f_patch, buffer(4,2))
  subtree:add(f_ext, buffer(6))
end
