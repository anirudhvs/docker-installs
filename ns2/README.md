# Setup

Build the image using the following command:
```bash
docker build -t ns2 .
```

You can run the image using the `run.sh` script.   
Additionally you can add the following line to the end of  `~/.bashrc` for easier access:
```bash
alias startns2='docker run --rm -ti -v "$(pwd):/src" --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" ns2'
```

PS: All these scripts work only if you use X11 on your system.

**To test if it is working or not**
run `startns2`
run `wget http://nile.wpi.edu/NS/Example/ns-simple.tcl`
run `ns ns-simple.tcl`

It should open a GUI with 2 windows.

**Error on ubuntu(or other linux) and its fix**
error msg - `No protocol specified` and gui doesnt open
Fix - run `xhost +` before running the alias it will work, once everything is done, you can run `xhost -` to se things back to as it is.
