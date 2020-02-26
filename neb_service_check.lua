neb_service_check_proto = Proto("neb_service_check", "NEB SVC CHECK")

local f_active_checks = ProtoField.bool("neb_service_check.active_checks_enabled", "active checks", 8, nil, 0x1)
local f_check_type = ProtoField.uint16("neb_service_check.check_type", "check type", base.HEX, nil, nil, "")
local f_host_id = ProtoField.uint32("neb_service_check.host_id", "Host id", base.HEX, nil, nil, "")
local f_next_check = ProtoField.uint64("neb_service_check.next_check", "next check", base.HEX, nil, nil, "")
local f_service_id = ProtoField.uint32("neb_service_check.service_id", "service id", base.HEX, nil, nil, "")
local f_cmd_line = ProtoField.stringz("neb_service_check.command_line", "Command Line")

neb_service_check_proto.fields = { f_active_checks, f_check_type, f_host_id, f_next_check, f_service_id, f_cmd_line }


function neb_service_check_proto.dissector(buffer, pinfo, tree)
    pinfo.cols.protocol = "NEB Svc Check"
    local subtree = tree:add(neb_service_check_proto, buffer(), "NEB Svc check")
    subtree:add(f_active_checks, buffer(0,1))
    subtree:add(f_check_type, buffer(1,2))
    subtree:add(f_host_id, buffer(3,4))
    subtree:add(f_next_check, buffer(7,8))
    subtree:add(f_service_id, buffer(15,4))
    subtree:add(f_cmd_line, buffer(19))
end
