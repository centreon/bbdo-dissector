neb_custom_variable_proto = Proto("neb_custom_variable", "NEB Custom variables")

local f_enabled = ProtoField.bool("neb_custom_variable.enabled", "enabled", 8, nil, 0x1)
local f_host_id = ProtoField.uint32("neb_custom_variable.host_id", "host id", base.HEX, nil, nil, "")
local f_modified = ProtoField.bool("neb_custom_variable.modified", "modified", 8, nil, 0x1)
local f_name = ProtoField.stringz("neb_custom_variable.name", "name")
local f_service_id = ProtoField.uint32("neb_custom_variable.service_id", "service id", base.HEX, nil, nil, "")
local f_update_time = ProtoField.uint64("neb_custom_variable.update_time", "update_time", base.HEX, nil, nil, "")
local f_var_type = ProtoField.uint16("neb_custom_variable.var_type", "var type", base.HEX, nil, nil, "")
local f_value = ProtoField.stringz("neb_custom_variable.value", "value")
local f_default_value = ProtoField.stringz("neb_custom_variable.default_value", "default value")

neb_custom_variable_proto.fields = { f_enabled, f_host_id, f_modified, f_name, f_service_id, f_update_time, f_var_type, f_value, f_default_value }

function neb_custom_variable_proto.dissector(buffer, pinfo, tree)
    pinfo.cols.protocol = "NEB Custom variables"
    local subtree = tree:add(neb_custom_variable_proto, buffer(), "NEB Custom variables")
    subtree:add(f_enabled, buffer(0, 1))
    subtree:add(f_host_id, buffer(1, 4))
    subtree:add(f_modified, buffer(5, 1))

    local len = buffer(6):stringz():len() + 1
    local off = len
    subtree:add(f_name, buffer(6, len))

    subtree:add(f_service_id, buffer(6 + off, 4))
    subtree:add(f_update_time, buffer(10 + off, 8))
    subtree:add(f_var_type, buffer(18 + off, 2))

    len = buffer(20 + off):stringz():len() + 1
    subtree:add(f_value, buffer(20 + off, len))
    off = off + len

    subtree:add(f_default_value, buffer(20 + off))
end
