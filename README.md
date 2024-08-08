# MiniMoni
*MiniMoni: A Streamlined Command-Line Tool for Real-Time Monitoring of GPU and CPU Usage*

---

Monitor your GPUs and CPUs (number of users) with a minimal terminal window.
Ideal for server environments or any setup requiring a compact monitoring solution.

> [!NOTE] 
> The terminal size is adjuste automatically to the number of GPUS on the device and the number of active users on the machine. 

> [!WARNING]
> Can only evaluate the CPUs workload and number of users if they use TMUX


Example of the output:
```bash
[PC_NAME]-linux                Thu Aug  8 13:57:12 2024  535.183.01
[0] NVIDIA GeForce GTX 1080 Ti | 34°C,  23 %,   0 %,    8 / 250 W |    16 / 11264 MB
------------------------------------------------------------------------------------
 14:00:53 up  4:13,  1 user,  load average: 0,42, 1,08, 0,74
USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU WHAT
user_id  pts/5    tmux(21348).%0   14:00    1.00s  0.05s  0.05s -bash
```

## TODOs:
- [ ] Add better description
- [ ] Add references/credits to original tools MinoMoni wraps around
- [ ] Add installation instructions and script
- [ ] Add MiniMoni script 