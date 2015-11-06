function pulseaudio-eq --description 'An alias to execute pulseaudio-equalizer'
    qpaeq > /dev/null 2>&1
end
