neb_host_status_proto = Proto("neb_host_status", "NEB Host status")

local f_acknowledged = ProtoField.bool("neb_host_status.acknowledged", "acknowledged", 8, nil, 0x1)
local f_acknowledgement_type = ProtoField.uint16("neb_host_status.acknowledgement_type", "acknowledgement type", base.HEX, nil, nil, "")
local f_active_checks = ProtoField.bool("neb_host_status.active_checks", "active checks", 8, nil, 0x1)
local f_check_interval = ProtoField.stringz("neb_host_status.check_interval", "check interval")
local f_check_period = ProtoField.stringz("neb_host_status.check_period", "check period")
local f_check_type = ProtoField.uint16("neb_host_status.check_type", "check type", base.HEX, nil, nil, "")
local f_check_attempt = ProtoField.uint16("neb_host_status.check_attempt", "check attempt", base.HEX, nil, nil, "")
local f_state = ProtoField.uint16("neb_host_status.state", "state", base.HEX, nil, nil, "")
local f_scheduled_downtime_depth = ProtoField.uint16("neb_host_status.scheduled_downtime_depth", "scheduled downtime depth", base.HEX, nil, nil, "")
local f_enabled = ProtoField.bool("neb_host_status.enabled", "enabled", 8, nil, 0x1)
local f_event_handler = ProtoField.stringz("neb_host_status.event_handler", "event handler")
local f_event_handler_enabled = ProtoField.bool("neb_host_status.event_handler_enabled", "event handler enabled", 8, nil, 0x1)
local f_execution_time = ProtoField.stringz("neb_host_status.execution_time", "event execution time")
local f_flap_detection = ProtoField.bool("neb_host_status.flap_detection", "flap_detection", 8, nil, 0x1)
local f_checked = ProtoField.bool("neb_host_status.checked", "checked", 8, nil, 0x1)
local f_host_id = ProtoField.uint32("neb_host_status.host_id", "host id", base.HEX, nil, nil, "")
local f_flapping = ProtoField.bool("neb_host_status.flapping", "flapping", 8, nil, 0x1)
local f_last_check = ProtoField.uint64("neb_host_status.last_check", "last check", base.HEX, nil, nil, "")
local f_last_hard_state = ProtoField.uint16("neb_host_status.last_hard_state", "last hard state", base.HEX, nil, nil, "")
local f_last_hard_state_change = ProtoField.uint64("neb_host_status.last_hard_state_change", "last hard state change", base.HEX, nil, nil, "")
local f_last_notification = ProtoField.uint64("neb_host_status.last_notification", "last notification", base.HEX, nil, nil, "")
local f_last_state_change = ProtoField.uint64("neb_host_status.last_state_change", "last state change", base.HEX, nil, nil, "")
local f_last_time_down  = ProtoField.uint64("neb_host_status.last_time_down", "last time down", base.HEX, nil, nil, "")
local f_last_time_unreachable = ProtoField.uint64("neb_host_status.last_time_unreachable", "last time unreachable", base.HEX, nil, nil, "")
local f_last_time_up = ProtoField.uint64("neb_host_status.last_time_up", "last time up", base.HEX, nil, nil, "")
local f_last_update = ProtoField.uint64("neb_host_status.last_update", "last update", base.HEX, nil, nil, "")
local f_latency = ProtoField.stringz("neb_host_status.latency", "latency")
local f_max_check_attempts = ProtoField.uint16("neb_host_status.max_check_attempts", "max check attempts", base.HEX, nil, nil, "")
local f_next_check = ProtoField.uint64("neb_host_status.next_check", "next check", base.HEX, nil, nil, "")
local f_next_host_notification = ProtoField.uint64("neb_host_status.next_host_notification", "next host notification",  base.HEX, nil, nil, "")
local f_no_more_notifications = ProtoField.bool("neb_host_status.no_more_notifications", "no more notifications", 8, nil, 0x1)
local f_notification_number = ProtoField.uint16("neb_host_status.notification_number", "notification number", base.HEX, nil, nil, "")
local f_notify = ProtoField.bool("neb_host_status.notify", "notify", 8, nil, 0x1)
local f_obsess_over_host = ProtoField.bool("neb_host_status.obsess_over_host", "obsess over host", 8, nil, 0x1)
local f_passive_checks = ProtoField.bool("neb_host_status.passive_checks", "passive checks", 8, nil, 0x1)
local f_percent_state_change = ProtoField.stringz("neb_host_status.percent_state_change", "percent state change")
local f_retry_interval = ProtoField.stringz("neb_host_status.retry_interval", "retry interval")
local f_should_be_scheduled = ProtoField.bool("neb_host_status.should_be_scheduled", "should be scheduled", 8, nil, 0x1)
local f_state_type = ProtoField.uint16("neb_host_status.state_type", "state  type", base.HEX, nil, nil, "")
local f_check_command = ProtoField.stringz("neb_host_status.check_command", "check_command")
local f_output = ProtoField.stringz("neb_host_status.output", "output")
local f_perfdata = ProtoField.stringz("neb_host_status.perfdata", "perfdata")

neb_host_status_proto.fields = { f_acknowledged, f_acknowledgement_type, f_active_checks, f_check_interval, f_check_period, f_check_type, f_check_attempt, f_state, f_scheduled_downtime_depth, f_enabled, f_event_handler, f_event_handler_enabled, f_execution_time, f_flap_detection, f_checked, f_host_id, f_flapping, f_last_check, f_last_hard_state, f_last_hard_state_change, f_last_notification, f_last_state_change, f_last_time_down, f_last_time_unreachable, f_last_time_up, f_last_update, f_latency, f_max_check_attempts, f_next_check, f_next_host_notification, f_no_more_notifications,  f_notification_number, f_notify, f_obsess_over_host, f_passive_checks, f_percent_state_change, f_retry_interval, f_should_be_scheduled, f_state_type, f_check_command, f_output, f_perfdata}

function neb_host_status_proto.dissector(buffer, pinfo, tree)
    pinfo.cols.protocol = "NEB Hst status"
    local subtree = tree:add(neb_host_status_proto, buffer(), "NEB Hst status")
    subtree:add(f_acknowledged, buffer(0, 1))
    subtree:add(f_acknowledgement_type, buffer(1, 2))
    subtree:add(f_active_checks, buffer(3, 1))

    local len = buffer(4):stringz():len() + 1
    local off = len
    subtree:add(f_check_interval, buffer(4, len))

    len = buffer(4 + off):stringz():len() + 1
    subtree:add(f_check_period, buffer(4 + off, len))
    off = off + len

    subtree:add(f_check_type, buffer(4 + off, 2))
    subtree:add(f_check_attempt, buffer(6 + off, 2))
    subtree:add(f_state, buffer(8 + off, 2))
    subtree:add(f_scheduled_downtime_depth, buffer(10 + off, 2))
    subtree:add(f_enabled, buffer(12 + off, 1))

    len = buffer(12 + off):stringz():len() + 1
    subtree:add(f_event_handler, buffer(12, len))
    off = off + len

    subtree:add(f_event_handler_enabled, buffer(12 + off, 1))

    len = buffer(13 + off):stringz():len() + 1
    subtree:add(f_execution_time, buffer(13 + off, len))
    off = off + len

    subtree:add(f_flap_detection, buffer(13 + off, 1))
    subtree:add(f_checked, buffer(14 + off, 1))
    subtree:add(f_host_id, buffer(15 + off, 4))
    subtree:add(f_flapping, buffer(19 + off, 1))
    subtree:add(f_last_check, buffer(20 + off, 8))
    subtree:add(f_last_hard_state, buffer(28 + off, 2))
    subtree:add(f_last_hard_state_change, buffer(30 + off, 8))
    subtree:add(f_last_notification, buffer(38 + off, 8))
    subtree:add(f_last_state_change, buffer(46 + off, 8))
    subtree:add(f_last_time_down, buffer(54 + off, 8))
    subtree:add(f_last_time_unreachable, buffer(62 + off, 8))
    subtree:add(f_last_time_up, buffer(70 + off, 8))
    subtree:add(f_last_update, buffer(78 + off, 8))

    len = buffer(86 + off):stringz():len() + 1
    subtree:add(f_latency, buffer(86 + off, len))
    off = off + len

    subtree:add(f_max_check_attempts, buffer(86 + off, 2))
    subtree:add(f_next_check, buffer(88 + off, 8))
    subtree:add(f_next_host_notification, buffer(96 + off, 8))
    subtree:add(f_no_more_notifications, buffer(104 + off, 1))
    subtree:add(f_notification_number, buffer(105 + off, 2))
    subtree:add(f_notify, buffer(107 + off, 1))
    subtree:add(f_obsess_over_host, buffer(108 + off, 1))
    subtree:add(f_passive_checks, buffer(109 + off, 1))

    len = buffer(110 + off):stringz():len() + 1
    subtree:add(f_percent_state_change, buffer(110 + off, len))
    off = off + len

    len = buffer(110 + off):stringz():len() + 1
    subtree:add(f_retry_interval, buffer(110 + off, len))
    off = off + len

    subtree:add(f_should_be_scheduled, buffer(110 + off, 1))
    subtree:add(f_state_type, buffer(111 + off, 2))

    len = buffer(113 + off):stringz():len() + 1
    subtree:add(f_check_command, buffer(113 + off, len))
    off = off + len

    len = buffer(113 + off):stringz():len() + 1
    subtree:add(f_output, buffer(113 + off, len))
    off = off + len

    len = buffer(113 + off):stringz():len() + 1
    subtree:add(f_perfdata, buffer(113 + off, len))
    off = off + len
end