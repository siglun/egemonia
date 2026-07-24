.KF
.QP
.vs 12
.ps 10
Tabell 1.
Skattning av valresultatet \[rq]om det var val idag\[rq] Maj 2026.
Andel i procent  \[+-] Os\[:a]kerhetstal.
.[
SCB 2026
.]
.TS
allbox center tab(;);
l l l l .
;Kvinnor;M\[:a]n;Alla
C;6,5 \[+-] 1,0;5,7 \[+-] 0,9;6,1 \[+-]0,6
L; 2,1 \[+-] 0,6;3,0 \[+-] 0,7;2,5 \[+-] 0,5
M;16,2 \[+-] 1,5;18,5 \[+-] 1,5;17,3 \[+-] 1,0
KD;4,3 \[+-] 0,8;4,7 \[+-] 0,9;4,5 \[+-] 0,6
S;39,1 \[+-] 2,0;28,6 \[+-] 1,9;33,9 \[+-] 1,2
V;10,1 \[+-] 1,3;7,1 \[+-] 1,2;8,6 \[+-] 0,8
MP;8,7 \[+-] 1,1;4,5 \[+-] 0,9;6,6 \[+-] 0,7
SD;12,0 \[+-] 1,5;24,7 \[+-] 1,8;18,3 \[+-] 0,9
\[:O]VR;1,1 \[+-] 0,5;3,0 \[+-] 0,8;2,0 \[+-] 0,5
.TE
.G1
size = 2.5
frame invis bot solid left solid
coord x 1,10 y 0,35
ticks bot off

# Data layout assumed: "X-Value Height ErrorAmount"
copy "sympatier-data.text" thru {
   # Draw the main bar
   line from $2,0 to $2,$3
   line from $2,$3 to $2+1,$3
   line from $2+1,$3 to $2+1,0

   # Draw the error bar (Y +/- ErrorAmount)
   line from $2+0.5,$3+$4 to $2+0.5,$3-$4
   
   # Draw horizontal caps on error bar
   line from $2+0.3,$3+$4 to $2+0.7,$3+$4
   line from $2+0.3,$3-$4 to $2+0.7,$3-$4
}
.G2
.KE
