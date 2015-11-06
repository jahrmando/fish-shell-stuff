function killgrep --description 'Kill processes from a lookup'
    if set -q $argv
        echo "You have to write an argument"
    else
        command ps fuax | grep $argv | awk '{print $2}' | xargs kill -9 > /dev/null 2>&1
    end
end
