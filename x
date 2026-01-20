Panels:
  - Class: rviz_common/Displays
    Help Height: 78
    Name: Displays
    Property Tree Widget:
      Expanded:
        - /Global Options1
        - /Status1
        - /TF1
        - /RobotModel1
      Splitter Ratio: 0.5
    Tree Height: 210
  - Class: rviz_common/Selection
    Name: Selection
  - Class: rviz_common/Tool Properties
    Expanded:
      - /2D Goal Pose1
      - /Publish Point1
    Name: Tool Properties
    Splitter Ratio: 0.588679
  - Class: rviz_common/Views
    Expanded:
      - /Current View1
    Name: Views
    Splitter Ratio: 0.5
Visualization Manager:
  Class: ''
  Displays:
    - Alpha: 0.5
      Cell Size: 1
      Class: rviz_common/Grid
      Color: 160; 160; 164
      Enabled: true
      Line Style:
        Line Width: 0.03
        Value: Line
      Name: Grid
      Normal Cell Count: 0
      Offset:
        X: 0
        Y: 0
        Z: 0
      Plane: XY
      Plane Cell Count: 10
      Reference Frame: <Fixed Frame>
      Value: true
    - Class: rviz_common/TF
      Enabled: true
      Frame Timeout: 15
      Frames:
        All Enabled: false
        arm_link:
          Value: true
        base_link:
          Value: true
        elbow_link:
          Value: true
        forearm_link:
          Value: true
        hand_link:
          Value: true
        holder_link:
          Value: true
        shoulder_link:
          Value: true
        tool_link:
          Value: true
        wrist_link:
          Value: true
      Marker Scale: 0.5
      Name: TF
      Show Arrows: true
      Show Axes: true
      Show Names: true
      Tree:
        base_link:
          arm_link:
            elbow_link:
              forearm_link:
                wrist_link:
                  hand_link:
                    holder_link:
                      tool_link: {}
          shoulder_link: {}
      Update Interval: 0
      Value: true
    - Alpha: 1
      Class: rviz_common/RobotModel
      Collision Margin: 0.01
      Enabled: true
      Links:
        All Links Enabled: true
        Expand Joint Details: false
        Expand Link Details: false
        Expand Tree: false
        Link Tree Style: Links in Alphabetic Order
        arm_link:
          Alpha: 1
          Show Axes: false
          Show Trail: false
          Value: true
        base_link:
          Alpha: 1
          Show Axes: false
          Show Trail: false
          Value: true
        elbow_link:
          Alpha: 1
          Show Axes: false
          Show Trail: false
          Value: true
        forearm_link:
          Alpha: 1
          Show Axes: false
          Show Trail: false
          Value: true
        hand_link:
          Alpha: 1
          Show Axes: false
          Show Trail: false
          Value: true
        holder_link:
          Alpha: 1
          Show Axes: false
          Show Trail: false
          Value: true
        shoulder_link:
          Alpha: 1
          Show Axes: false
          Show Trail: false
          Value: true
        tool_link:
          Alpha: 1
          Show Axes: false
          Show Trail: false
          Value: true
        wrist_link:
          Alpha: 1
          Show Axes: false
          Show Trail: false
          Value: true
      Name: RobotModel
      Robot Description: robot_description
      TF Prefix: ''
      Update Interval: 0
      Value: true
  Enabled: true
  Global Options:
    Background Color: 48; 48; 48
    Default Light: true
    Fixed Frame: base_link
    Frame Rate: 30
  Name: root
  Tools:
    - Class: rviz_common/Interact
      Hide Inactive Objects: true
    - Class: rviz_common/MoveCamera
    - Class: rviz_common/Select
    - Class: rviz_common/FocusCamera
    - Class: rviz_common/Measure
      Class Name: rviz_common/Measure
    - Class: rviz_ros/Publish Point
      Single click publish: true
  Value: true
  Views:
    Current:
      Class: rviz_default_plugins/Orbit
      Distance: 2.5
      Enable Stereo Rendering:
        Stereo Eye Separation: 0.06
        Stereo Focal Distance: 1
        Swap Stereo Eyes: false
        Value: false
      Focal Point:
        X: 0
        Y: 0
        Z: 0
      Focal Shape Fixed Size: true
      Focal Shape Size: 0.05
      Invert Z Axis: false
      Name: Current View
      Near Clip Distance: 0.01
      Pitch: 0.785398
      Target Frame: base_link
      Value: Orbit (rviz_default_plugins)
      Yaw: 0.785398
    Saved Views: {}
Window Geometry:
  Displays:
    collapsed: false
  Height: 1376
  Hide Left Dock: false
  Hide Right Dock: false
  QMainWindow State: 000000ff00000000fd0000000100000000000004e700000478fc0100000002fb000000100044006900730070006c006100790073010000004100000478000000d600fffffffb0000000800540069006d0065000000041d00000478000002f600ffffff000005d00000047800000004000000040000000800000008fc00000001000000020000000100000008000000d8fc0100000001fb0000000a0054006f006f006c00730100000041000000d80000000000000000
  Selection:
    collapsed: false
  Time:
    collapsed: false
  Tool Properties:
    collapsed: false
  Views:
    collapsed: false
  Width: 1496
  X: 250
  Y: 115
