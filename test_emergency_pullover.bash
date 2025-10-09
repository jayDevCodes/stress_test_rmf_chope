#!/bin/bash
ros2 run rmf_demos_tasks dispatch_patrol -F tinyRobot -R tinyRobot1 -p hardware_2  --use_sim_time
sleep 10
ros2 topic pub /emergency_signal rmf_fleet_msgs/msg/EmergencySignal "{\"is_emergency\": true, \"fleet_names\": []}" --once --qos-reliability reliable --qos-durability transient_local
