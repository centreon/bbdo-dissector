neb_host_proto = Proto("neb_host", "NEB status")

local f_acknowledged = ProtoField.bool("neb_host.acknowledged", "acknowledged", 8, nil, 0x1)
local f_acknowledgement_type = ProtoField.uint16("neb_host.acknowledgement_type", "acknowledgement type", base.HEX, nil, nil, "")
local f_action_url = ProtoField.stringz("neb_host.action_url", "action url")
local f_active_checks = ProtoField.bool("neb_host.active_checks", "active checks", 8, nil, 0x1)
local f_address = ProtoField.stringz("neb_host.address", "address")
local f_alias = ProtoField.stringz("neb_host.alias", "alias")
local f_check_freshness = ProtoField.bool("neb_host.check_freshness", "check freshness", 8, nil, 0x1)
local f_check_interval = ProtoField.bool("neb_host.check_interval", "check interval", 8, nil, 0x1)
local f_check_period = ProtoField.bool("neb_host.check_period", "check period", 8, nil, 0x1)
local f_check_type = ProtoField.bool("neb_host.check_type", "check type", 8, nil, 0x1)
local f_check_attempt = ProtoField.bool("neb_host.check_attempt", "check attempt", 8, nil, 0x1)
local f_state = ProtoField.uint16("neb_host.state", "state", base.HEX, nil, nil, "")
local f_default_active_checks = ProtoField.bool("neb_host.default_active_checks", "default active checks", 8, nil, 0x1)
local f_default_event_handler_enabled = ProtoField.bool("neb_host.default_event_handler_enabled", "default event handler enabled", 8, nil, 0x1)
local f_default_flap_detection = ProtoField.bool("neb_host.default_flap_detection", "default flap detection", 8, nil, 0x1)
local f_default_notify = ProtoField.bool("neb_host.default_notify", "default notify", 8, nil, 0x1)
local f_default_passive_checks = ProtoField.bool("neb_host.default_passive_checks", "default passive checks", 8, nil, 0x1)
local f_scheduled_downtime_depth = ProtoField.uint16("neb_host.scheduled_downtime_depth", "scheduled downtime depth", base.HEX, nil, nil, "")
local f_display_name = ProtoField.stringz("neb_host.display_name", "display name")
local f_enabled = ProtoField.bool("neb_host.enabled", "enabled", 8, nil, 0x1)
local f_event_handler = ProtoField.stringz("neb_host.event_handler", "event handler")
local f_event_handler_enabled = ProtoField.bool("neb_host.event_handler_enabled", "event handler enabled", 8, nil, 0x1)
local f_execution_time = ProtoField.stringz("neb_host.execution_time", "event execution time")
local f_first_notification_delay = ProtoField.stringz("neb_host.first_notification_delay", "first notification delay")
local f_flap_detection = ProtoField.bool("neb_host.flap_detection", "flap_detection", 8, nil, 0x1)
local f_flap_detection_on_down = ProtoField.bool("neb_host.flap_detection_on_down", "flap detection on down", 8, nil, 0x1)
local f_flap_detection_on_unreachable = ProtoField.bool("neb_host.flap_detection_on_unreachable", "flap detection on unreachable", 8, nil, 0x1)
local f_flap_detection_on_up = ProtoField.bool("neb_host.flap_detection_on_up", "flap detection on up", 8, nil, 0x1)
local f_freshness_threshold = ProtoField.stringz("neb_host.freshness_threshold")
local f_checked = ProtoField.bool("neb_host.checked", "checked", 8, nil, 0x1)
local f_high_flap_threshold = ProtoField.stringz("neb_host.high_flap_threshold", "high flap threshold")
local f_name = ProtoField.stringz("neb_host.name", "name")
local f_host_id = ProtoField.uint32("neb_host.host_id", "host id", base.HEX, nil, nil, "")
local f_icon_image = ProtoField.stringz("neb_host.icon_image", "icon image")
local f_icon_image_alt = ProtoField.stringz("neb_host.icon_image_alt", "icon image alternative")
local f_instance_id = ProtoField.uint32("neb_host.instance_id", "instance id", base.HEX, nil, nil, "")
local f_flapping = ProtoField.bool("neb_host.flapping", "flapping", 8, nil, 0x1)
local f_last_check = ProtoField.uint64("neb_host.last_check", "last check", base.HEX, nil, nil, "")
local f_last_hard_state = ProtoField.uint16("neb_host.last_hard_state", "last hard state", base.HEX, nil, nil, "")
local f_last_hard_state_change = ProtoField.uint64("neb_host.last_hard_state_change", "last hard state change", base.HEX, nil, nil, "")
local f_last_notification = ProtoField.uint64("neb_host.last_notification", "last notification", base.HEX, nil, nil, "")
local f_last_state_change = ProtoField.uint64("neb_host.last_state_change", "last state change", base.HEX, nil, nil, "")
local f_last_time_down  = ProtoField.uint64("neb_host.last_time_down", "last time down", base.HEX, nil, nil, "")
local f_last_time_unreachable = ProtoField.uint64("neb_host.last_time_unreachable", "last time unreachable", base.HEX, nil, nil, "")
local f_last_time_up = ProtoField.uint64("neb_host.last_time_up", "last time up", base.HEX, nil, nil, "")
local f_last_update = ProtoField.uint64("neb_host.last_update", "last update", base.HEX, nil, nil, "")
local f_latency = ProtoField.stringz("neb_host.latency", "latency")
local f_low_flap_threshold = ProtoField.stringz("neb_host.low_flap_threshold", "low flap threshold")
local f_max_check_attempts = ProtoField.uint16("neb_host.max_check_attempts", "max check attempts", base.HEX, nil, nil, "")
local f_next_check = ProtoField.uint64("neb_host.next_check", "next check", base.HEX, nil, nil, "")
local f_next_host_notification = ProtoField.stringz("neb_host.next_host_notification", "next host notification")
local f_no_more_notifications = ProtoField.bool("neb_host.no_more_notifications", "no more notifications", 8, nil, 0x1)
local f_notes = ProtoField.stringz("neb_host.notes", "notes")
local f_notes_url = ProtoField.stringz("neb_host.notes_url", "notes url")
local f_notification_interval = ProtoField.uint64("neb_host.notification_interval", "notification interval", base.HEX, nil, nil, "")
local f_notification_number = ProtoField.uint16("neb_host.notification_number", "notification number", base.HEX, nil, nil, "")
local f_notification_period = ProtoField.stringz("neb_host.notification_period", "notification period")
local f_notify = ProtoField.bool("neb_host.notify", "notify", 8, nil, 0x1)
local f_notify_on_down = ProtoField.bool("neb_host.notify_on_down", "notify on down", 8, nil, 0x1)
local f_notify_on_downtime = ProtoField.bool("neb_host.notify_on_downtime", "notify on downtime", 8, nil, 0x1)
local f_notify_on_flapping = ProtoField.bool("neb_host.notify_on_flapping", "notify on flapping", 8, nil, 0x1)
local f_notify_on_recovery = ProtoField.bool("neb_host.notify_on_recovery", "notify on recovery", 8, nil, 0x1)
local f_notify_on_unreachable = ProtoField.bool("neb_host.notify_on_unreachable", "notify on unreachable", 8, nil, 0x1)
local f_obsess_over_host = ProtoField.bool("neb_host.obsess_over_host", "obsess over host", 8, nil, 0x1)
local f_passive_checks = ProtoField.bool("neb_host.passive_checks", "passive checks", 8, nil, 0x1)
local f_percent_state_change = ProtoField.stringz("neb_host.percent_state_change", "percent state change")
local f_retry_interval = ProtoField.stringz("neb_host.retry_interval", "retry interval")
local f_should_be_scheduled = ProtoField.bool("neb_host.should_be_scheduled", "should be scheduled", 8, nil, 0x1)
local f_stalk_on_down = ProtoField.bool("neb_host.stalk_on_down", "stalk on down", 8, nil, 0x1)
local f_stalk_on_unreachable = ProtoField.bool("neb_host.stalk_on_unreachable", "stalk on unreachable", 8, nil, 0x1)
local f_stalk_on_up = ProtoField.bool("neb_host.stalk_on_up", "stalk on up", 8, nil, 0x1)
local f_statusmap_image = ProtoField.stringz("neb_host.statusmap_image", "statusmap image")
local f_state_type = ProtoField.uint16("neb_host.state_type", "state  type", base.HEX, nil, nil, "")
local f_check_command = ProtoField.stringz("neb_host.check_command", "check_command")
local f_output = ProtoField.stringz("neb_host.output", "output")
local f_perfdata = ProtoField.stringz("neb_host.perfdata", "perfdata")
local f_retain_nonstatus_information = ProtoField.bool("neb_host.retain_nonstatus_information", "retain nonstatus information", 8, nil, 0x1)
local f_retain_status_information = ProtoField.bool("neb_host.retain_status_information", "retain status information", 8, nil, 0x1)
local f_timezone = ProtoField.stringz("neb_host.timezone", "timezone")

neb_host_proto.fields = { f_acknowledged, f_acknowledgement_type, f_action_url, f_active_checks, f_address, f_alias, f_check_freshness, f_check_interval, f_check_period, f_check_type, f_check_attempt, f_state, f_default_active_checks, f_default_event_handler_enabled, f_default_flap_detection, f_default_notify, f_default_passive_checks, f_scheduled_downtime_depth, f_display_name, f_enabled, f_event_handler, f_event_handler_enabled, f_execution_time, f_first_notification_delay, f_flap_detection, f_flap_detection_on_down, f_flap_detection_on_unreachable, f_flap_detection_on_up, f_freshness_threshold, f_checked, f_high_flap_threshold, f_name, f_host_id, f_icon_image, f_icon_image_alt, f_instance_id, f_flapping, f_last_check, f_last_hard_state, f_last_hard_state_change, f_last_notification, f_last_state_change, f_last_time_down, f_last_time_unreachable, f_last_time_up, f_last_update, f_latency, f_low_flap_threshold, f_max_check_attempts, f_next_check, f_next_host_notification, f_no_more_notifications, f_notes, f_notes_url, f_notification_interval, f_notification_number, f_notification_period, f_notify, f_notify_on_down, f_notify_on_downtime, f_notify_on_flapping, f_notify_on_recovery, f_notify_on_unreachable, f_obsess_over_host, f_passive_checks, f_percent_state_change, f_retry_interval, f_should_be_scheduled, f_stalk_on_down, f_stalk_on_unreachable, f_stalk_on_up, f_statusmap_image, f_state_type, f_check_command, f_output, f_perfdata, f_retain_nonstatus_information, f_retain_status_information, f_timezone}

function neb_host_proto.dissector(buffer, pinfo, tree)
    pinfo.cols.protocol = "NEB Hst"
    local subtree = tree:add(neb_host_proto, buffer(), "NEB Hst")
    subtree:add(f_acknowledged, buffer(0, 1))
    subtree:add(f_acknowledgement_type, buffer(1, 2))
    local len = buffer(3):stringz():len() + 1
    local off = len
    subtree:add(f_action_url, buffer(3, len))

    subtree:add(f_active_checks, buffer(3 + off, 1))

    len = buffer(4 + off):stringz():len() + 1
    subtree:add(f_address, buffer(4 + off, len))
    off = off + len

    len = buffer(4 + off):stringz():len() + 1
    subtree:add(f_alias, buffer(4 + off, len))
    off = off + len

    subtree:add(f_check_freshness, buffer(4 + off, 1))
    subtree:add(f_check_interval, buffer(5 + off, 1))
    subtree:add(f_check_period, buffer(6 + off, 1))
    subtree:add(f_check_type, buffer(7 + off, 1))
    subtree:add(f_check_attempt, buffer(8 + off, 1))
    subtree:add(f_state, buffer(9 + off, 2))
    subtree:add(f_default_active_checks, buffer(11 + off, 1))
    subtree:add(f_default_event_handler_enabled, buffer(12 + off, 1))
    subtree:add(f_default_flap_detection, buffer(13 + off, 1))
    subtree:add(f_default_notify, buffer(14 + off, 1))
    subtree:add(f_scheduled_downtime_depth, buffer(15 + off, 1))

    len = buffer(16 + off):stringz():len() + 1
    subtree:add(f_display_name, buffer(16 + off, len))
    off = off + len

    subtree:add(f_enabled, buffer(16 + off, 1))

    len = buffer(17 + off):stringz():len() + 1
    subtree:add(f_event_handler, buffer(17 + off, len))
    off = off + len

    subtree:add(f_event_handler_enabled, buffer(17 + off, 1))

    len = buffer(18 + off):stringz():len() + 1
    subtree:add(f_execution_time, buffer(18 + off, len))
    off = off + len

    len = buffer(18 + off):stringz():len() + 1
    subtree:add(f_first_notification_delay, buffer(18 + off, len))
    off = off + len

    subtree:add(f_flap_detection, buffer(18 + off, 1))
    subtree:add(f_flap_detection_on_down, buffer(19 + off, 1))
    subtree:add(f_flap_detection_on_unreachable, buffer(20 + off, 1))
    subtree:add(f_flap_detection_on_up, buffer(21 + off, 1))


    len = buffer(20 + off):stringz():len() + 1
    subtree:add(f_freshness_threshold, buffer(21 + off, len))
    off = off + len

    subtree:add(f_checked, buffer(21 + off, 1))

    len = buffer(22 + off):stringz():len() + 1
    subtree:add(f_high_flap_threshold, buffer(22 + off, len))
    off = off + len

    len = buffer(22 + off):stringz():len() + 1
    subtree:add(f_name, buffer(22 + off, len))
    off = off + len


    subtree:add(f_host_id, buffer(22 + off, 4))

    len = buffer(26 + off):stringz():len() + 1
    subtree:add(f_icon_image, buffer(26 + off, len))
    off = off + len

    len = buffer(26 + off):stringz():len() + 1
    subtree:add(f_icon_image_alt, buffer(26 + off, len))
    off = off + len

    subtree:add(f_instance_id, buffer(26 + off, 4))
    subtree:add(f_flapping, buffer(30 + off, 1))
    subtree:add(f_last_check, buffer(39 + off, 8))
    subtree:add(f_last_hard_state, buffer(47 + off, 2))
    subtree:add(f_last_hard_state_change, buffer(42 + off, 8))
    subtree:add(f_last_notification, buffer(50 + off, 8))
    subtree:add(f_last_state_change, buffer(58 + off, 8))
    subtree:add(f_last_time_down, buffer(66 + off, 8))
    subtree:add(f_last_time_unreachable, buffer(74 + off, 8))
    subtree:add(f_last_time_up, buffer(82 + off, 8))
    subtree:add(f_last_update, buffer(90 + off, 8))

    len = buffer(98 + off):stringz():len() + 1
    subtree:add(f_latency, buffer(98 + off, len))
    off = off + len

    len = buffer(98 + off):stringz():len() + 1
    subtree:add(f_low_flap_threshold, buffer(98 + off, len))
    off = off + len

    subtree:add(f_last_update, buffer(98 + off, 2))
    subtree:add(f_next_check, buffer(100 + off, 8))
    subtree:add(f_next_host_notification, buffer(108 + off, 8))
    subtree:add(f_no_more_notifications, buffer(116 + off, 1))

    len = buffer(117 + off):stringz():len() + 1
    subtree:add(f_notes, buffer(117 + off, len))
    off = off + len

    len = buffer(117 + off):stringz():len() + 1
    subtree:add(f_notes_url, buffer(117 + off, len))
    off = off + len

    len = buffer(117 + off):stringz():len() + 1
    subtree:add(f_notification_interval, buffer(117 + off, len))
    off = off + len

    subtree:add(f_notification_number, buffer(117 + off, 2))

    len = buffer(119 + off):stringz():len() + 1
    subtree:add(f_notification_period, buffer(119 + off, len))
    off = off + len

    subtree:add(f_notify, buffer(119 + off, 1))
    subtree:add(f_notify_on_down, buffer(120 + off, 1))
    subtree:add(f_notify_on_downtime, buffer(121 + off, 1))
    subtree:add(f_notify_on_flapping, buffer(122 + off, 1))
    subtree:add(f_notify_on_recovery, buffer(123 + off, 1))
    subtree:add(f_notify_on_unreachable, buffer(124 + off, 1))
    subtree:add(f_obsess_over_host, buffer(125 + off, 1))
    subtree:add(f_passive_checks, buffer(126 + off, 1))

    len = buffer(127 + off):stringz():len() + 1
    subtree:add(f_percent_state_change, buffer(127 + off, len))
    off = off + len

    len = buffer(127 + off):stringz():len() + 1
    subtree:add(f_retry_interval, buffer(127 + off, len))
    off = off + len

    subtree:add(f_should_be_scheduled, buffer(127 + off, 1))
    subtree:add(f_stalk_on_down, buffer(128 + off, 1))
    subtree:add(f_stalk_on_unreachable, buffer(129 + off, 1))
    subtree:add(f_stalk_on_up, buffer(130 + off, 1))

    len = buffer(131 + off):stringz():len() + 1
    subtree:add(f_statusmap_image, buffer(131 + off, len))
    off = off + len

    subtree:add(f_state_type, buffer(131 + off, 2))

    len = buffer(133 + off):stringz():len() + 1
    subtree:add(f_check_command, buffer(133 + off, len))
    off = off + len

    len = buffer(133 + off):stringz():len() + 1
    subtree:add(f_output, buffer(133 + off, len))
    off = off + len

    len = buffer(133 + off):stringz():len() + 1
    subtree:add(f_perfdata, buffer(133 + off, len))
    off = off + len

    subtree:add(f_retain_nonstatus_information, buffer(133 + off, 1))
    subtree:add(f_retain_status_information, buffer(134 + off, 1))

    len = buffer(135 + off):stringz():len() + 1
    subtree:add(f_timezone, buffer(135 + off, len))
    off = off + len
end