# Setup

Build the image using the following command:
```bash
docker build -t ns2 .
```

You can run the image using the `run.sh` script.   
Additionally you can add the following line to the end of  `~/.bashrc` for easier access:
```bash
alias startns2='docker run --rm -ti -v $(pwd):/src  --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" ns2'
```

PS: All these scripts work only if you use X11 on your system.
