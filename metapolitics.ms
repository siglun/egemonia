.KF
.G1
size = 1.8
ymax = 0.008
coord x 1800,2010 y 0,ymax
frame invis ht 7 wid 8 left solid color "black" bot solid color "black"
label bot "\[oA]r" down 1
label left "Frekvens" left 1.2
draw meta solid color "black"
copy "metapolitics.text" thru { next meta at $1,$2 }
#
# --- COMPARISON SERIES (dormant) -------------------------------------
# To contrast "metapolitics" with a second word (e.g. a sibling coinage
# such as "geopolitics"), do three things, then uncomment the four
# lines below:
#   1. Create geopolitics.text with "year<TAB>frequency" rows, pulled
#      from the SAME OED source/measure as metapolitics.text so the two
#      series are commensurable (do NOT mix a Google-Ngram raw series
#      with an OED-normalised one).
#   2. Raise ymax above to fit the taller series.
#   3. Uncomment:
# draw comp dashed color "black"
# copy "geopolitics.text" thru { next comp at $1,$2 }
# line solid  color "black" from 1812,0.96*ymax to 1834,0.96*ymax ; "metapolitics" ljust at 1838,0.96*ymax
# line dashed color "black" from 1812,0.88*ymax to 1834,0.88*ymax ; "geopolitics"  ljust at 1838,0.88*ymax
# ---------------------------------------------------------------------
.G2
.QP
.vs 12
.ps 10
Figur 2.
Frekvensen av ordet \[rq]metapolitics\[rq] i engelska spr\[oa]ket 1800 \[en] 2010.
.[
oxford metapolitics 2024
.]
https://doi.org/10.1093/OED/3638586313
(data h\[:a]mtade 2026-08-04).
.sp
.KE
