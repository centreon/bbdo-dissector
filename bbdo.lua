bbdo_proto = Proto("bbdo", "BBDO Protocol")

function get_category(cat)
  if cat == 1 then
    return "NEB"
  elseif cat == 2 then
    return "BBDO"
  elseif cat == 3 then
    return "STORAGE"
  elseif cat == 4 then
    return "CORRELATION"
  elseif cat == 5 then
    return "DUMPER"
  elseif cat == 6 then
    return "BAM"
  elseif cat == 7 then
    return "EXTCMD"
  elseif cat == 8 then
    return "GENERATOR"
  else
    return "UNKNOWN" .. cat
  end
end

function get_element_neb(elem)
  if elem == 1 then
    return "COMMENT"
  elseif elem == 2 then
    return "CUSTOM VARIABLE"
  elseif elem == 3 then
    return "CUSTOM VARIABLE STATUS"
  elseif elem == 4 then
    return "DOWNTIME"
  elseif elem == 5 then
    return "EVENT HANDLER"
  elseif elem == 6 then
    return "FLAPPING STATUS"
  elseif elem == 7 then
    return "HOST CHECK"
  elseif elem == 8 then
    return "HOST DEPENDENCY"
  elseif elem == 9 then
    return "HOST GROUP"
  elseif elem == 10 then
    return "HOST GROUP MEMBER"
  elseif elem == 11 then
    return "HOST"
  elseif elem == 12 then
    return "HOST PARENT"
  elseif elem == 13 then
    return "HOST STATUS"
  elseif elem == 14 then
    return "INSTANCE"
  elseif elem == 15 then
    return "INSTANCE STATUS"
  elseif elem == 16 then
    return "LOG ENTRY"
  elseif elem == 17 then
    return "MODULE"
  elseif elem == 18 then
    return "SERVICE CHECK"
  elseif elem == 19 then
    return "SERVICE DEPENDENCY"
  elseif elem == 20 then
    return "SERVICE GROUP"
  elseif elem == 21 then
    return "SERVICE GROUP MEMBER"
  elseif elem == 22 then
    return "SERVICE"
  elseif elem == 23 then
    return "SERVICE STATUS"
  elseif elem == 24 then
    return "INSTANCE CONFIGURATION"
  elseif elem == 25 then
    return "RESPONSIVE INSTANCE"
  else
    return "UNKNONW"
  end
end

function get_element_bbdo(elem)
  if elem == 1 then
    return "REPONSE"
  elseif elem == 2 then
    return "ACK"
  else
    return "UNKNOWN"
  end
end

function get_elem_storage(elem)
  if elem == 1 then
    return "METRIC"
  elseif elem == 2 then
    return "REBUILD"
  elseif elem == 3 then
    return "REMOVE GRAPH"
  elseif elem == 4 then
    return "STATUS"
  elseif elem == 5 then
    return "INDEX MAPPING"
  elseif elem == 6 then
    return "METRIC MAPPING"
  else
    return "UNKNOWN"
  end
end

function get_elem(cat, elem)
  if cat == 1 then
    return get_element_neb(elem)
  elseif cat == 2 then
    return get_element_bbdo(elem)
  elseif cat == 3 then
    return get_elem_storage(elem)
  else
    return "NOT IMPL YET..."
  end
end

function dispatch(elem, cat, buff, pinfo, tree)
  if cat == 2 then
    if elem == 1 then
      local bbdo_resp = Dissector.get("bbdo_response")
      bbdo_resp:call(buff, pinfo, tree)
    elseif elem == 2 then
      local bbdo_ack = Dissector.get("bbdo_ack")
      bbdo_resp:call(buff, pinfo, tree)
    end
  end
end

function bbdo_proto.dissector(buffer, pinfo, tree)
  local category = tonumber(buffer(4, 2):uint())
  local element = tonumber(buffer(6, 2):uint())
  local cat_name = get_category(category)
  local elem_name = get_elem(category, element)
  local size = buffer(2,2):uint()

  pinfo.cols.protocol = "BBDO (" .. cat_name .. ")"
  local subtree = tree:add(bbdo_proto, buffer(), "BBDO Header")
  subtree:add(buffer(0,2), "CRC16 CCIT: "..buffer(0,2):uint())
  subtree:add(buffer(2,2), "Size: "..size)
  subtree:add(buffer(4,2), "Event Category: "..cat_name)
  subtree:add(buffer(6,2), "Event Element: "..elem_name)
  subtree:add(buffer(8,4), "Source ID: "..buffer(8,4):uint()) 
  subtree:add(buffer(12,4), "Dest ID: "..buffer(12,4):uint())

  dispatch(element, category, buffer(16):tvb(), pinfo, tree)
end

tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(5669, bbdo_proto)
