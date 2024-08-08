# MiniMoni
*MiniMoni: A Streamlined Command-Line Tool for Real-Time Monitoring of GPU and CPU Usage*

---

Monitor GPUs and CPUs (number of users) with a minimal terminal window.

Example of the output:
```zsh
[PC_NAME]-linux                Thu Aug  8 13:57:12 2024  535.183.01
[0] NVIDIA GeForce GTX 1080 Ti | 34°C,  23 %,   0 %,    8 / 250 W |    16 / 11264 MB
------------------------------------------------------------------------------------
 14:00:53 up  4:13,  1 user,  load average: 0,42, 1,08, 0,74
USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU WHAT
user_id  pts/5    tmux(21348).%0   14:00    1.00s  0.05s  0.05s -bash
```

## Installation
Install MiniMoni with:
```zsh
curl https://raw.githubusercontent.com/Vujas-Eteph/MiniMoni/main/install.sh | bash
```

> [!TIP]
> Generally check the code before installing it with `curl`, for instance `curl [adresse/of/the/scrip1.sh]` and etc for the other scripts.
> Or in GitHub scroll through the code see that there is no malicious program being install. 

## Running MiniMoni
Run MiniMoni on the terminal by typing: 
```zsh
minimoni
```

## Credits
The GPUS layout is based on the https://github.com/wookayin/gpustat repo.


## TODOs:
- [x] Add better description
- [x] Add references/credits to original tools MinoMoni wraps around
- [x] Add installation instructions and script
- [x] Add MiniMoni script 
