- [Usage](#orgbddf242)
  - [Matlab](#org4e075f5)


<a id="orgbddf242"></a>

# Usage


<a id="org4e075f5"></a>

## Matlab

```matlab
yArenaNode = ros2node('y_arena_matlab_node')
arenaOdorsPub = ros2publisher(yArenaNode,'/arena_odors','y_arena_interfaces/ArenaOdors')
arenaOdorsMsg = ros2message('y_arena_interfaces/ArenaOdors')
arenaOdorsMsg.arena = uint8(0)
arenaOdorsMsg.odors = uint8([0 2 1])
send(arenaOdorsPub,arenaOdorsMsg)
```
