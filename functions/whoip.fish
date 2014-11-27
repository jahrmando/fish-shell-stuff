function whoip --description 'Get public IP information'
    if set -q $argv
        command curl -s http://www.telize.com/geoip  | json_reformat
    else
        command curl -s http://www.telize.com/geoip/$argv  | json_reformat
    end
end
