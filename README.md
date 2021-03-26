# Docker for jq utility (Debian buster, jq 1.6)

## How to use

    $ docker run --rm -it hllau/jq:1.6 sh -c $'echo \'{"hello": "world\!"}\' | jq ".hello" -r'
    world!

