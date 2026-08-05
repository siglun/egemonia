.KF
.G1
size = 1.8
ymax = 1.0
coord x 1800,2010 y 0.0005,ymax log y
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
draw comp dashed color "black"
copy "geopolitics.text" thru { next comp at $1,$2 }

draw quotient solid color "red"
copy "both-politics.text" thru {
	q = $2/$3
	print q
	next quotient at $1,q
}

line solid  color "black" from 1812,0.96*ymax to 1834,0.96*ymax ; "metapolitics" ljust at 1838,0.96*ymax
line dashed color "black" from 1812,0.6*ymax to 1834,0.6*ymax ; "geopolitics"  ljust at 1838,0.6*ymax
line dotted color "black" from 1812,0.3*ymax to 1834,0.3*ymax ; "$metapolitics smallover geopolitics$"  ljust at 1838,0.3*ymax
# ---------------------------------------------------------------------
.G2
.QP
.vs 12
.ps 10
Figur 2.
Frekvensen av orden \[rq]metapolitics\[rq] och \[rq]geopolitics\[rq] i engelska
spr\[oa]ket,
1800 \[en] 2010 (logaritmisk skala).
Ordet \[rq]geopolitics\[rq] myntades 1899 och saknar d\[:a]rf\[:o]r data f\[:o]re 1900.\**
.I metapolitics
fr\[oa]n https://doi.org/10.1093/OED/3638586313
.[
oxford metapolitics 2024
.] 
och
.I geopolitics
fr\[oa]n https://doi.org/10.1093/OED/3247435121.
.[
oxford geopolitics 2026
.]
Data h\[:a]mtade 2026-08-04.
.FS
OED skriver: geopolitics n., efter svenskans geopolitik. R. Kjell\['e]n Inledning til Sveriges geografi (1900).
.FE
.sp
.KE
.\"
.\" geo- comb. form + politics n., after Swedish geopolitik (R. Kjellén
.\" Inledning til Sveriges geografi (1900) 17). Compare German Geopolitik
.\" (1903 (in a review of Kjellén) or earlier).
.\"
.\" Abstract political science; the investigation of the theoretical
.\" basis of political ideas or beliefs; (disparaging) impractical
.\" political theorizing.
