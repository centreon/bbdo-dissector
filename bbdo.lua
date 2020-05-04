bbdo_proto = Proto("bbdo", "BBDO Protocol")

local category_code = {
	[1] = "NEB",
	[2] = "BBDO",
	[3] = "STORAGE",
	[4] = "CORRELATION",
	[5] = "DUMPER",
	[6] = "BAM",
	[7] = "EXTCMD",
	[8] = "GENERATOR"
}

local neb_element_code = {
    [1] = "ACKNOWLEDGMENT",
    [2] = "COMMENT",
    [3] = "CUSTOM VARIABLE",
    [4] = "CUSTOM VARIABLE STATUS",
    [5] = "DOWNTIME",
    [6] = "EVENT HANDLER",
    [7] = "FLAPPING STATUS",
    [8] = "HOST CHECK",
    [9] = "HOST DEPENDENCY",
    [10] = "HOST GROUP",
    [11] = "HOST GROUP MEMBER",
    [12] = "HOST",
    [13] = "HOST PARENT",
    [14] = "HOST STATUS",
    [15] = "INSTANCE",
    [16] = "INSTANCE STATUS",
    [17] = "LOG ENTRY",
    [18] = "MODULE",
    [19] = "SERVICE CHECK",
    [20] = "SERVICE DEPENDENCY",
    [21] = "SERVICE GROUP",
    [22] = "SERVICE GROUP MEMBER",
    [23] = "SERVICE",
    [24] = "SERVICE STATUS",
    [25] = "INSTANCE CONFIGURATION",
    [26] = "RESPONSIVE INSTANCE"
}

local bbdo_element_code = {
    [1] = "RESPONSE",
    [2] = "ACK"
}

local storage_element_code = {
    [1] = "METRIC",
    [2] = "REBUILD",
    [3] = "REMOVE GRAPH",
    [4] = "STATUS",
    [5] = "INDEX MAPPING",
    [6] = "METRIC MAPPING"
}

function dispatch(elem, cat, buff, pinfo, tree)
  if cat == 1 then
    if elem == 3 then
      local cv_stat = Dissector.get("neb_custom_variable")
      cv_stat:call(buff, pinfo, tree)
    elseif elem == 12 then
        local neb_host_stat = Dissector.get("neb_host")
        neb_host_stat:call(buff, pinfo, tree)
    elseif elem == 14 then
        local neb_host_stat = Dissector.get("neb_host_status")
        neb_host_stat:call(buff, pinfo, tree)
    elseif elem == 16 then
      local neb_inst_stat = Dissector.get("neb_instance_status")
      neb_inst_stat:call(buff, pinfo, tree)
    elseif elem == 18 then
      local neb_module = Dissector.get("neb_module")
      neb_module:call(buff, pinfo, tree)
    elseif elem == 19 then
      local neb_svc_check = Dissector.get("neb_service_check")
      neb_svc_check:call(buff, pinfo, tree)
    elseif elem == 24 then
      local neb_svc_status = Dissector.get("neb_service_status")
      neb_svc_status:call(buff, pinfo, tree)
    end
  elseif cat == 2 then
    if elem == 1 then
      local bbdo_resp = Dissector.get("bbdo_response")
      bbdo_resp:call(buff, pinfo, tree)
    elseif elem == 2 then
      local bbdo_ack = Dissector.get("bbdo_ack")
      bbdo_ack:call(buff, pinfo, tree)
    end
  end
end


local f_crc = ProtoField.uint16("bbdo.crc", "Crc", base.HEX, nil, nil, "")
local f_size = ProtoField.uint16("bbdo.size", "Data Size", base.HEX, nil, nil, "")
local f_category = ProtoField.uint16("bbdo.category", "BBDO category", base.HEX, category_code, 0x000F)
local f_element_neb = ProtoField.uint16("bbdo.element", "BBDO element", base.HEX, neb_element_code, 0x00FF)
local f_element_bbdo = ProtoField.uint16("bbdo.element", "BBDO element", base.HEX, bbdo_element_code, 0x0003)
local f_element_storage = ProtoField.uint16("bbdo.element", "BBDO element", base.HEX, storage_element_code, 0x0003)
local f_element = ProtoField.uint16("bbdo.element", "BBDO element", base.HEX, nil, nil, "")
local f_source = ProtoField.uint32("bbdo.src", "BBDO source", base.HEX, nil, nil, "")
local f_dest = ProtoField.uint32("bbdo.dst", "BBDO destination", base.HEX, nil, nil, "")

bbdo_proto.fields = { f_crc, f_size, f_category, f_element_neb, f_element_bbdo, f_element_storage, f_element, f_source, f_dest }

dissect_bbdo = function (buffer, pktinfo, root, offset)
  local pktlen = buffer:len() - offset

  if (pktlen < 4) then
    return pktlen - 4
  end

  if pktlen < (buffer(offset + 2,2):uint() + 0x10) then
    return pktlen - (buffer(offset + 2,2):uint() + 0x10)
  end

  local category = tonumber(buffer(offset + 4, 2):uint())
  local element = tonumber(buffer(offset + 6, 2):uint())

  pktinfo.cols.protocol = "BBDO"

  local subtree = root:add(bbdo_proto, buffer(), "BBDO Header")
  subtree:add(f_crc, buffer(offset,2))
  subtree:add(f_size, buffer(offset + 2,2))
  subtree:add(f_category, buffer(offset + 4,2))
  if category == 1 then
    subtree:add(f_element_neb, buffer(offset + 6,2))
  elseif category == 2 then
    subtree:add(f_element_bbdo, buffer(offset + 6,2))
  elseif category == 3 then
    subtree:add(f_element_storage, buffer(offset + 6,2))
  else
      subtree:add(f_element, buffer(offset + 6,2))
  end
  subtree:add(f_source, buffer(offset + 8,4))
  subtree:add(f_dest, buffer(offset + 12,4))

  dispatch(element, category, buffer(offset + 0x10, buffer(offset + 2,2):uint()):tvb(), pktinfo, root)

  return buffer(offset + 2,2):uint() + 0x10
end

function bbdo_proto.dissector(buffer, pinfo, tree)
  local pktlen = buffer:len()
  local bytes_consumed = 0

  while bytes_consumed < pktlen do
    local result = dissect_bbdo(buffer, pinfo, tree, bytes_consumed)

    if (result > 0) then
        bytes_consumed = bytes_consumed + result
    elseif result == 0 then
        return 0
    else
        pinfo.desegment_offset = bytes_consumed
        result = -result
        pinfo.desegment_len = result
        return pktlen
    end
  end

  return bytes_consumed
end

tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(5669, bbdo_proto)
