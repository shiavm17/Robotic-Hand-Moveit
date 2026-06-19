# 6-DOF Robotic Arm with Object Holder

A complete ROS 2 robotic arm simulation with 6 degrees of freedom and an integrated object holder/gripper for picking and placing objects. This project includes URDF modeling, MoveIt2 motion planning, and RViz visualization.

## 📋 Table of Contents

- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Project Structure](#project-structure)
- [Usage](#usage)
- [Simulation](#simulation)
- [Customization](#customization)
- [Troubleshooting](#troubleshooting)

## ✨ Features

- **6-DOF Robotic Arm** with realistic joint configurations
  - Joint 1: Base rotation (revolute, ±π radians)
  - Joint 2: Shoulder pitch (revolute, 0-2.5 radians)
  - Joint 3: Elbow pitch (revolute, 0-2.5 radians)
  - Joint 4: Wrist roll (revolute, ±π radians)
  - Joint 5: Wrist pitch (revolute, ±π/2 radians)
  - Joint 6: Hand rotation (continuous)

- **Object Holder/Gripper** at the end effector for object manipulation
- **URDF-based Modeling** with visual and collision geometry
- **Physics Properties** with inertial parameters for realistic simulation
- **MoveIt2 Integration** for motion planning and trajectory execution
- **RViz Visualization** for real-time monitoring
- **Joint State Publisher GUI** for manual joint control

## 🔧 Prerequisites

- Ubuntu 22.04 LTS or later
- ROS 2 Humble installed ([Installation Guide](https://docs.ros.org/en/humble/Installation.html))
- MoveIt 2 (`sudo apt install ros-humble-moveit`)
- RViz2 (`sudo apt install ros-humble-rviz2`)
- Xacro (`sudo apt install ros-humble-xacro`)

## 📦 Installation

### 1. Create Workspace (if not already created)

```bash
mkdir -p ~/RoboticArm_ws/src
cd ~/RoboticArm_ws
```

### 2. Clone or Copy the Package

```bash
cd ~/RoboticArm_ws/src/moveit2
# Copy the my_robot_description package here
```

### 3. Build the Package

```bash
cd ~/RoboticArm_ws
colcon build --packages-select my_robot_description
source install/setup.bash
```

### 4. Verify Installation

```bash
ros2 pkg list | grep my_robot_description
```

## 📁 Project Structure

```
my_robot_description/
├── CMakeLists.txt                 # Build configuration
├── package.xml                    # Package metadata
├── urdf/
│   ├── my_robot.urdf.xacro       # Main URDF file with holder
│   ├── arm.xacro                 # Arm configuration (if separate)
│   └── common_properties.xacro   # Shared properties
├── launch/
│   ├── display.launch.py         # RViz visualization launch
│   └── display.launch.xml        # XML-based launch (alternative)
├── rviz/
│   ├── display.rviz              # RViz configuration
│   └── urdf_config.rviz          # URDF viewer configuration
├── meshes/                        # 3D mesh files (optional)
├── config/                        # MoveIt2 configuration
└── README.md                      # This file
```

## 🚀 Usage

### Basic Visualization and Control

```bash
# Terminal 1: Source the workspace
cd ~/RoboticArm_ws
source install/setup.bash

# Launch RViz with the robot model
ros2 launch my_robot_description display.launch.py
```

This opens:
- **RViz Viewer** with the 6-DOF robotic arm
- **Joint State Publisher GUI** for manual joint control
- **Grid and Coordinate Frames** for reference

### Manual Joint Control

In the Joint State Publisher GUI (left panel):
1. Use sliders to adjust each joint (joint1 through joint6)
2. Click "Randomize" to generate random poses
3. Click "Center" to return to default position

### Launch with MoveIt2

```bash
# For MoveIt2 motion planning
cd ~/RoboticArm_ws
source install/setup.bash
ros2 launch my_robot_description my_robot_moveit.launch.py
```

## 🎮 Simulation

### Gazebo Integration (Optional)

For physics simulation in Gazebo:

```bash
ros2 launch my_robot_description gazebo.launch.py
```

### Motion Planning with MoveIt2

```bash
python3 ~/path_to_move_group_interface_script.py
```

## 🛠️ Customization

### Modifying Arm Dimensions

Edit `urdf/my_robot.urdf.xacro`:

```xml
<!-- Change cylinder length for arm segments -->
<cylinder length="0.6" radius="0.05" />

<!-- Adjust joint limits -->
<limit effort="1000.0" velocity="1.0" lower="0" upper="2.5" />
```

### Changing Holder Size

```xml
<!-- In holder_link section -->
<box size="0.15 0.15 0.08" />  <!-- width, depth, height -->
```

### Adding Colors

```xml
<material name="custom_color">
    <color rgba="R G B A"/>  <!-- Values 0.0-1.0 -->
</material>
```

## 🐛 Troubleshooting

### Issue: Robot Model Not Displaying in RViz

**Solution:**
1. Ensure Fixed Frame is set to `base_link` (not `world`)
2. Click **Add** → **RobotModel** in RViz
3. Set Robot Description to `robot_description`

```bash
# Verify robot_description is being published
ros2 topic echo /robot_description | head -20
```

### Issue: URDF Parse Errors

```bash
# Validate URDF syntax
xacro ~/RoboticArm_ws/src/moveit2/my_robot_description/urdf/my_robot.urdf.xacro
```

### Issue: Joint State Publisher GUI Not Appearing

```bash
# Kill all processes and restart
pkill -f ros2
sleep 2
ros2 launch my_robot_description display.launch.py
```

## 📊 Robot Specifications

| Component | Specification |
|-----------|---------------|
| **DOF** | 6 |
| **Base Dimensions** | 0.4m × 0.4m × 0.1m |
| **Arm Length** | ~2.2m (fully extended) |
| **Holder Size** | 0.15m × 0.15m × 0.08m |
| **Total Mass** | ~7.2 kg (estimated) |
| **Max Velocity** | 1.0 rad/s per joint |
| **Max Effort** | 1000 N·m per joint |

## 📝 URDF Features

- **Visual Geometry**: Cylinders and boxes for realistic appearance
- **Collision Geometry**: Simplified shapes for physics simulation
- **Inertial Properties**: Mass and inertia tensors for accurate dynamics
- **Joint Dynamics**: Damping and friction parameters
- **Fixed End Effector**: Holder integrated at tool_link

## 🔗 Important Topics and Services

```bash
# View published topics
ros2 topic list

# Key topics:
# /joint_states - Current joint positions/velocities
# /robot_description - URDF model
# /tf - Transform frames

# View robot state
ros2 topic echo /joint_states
```

## 📚 References

- [ROS 2 Humble Documentation](https://docs.ros.org/en/humble/)
- [MoveIt 2 Getting Started](https://moveit.ros.org/install-moveit2/binary/)
- [URDF Tutorial](http://wiki.ros.org/urdf/Tutorials)
- [RViz User Guide](https://github.com/ros2/rviz)

## 🤝 Contributing

To improve this project:

1. Test different configurations
2. Add meshes for better visualization
3. Implement Gazebo physics
4. Create motion planning examples
5. Add gripper control scripts

## 📄 License

This project is provided as-is for educational and development purposes.

## ✍️ Author

Created as a complete ROS 2 robotic 6 axis arm simulation with integrated object holder for picking and placing applications.

---

1. **Status:** ✅ Fully Functional with MoveIt2 Integration
2. **My Linkedin:** https://www.linkedin.com/in/shivam-rgipt/
