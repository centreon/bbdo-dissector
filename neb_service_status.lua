neb_service_status_proto = Proto("neb_service_status", "NEB Svc status")

local f_acknowledged = ProtoField.bool("neb_service_status.acknowledge", "acknowledge", 8, nil, 0x1)
local f_acknowledgement_type = ProtoField.uint16("neb_service_status.acknowledgement_type", "acknowledgement type", base.HEX, nil, nil, "")
local f_active_checks_enabled = ProtoField.bool("neb_service_status.active_checks_enabled", "active checks", 8, nil, 0x1)
local f_check_interval = ProtoField.stringz("neb_service_status.check_interval", "check interval")
local f_check_period = ProtoField.stringz("neb_service_status.check_period", "check period")
local f_check_type = ProtoField.uint16("neb_service_status.check_type", "check type", base.HEX, nil, nil, "")
local f_current_check_attempt = ProtoField.uint16("neb_service_status.current_check_attempt", "current check attempt", base.HEX, nil, nil, "")
local f_current_state = ProtoField.uint16("neb_service_status.current_state", "current state", base.HEX, nil, nil, "")
local f_downtime_depth = ProtoField.uint16("neb_service_status.downtime_depth", "downtime depth", base.HEX, nil, nil, "")
local f_enabled = ProtoField.bool("neb_service_status.enabled", "enabled", 8, nil, 0x1)
local f_event_handler = ProtoField.stringz("neb_service_status.event_handler", "event handler")
local f_event_handler_enabled = ProtoField.bool("neb_service_status.event_handler_enabled", "event handler enabled", 8, nil, 0x1)
local f_execution_time = ProtoField.stringz("neb_service_status.execution_time", "event execution time")
local f_flap_detection_enabled = ProtoField.bool("neb_service_status.flap_detection_enabled", "flap detection enabled", 8, nil, 0x1)
local f_has_been_checked = ProtoField.bool("neb_service_status.has_been_checked", "has been checked", 8, nil, 0x1)
local f_host_id = ProtoField.uint32("neb_service_status.host_id", "host id", base.HEX, nil, nil, "")
local f_host_name = ProtoField.stringz("neb_service_status.host_name", "host name")
local f_is_flapping = ProtoField.bool("neb_service_status.is_flapping", "is flapping", 8, nil, 0x1)
local f_last_check = ProtoField.uint64("neb_service_status.last_check", "last check", base.HEX, nil, nil, "")
local f_last_hard_state = ProtoField.uint16("neb_service_status.last_hard_state", "last hard state", base.HEX, nil, nil, "")
local f_last_hard_state_change = ProtoField.uint64("neb_service_status.last_hard_state_change", "last hard state change", base.HEX, nil, nil, "")
local f_last_notification = ProtoField.uint64("neb_service_status.last_notification", "last notification", base.HEX, nil, nil, "")
local f_last_state_change = ProtoField.uint64("neb_service_status.last_state_change", "last state change", base.HEX, nil, nil, "")
local f_last_time_critica = ProtoField.uint64("neb_service_status.last_time_critical", "last time critical", base.HEX, nil, nil, "")
local f_last_time_ok = ProtoField.uint64("neb_service_status.last_time_ok", "last time ok", base.HEX, nil, nil, "")
local f_last_time_unknown = ProtoField.uint64("neb_service_status.last_time_unknown", "last time unknown", base.HEX, nil, nil, "")
local f_last_time_warning = ProtoField.uint64("neb_service_status.last_time_warning", "last time warning", base.HEX, nil, nil, "")
local f_last_update = ProtoField.uint64("neb_service_status.last_update", "last update", base.HEX, nil, nil, "")
local f_latency = ProtoField.stringz("neb_service_status.latency", "latency")
local f_max_check_attempts = ProtoField.uint16("neb_service_status.max_check_attempts", "max check attempts", base.HEX, nil, nil, "")
local f_next_check = ProtoField.uint64("neb_service_status.next_check", "next check", base.HEX, nil, nil, "")
local f_next_notification = ProtoField.uint64("neb_service_status.next_notification", "next notification", base.HEX, nil, nil, "")
local f_no_more_notifications = ProtoField.bool("neb_service_status.no_more_notifications", "no more notifications", 8, nil, 0x1)
local f_notification_number = ProtoField.uint16("neb_service_status.notification_number", "notification number", base.HEX, nil, nil, "")
local f_notifications_enabled = ProtoField.bool("neb_service_status.notifications_enabled", "notifications enabled", 8, nil, 0x1)
local f_obsess_over = ProtoField.bool("neb_service_status.obsess_over", "obsess over", 8, nil, 0x1)
local f_passive_checks_enabled = ProtoField.bool("neb_service_status.passive_checks_enabled", "passive checks enabled", 8, nil, 0x1)
local f_percent_state_change = ProtoField.stringz("neb_service_status.percent_state_change", "percent state change")
local f_retry_interval = ProtoField.stringz("neb_service_status.retry_interval", "retry interval")
local f_service_description = ProtoField.stringz("neb_service_status.service_description", "service description")
local f_service_id = ProtoField.uint32("neb_service_status.service_id", "service id", base.HEX, nil, nil, "")
local f_should_be_scheduled = ProtoField.bool("neb_service_status.should_be_scheduled", "should be scheduled", 8, nil, 0x1)
local f_state_type = ProtoField.uint16("neb_service_status.state_type", "state  type", base.HEX, nil, nil, "")
local f_check_command = ProtoField.stringz("neb_service_status.check_command", "check command")
local f_output = ProtoField.stringz("neb_service_status.output", "output")
local f_perf_data = ProtoField.stringz("neb_service_status.perf_data", "perf data")

neb_service_status_proto.fields = { f_acknowledged, f_acknowledgement_type, f_active_checks_enabled, f_check_interval, f_check_period, f_check_type, f_current_check_attempt, f_current_state, f_downtime_depth, f_enabled, f_event_handler, f_event_handler_enabled, f_execution_time, f_flap_detection_enabled, f_has_been_checked, f_host_id, f_host_name, f_is_flapping, f_last_check, f_last_hard_state, f_last_hard_state_change, f_last_notification, f_last_state_change, f_last_time_critica, f_last_time_ok, f_last_time_unknown, f_last_time_warning, f_last_update, f_latency, f_max_check_attempts, f_next_check, f_next_notification, f_no_more_notifications, f_notification_number, f_notifications_enabled, f_obsess_over, f_passive_checks_enabled, f_percent_state_change, f_retry_interval, f_service_description, f_service_id, f_should_be_scheduled, f_state_type, f_check_command, f_output, f_perf_data }

function neb_service_status_proto.dissector(buffer, pinfo, tree)
    pinfo.cols.protocol = "NEB Svc status"
    local subtree = tree:add(neb_service_status_proto, buffer(), "NEB Svc status")
    subtree:add(f_acknowledged, buffer(0, 1))
    subtree:add(f_acknowledgement_type, buffer(1, 2))
    subtree:add(f_active_checks_enabled, buffer(3, 1))
    local len = buffer(4):stringz():len() + 1
    local off = len
    subtree:add(f_check_interval, buffer(4, len))

    len = buffer(4 + off):stringz():len() + 1
    subtree:add(f_check_period, buffer(4 + off, len))
    off = off + len

    subtree:add(f_check_type, buffer(4 + off, 2))
    subtree:add(f_current_check_attempt, buffer(6 + off, 2))
    subtree:add(f_current_state, buffer(8 + off, 2))
    subtree:add(f_downtime_depth, buffer(10 + off, 2))
    subtree:add(f_enabled, buffer(12 + off, 1))

    len = buffer(13 + off):stringz():len() + 1
    subtree:add(f_event_handler, buffer(13 + off, len))
    off = off + len

    subtree:add(f_event_handler_enabled, buffer(13 + off, 1))

    len = buffer(14 + off):stringz():len() + 1
    subtree:add(f_execution_time, buffer(14 + off, len))
    off = off + len

    subtree:add(f_flap_detection_enabled, buffer(14 + off, 1))
    subtree:add(f_has_been_checked, buffer(15 + off, 1))
    subtree:add(f_host_id, buffer(16 + off, 4))

    len = buffer(20 + off):stringz():len() + 1
    subtree:add(f_host_name, buffer(20 + off, len))
    off = off + len

    subtree:add(f_is_flapping, buffer(20 + off, 1))
    subtree:add(f_last_check, buffer(21 + off, 8))
    subtree:add(f_last_hard_state, buffer(29 + off, 2))
    subtree:add(f_last_hard_state_change, buffer(31 + off, 8))
    subtree:add(f_last_notification, buffer(39 + off, 8))
    subtree:add(f_last_state_change, buffer(47 + off, 8))
    subtree:add(f_last_time_critica, buffer(55 + off, 8))
    subtree:add(f_last_time_ok, buffer(63 + off, 8))
    subtree:add(f_last_time_unknown, buffer(71 + off, 8))
    subtree:add(f_last_time_warning, buffer(79 + off, 8))
    subtree:add(f_last_update, buffer(87 + off, 8))

    len = buffer(95 + off):stringz():len() + 1
    subtree:add(f_latency, buffer(95 + off, 8))
    off = off + len

    subtree:add(f_max_check_attempts, buffer(95 + off, 2))
    subtree:add(f_next_check, buffer(97 + off, 8))
    subtree:add(f_next_notification, buffer(105 + off, 8))
    subtree:add(f_no_more_notifications, buffer(113 + off, 1))
    subtree:add(f_notification_number, buffer(114 + off, 2))
    subtree:add(f_notifications_enabled, buffer(116 + off, 1))
    subtree:add(f_obsess_over, buffer(117 + off, 1))
    subtree:add(f_passive_checks_enabled, buffer(118 + off, 1))

    len = buffer(119 + off):stringz():len() + 1
    subtree:add(f_percent_state_change, buffer(119 + off, 8))
    off = off + len

    len = buffer(119 + off):stringz():len() + 1
    subtree:add(f_retry_interval, buffer(119 + off, 8))
    off = off + len

    len = buffer(119 + off):stringz():len() + 1
    subtree:add(f_service_description, buffer(119 + off, len))
    off = off + len

    subtree:add(f_service_id, buffer(119 + off, 4))
    subtree:add(f_should_be_scheduled, buffer(123 + off, 1))
    subtree:add(f_state_type , buffer(124 + off, 2))

    len = buffer(126 + off):stringz():len() + 1
    subtree:add(f_check_command, buffer(126 + off, len))
    off = off + len

    len = buffer(126 + off):stringz():len() + 1
    subtree:add(f_output, buffer(126 + off, len))
    off = off + len

    subtree:add(f_perf_data, buffer(126 + off))
end
