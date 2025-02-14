This is the NEOram drive by enthusi (Martin Wendt) of demo group
Onslaught. I've converted the code to vasm format. It produces a byte
perfect binary. Below is the original README, converted to Markdown.

___

|          |                       |
|----------|-----------------------|
| Author   | Martin Wendt          |
| Homepage | http://enthusi.de     |
| eMail    | c64 at enthusi dot de |

A ramdrive for NEOram and compatibles (i.e. GEOram). NEOram being a
modern batterie buffered version of georam with up to 2mb. Fully
compatible to GEOram so you can use this with GEOram just as well.
The BLOCKS FREE is hardcoded to 2MB though, but can be used with
512KB. Check label "ramsize" and change i.e. to #$07 for 512 KB.
Device-No is set to 2. Use `POKE 2,X` to set device to X (8 also works
btw) also nice: use 1 and you can press SHIFT+RUN/STOP in directory
listing!

Commands
---

    LOAD"$",2 for directory
    
    LOAD"file",2(,1)
    
    SAVE"file",2(,1)
    
    VERIFY"file",2(,1)

Further commands
---

To INIT the drive use "arrow-left" as first char of filename! I.e.
`LOAD"<=",2,1` or `LOAD"<=FILE",2` will format the ram expansion. If
that happens accidentally, repair with NEOram Monitor since only 4
bytes were overwritten.

To SCRATCH a file use POUND-sign (%) as first char in filename:
`LOAD"%file",2,1` will scratch the file named "file".

Code currently at $ca00 so the LOAD-limit is about 193 blocks.
for BASIC loaders: about 153 blocks.

This version initialises the kicker that remains in NEOram. You can
launch it with `SYS57000` or `SYS57E3` anytime! Due to the battery
buffer it is resistant and can be launched even after several
days/weeks/months.

Also works in VICE now in case you care. (use GEOram there).

About Directory
---

the entries show 1 Block even when below 1-page-size for consistency
with 1541. However BLOCKS FREE displays the real space left on
neo/georam.

Also if a filename is used twice, only the first one can be accessed.

WHY?
---

Because other than all the hardware-stuff around: this is oldschool!
This could have been done in the 80s as well. And georam aint that
rare after all. You get tons of them on auctions and with the NEOram
there are modern versions around...

Enjoy,
enthusi
