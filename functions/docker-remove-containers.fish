function docker-remove-containers  --description 'An alias to delete all docker containers'
    command docker ps -qa | xargs docker rm
end
