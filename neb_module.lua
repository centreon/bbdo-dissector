neb_module_proto = Proto("neb_module", "NEB Module")

local f_args = ProtoField.stringz("neb_module.args", "args")
local f_enabled = ProtoField.bool("neb_module.enabled", "enabled", 8, nil, 0x1)
local f_filename = ProtoField.stringz("neb_module.filename", "filename")
local f_poller_id = ProtoField.uint32("neb_module.poller_id", "poller id", base.HEX, nil, nil, "")
local f_loaded = ProtoField.bool("neb_module.loaded", "loaded", 8, nil, 0x1)
local f_should_be_loaded = ProtoField.bool("neb_module.should_be_loaded", "should be loaded", 8, nil, 0x1)

neb_module_proto.fields = { f_args, f_enabled, f_filename, f_poller_id, f_loaded, f_should_be_loaded }

function neb_module_proto.dissector(buffer, pinfo, tree)
    pinfo.cols.protocol = "NEB Module"
    local subtree = tree:add(neb_module_proto, buffer(), "NEB Module")
    local len = buffer(0):stringz():len() + 1
    local off = len
    subtree:add(f_args, buffer(0, len))
    subtree:add(f_enabled, buffer(0 + off, 1))

    len = buffer(1 + off):stringz():len() + 1
    subtree:add(f_filename, buffer(1 + off, len))
    off = off + len

    subtree:add(f_poller_id, buffer(1 + off, 4))
    subtree:add(f_loaded, buffer(5 + off, 1))
    subtree:add(f_should_be_loaded, buffer(6 + off, 1))
end
