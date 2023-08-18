
execute_robot_process_killer_capability () {

    countLocalExecutions=1

    while [ "$countLocalExecutions" -ne "$targetCountLocalExecutions" ];do
        
        echo
        echo "calling process_killer_capability_group [`date`]"
        echo
        
        execute_robot_process_killer_capability_group        
        
        countLocalExecutions=$((countLocalExecutions + 1))
        
        sleep 1
        
    done
    
    echo
    echo "i have been running for over a minute. exiting gracefully."
    echo
    echo "another robot should be following behind me..."
    echo
    
}

execute_robot_process_killer_capability_group () {

    for processName in $processNameGroup; do
	    
	        echo "execute kill processes matching: "$processName

            execute_robot_process_killer_capability_single $processName
        
    done

}

execute_robot_process_killer_capability_single () {
    
    processToKill=$1

    if pgrep $processToKill > /dev/null;then
    
        echo
        echo " ** there are processes running that match: "$processToKill   
        echo
        
        ## ps aux | grep $processToKill

        pkill $processToKill

        ## ps aux | grep $processToKill
           
        echo
        echo " ** killed all of the "$processToKill" processes"
        echo        
        
    fi
    
}