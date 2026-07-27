.KF
.G1
size = 5.0
frame  invis ht 9 wid 11 left invis bot invis left solid
coord x 0,20 y -2,42
ticks bot off

barwid=0.5
capwid=0.15


# copy until "DONE" thru {
#           bar 1.5,$1, 1.75, $1+0.2 fill $2
#          $3 size -2 ljust at 1.8,$1+0.1
#     }
#     9 0.25 "Copying"
#     8.5 0.5 "Initialization"
#     8  0.9 "Checksum"
#     DONE

bar 12,39, 15, 38  fillcolor "mistyrose1"; "Kvinnor" ljust at (15.5,38.5)
bar 12,37, 15, 36  fillcolor "lightblue"; "M\[:a]n" ljust at (15.5,36.5)
bar 12,35, 15, 34  fillcolor "grey60"; "Alla" ljust at (15.5,34.5)

# Data layout assumed: "X-Value Height ErrorAmount"
copy "sympatier-data.text" thru {
   # Draw the main bar

   if ("$5" == "females") then {	
	bar up $2 ht $3 wid barwid fillcolor "mistyrose1"
   }
   if ("$5" == "males") then {	
     bar up $2 ht $3 wid barwid fillcolor "lightblue"
     "$1" at ($2,0-1.5)
   }
   if ("$5" == "all") then {	
        bar up $2 ht $3 wid barwid fillcolor "grey60"
   }

   line from $2,$3+$4 to $2,$3-$4
   
   # Draw horizontal caps on error bar
   line from $2-capwid*barwid,$3+$4 to $2+capwid*barwid,$3+$4
   line from $2-capwid*barwid,$3-$4 to $2+capwid*barwid,$3-$4
}
.G2
.QP
.vs 12
.ps 10
Figur 1.
Stapeldiagram av data fr\[oa]n Tabell 1.
.[
SCB 2026
.]
Notera hur skillnaderna mellan k\[:o]nen g\[oa]r i olika riktning i regerings underlaget (SD, M, KD och L) och oppositionen (C, S, MP och V).
F\[:o]r de minsta partierna \[:a]r skillnaden sannolikt inte statistiskt s\[:a]kerst\[:a]lld (felmarginalen representeras av de sm\[oa] staplarna),
men skillnaden g\[oa]r i den beskrivna riktningen f\[:o]r samtliga partier.
.sp
.KE
