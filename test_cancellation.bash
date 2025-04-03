#!/bin/bash
ros2 run rmf_demos_tasks dispatch_go_to_place -p pantry -F tinyRobot -R tinyRobot2 --use_sim_time
ros2 run rmf_demos_tasks dispatch_go_to_place -p tinyRobot2_charger -F tinyRobot -R tinyRobot1 --use_sim_time
sleep 6
ros2 run rmf_demos_tasks cancel_robot_task -F tinyRobot -R tinyRobot2
