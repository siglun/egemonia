.KF
.G1
ymax = 1.0
coord x 1800,2010 y 0.0005,ymax log y
frame invis ht 8 wid 9 left solid color "black" bot solid color "black"
label bot "\[oA]r" down 1
label left "Relativ frekvens" left 1.2
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

# draw quotient solid color "red"
# copy "both-politics.text" thru {
#	q = $2/$3
#	next quotient at $1,q
#}

# Legend

.ps 10
line solid  color "black" from 1812,0.96*ymax to 1834,0.96*ymax ; "metapolitics" ljust at 1838,0.96*ymax
line dashed color "black" from 1812,0.6*ymax to 1834,0.6*ymax ; "geopolitics"  ljust at 1838,0.6*ymax

line solid color "black" from 1967,0.0006*ymax to 1967,0.15*ymax ; "Gramsci i svensk \[:o]vers\[:a]ttning 1967"  ljust at 1967.75,0.15*ymax

line solid color "black" from 1968,0.0006*ymax to 1968,0.08*ymax ; "GRECE etablerades 1968" ljust at 1968.75,0.08*ymax

line solid color "black" from 1971,0.0006*ymax to 1971,0.04*ymax ; "Gramsci i engelsk \[:o]vers\[:a]ttning 1971"  ljust at 1971.75,0.04*ymax

line solid color "black" from 1976,0.0006*ymax to 1976,0.02*ymax ; "(S) f\[:o]rlorade efter 30 \[oa]r 1976" ljust at 1976.75,0.02*ymax

line solid color "black" from 1979,0.0006*ymax to 1979,0.012*ymax ; "Thatcher vinner 1979" ljust at 1979.75,0.012*ymax

line solid color "black" from 1980,0.0006*ymax to 1980,0.007*ymax ; "problemformuleringsprivilegiet 1980" ljust at 1980.75,0.007*ymax

# line solid color "red" from 1812,0.3*ymax to 1834,0.3*ymax ;
#"$metapolitics smallover geopolitics$"  ljust at 1838,0.3*ymax
# ---------------------------------------------------------------------
.G2
.QP
.vs 12
.ps 10
Figur 2.
Den relativa frekvensen av ordet \[rq]metapolitics\[rq] i Oxford English Dictionarys korpus\** (logaritmisk skala).
.FS
.I metapolitics
fr\[oa]n https://doi.org/10.1093/OED/3638586313
.[
oxford metapolitics 2024
.]
.FE
Ordet uppvisar en mer eller mindre kontinuerlig \[:o]kning fr\[oa]n b\[:o]rjan av 1800-talet till 1960-talet,
f\[:o]r att n\[oa] en topp p\[oa] 1970-talet och sedan minska.\**
Diagrammet visar ocks\[oa] \[rq]geopolitics\[rq] i OEDs korpus,
1900 \[en] 2010.\**
Data h\[:a]mtade 2026-08-04.
.FS
F\[:o]r att s\[:a]kerst\[:a]lla att 1970- och 1980-talets markanta topp f\[:o]r ordet \[rq]metapolitics\[rq] representerar en verklig trend \[em] och inte \[:a]r en artefakt orsakad av korpusdrift har en kontrollterm  \[rq]geopolitics\[rq] lagts till i analysen.
En s\[oa]dan drift skulle kunna intr\[:a]ffa om OED vid denna tidpunkt lade in en st\[:o]rre andel statsvetenskaplig litteratur i sitt index.
Genom att kontrastera de tv\[oa] ordens frekvenser synligg\[:o]rs tv\[oa] helt olika utvecklingslinjer.
Medan \[rq]geopolitics\[rq] uppvisar en n\[:a]rmast exponentiell tillv\[:a]xt under hela efterkrigstiden, kulminerar \[rq]metapolitics\[rq] skarpt f\[:o]r att d\[:a]refter sjunka avsev\[:a]rt.
Denna tydliga divergens till\[oa]ter oss att avf\[:a]rda urvalsfel (sampling bias) i korpusen.
Divergensen bekr\[:a]ftar att den tempor\[:a]ra \[:o]kningen f\[:o]r \[rq]metapolitics\[rq] under det sena 1900-talet utg\[:o]r ett isolerat och genuint kulturpolitiskt fenomen,
vilket tidsm\[:a]ssigt sammanfaller med de intensifierade debatterna kring \[:o]verbyggnadens roll och h\[:o]gerv\[oa]gens intellektuella mobilisering.
.FE
.FS
Ordet \[rq]geopolitics\[rq] myntades 1899 och saknar d\[:a]rf\[:o]r data f\[:o]re 1900.
Det \[:a]r ett svenskt l\[oa]neord i engelska spr\[oa]ket.
OED skriver: geopolitics n., efter svenskans geopolitik. R. Kjell\['e]n Inledning til Sveriges geografi (1900).
.I geopolitics
fr\[oa]n https://doi.org/10.1093/OED/3247435121.
.[
oxford geopolitics 2026
.]
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
