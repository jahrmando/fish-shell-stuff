function isup --description 'check if a server is online'
    if set -q $argv
        echo 'You have to write an argument'
    else
        set result (curl -s http://www.isup.me/$argv | grep -E -o "It's (not )?just you(\.|!)")
        if test (count $result) -gt 0
            switch $result
                case "It's just you."
                    echo $result $argv 'is up'
                case "It's not just you!"
                    echo $result $argv 'is down'
                case ""
                    echo ":("
            end
        end
    end
end
