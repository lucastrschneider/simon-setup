function catkinSource --on-variable PWD
    status --is-command-substitution; and return
    if test -e ".catkin_workspace"; or test -e ".catkin_tools"
        bass source devel/setup.bash
        echo "Configured the folder as a workspace"
    end
end
