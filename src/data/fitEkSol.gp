# gnuplot script to fit autocorrelation data
f(x) = c1*x**tau
t(x)=c*x**(2)
c=10
c1=1
tau=2
tlim=3
#fit  f(x) "<tail -10 spesols.dat" via c1
fit  t(x) "<head -5 spesols.dat" via c
set logscale
set xlabel "k"
set ylabel "Ek"
set key left
plot "spesols.dat" title "simulation" w p pt 7 ps 1, t(x) title "E(k)-k^2"
#plot "spesols.dat"title "Ek-k in 3D polymer Kolmogorov Re=0.87 Wi=2.6", f(x) title "Best-Fit Ek~k^1.54"

#plot "spectra.dat"title "Ek-k in 3D polymer deform Re=10 Wi=26",f(x) title "Best-Fit Curve Ek~k^-2.5",t(x) title "theory Ek~k^2"
print "the tau is:", tau
call "saver.gp" "../img/spesols"
