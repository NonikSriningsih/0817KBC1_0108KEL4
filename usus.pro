/*====================================================================================
           SISTEM PAKAR TENTANG DIAGNOSA PENYAKIT PENCERNAAN PADA USUS versi 1.0
					KELOMPOK 4
		            	     KECERDASAN BUATAN 
=====================================================================================*/

domains

data3=orang(Nama)
sakit,gejala = symbol
tanya = string
jawab = char
list = kelompok*
kelompok = string
Nama = string

facts

nondeterm false(kelompok)
nondeterm data(Nama) 

predicates

nondeterm lihat(list)
nondeterm data2(Nama)
nondeterm pilih1(char)
nondeterm pilih2(char)
nondeterm pilih3(char)
nondeterm pilih4(char)
nondeterm pilih5(char)
nondeterm pilih6(char)
nondeterm pilih7(char)
nondeterm pilih8(char)
nondeterm pilih9(char)
nondeterm pilih10(char)
nondeterm pilih11(char)
nondeterm pilih12(char)

nondeterm pilihan(char)
nondeterm pilihan1(char)
nondeterm pilihan2(char)
nondeterm pilihan3(char)
nondeterm pilihan4(char)
nondeterm pilihan5(char)

nondeterm tanya1
nondeterm tanya2
nondeterm tanya3
nondeterm tanya4
nondeterm tanya5
nondeterm tanya6
nondeterm tanya7
nondeterm tanya8
nondeterm tanya9
nondeterm tanya10
nondeterm tanya11
nondeterm tanya12

nondeterm diagnosa0
nondeterm diagnosa1
nondeterm diagnosa2
nondeterm diagnosa3
nondeterm diagnosa4

exxit
nondeterm start
keluar
jawab(char,char)

clauses
/*==================================================================== GEJALA ====================================================================*/
jawab(Y,Y):-!.
jawab(_,_):-fail.

lihat([]).
lihat([H|T]):-							
	not(false(H)),						
	write(H),						
	lihat(T).						
	
	lihat([H|_]):-
	assertz(false(H)).

start:-
nl,nl,
write("Masukkan Nama Anda = "),
readln(Nama),
data2(Nama),
write("\napakah data yang anda masukkan sudah benar Y/T?"),
readchar(A),pilihan(A).				
pilihan(A):-jawab(A,'Y'),tanya1.
pilihan(A):-jawab(A,'y'),tanya1.  			  			
pilihan(A):-jawab(A,'T'),start.
pilihan(A):-jawab(A,'t'),start.  			  			
pilihan(_):-start.	

data2(Nama):-
	write(Nama).
	

tanya1:-
nl,nl,	
	write("Apakah anda kehilangan selera makan ? Y/T"),
	readchar(A), pilih1(A).						
	pilih1(A):-jawab(A,'Y'),tanya2.					
	pilih1(A):-jawab(A,'y'),tanya2.
	pilih1(A):-jawab(A,'t'),diagnosa0.				
	pilih1(A):-jawab(A,'T'),diagnosa0.
	pilih1(_):-exxit,tanya1.						


tanya2:-
nl,nl,	
	write("Apakah anda mengalami keram otot perut ? Y/T"),
	readchar(A), pilih2(A).						
	pilih2(A):-jawab(A,'Y'),tanya3.					
	pilih2(A):-jawab(A,'y'),tanya3.
	pilih2(A):-jawab(A,'t'),diagnosa0.					
	pilih2(A):-jawab(A,'T'),diagnosa0.
	pilih2(_):-exxit,tanya2.						

tanya3:-
nl,nl,	
	write("Apakah anda mengalami diare ? Y/T"),
	readchar(A), pilih3(A).						
	pilih3(A):-jawab(A,'Y'),tanya4.					
	pilih3(A):-jawab(A,'y'),tanya4.
	pilih3(A):-jawab(A,'t'),tanya6.					
	pilih3(A):-jawab(A,'T'),tanya6.
	pilih3(_):-exxit,tanya3.						

tanya4:-
nl,nl,	
	write("Apakah saat anda buang air besar terdapat darah ? Y/T"),
	readchar(A), pilih4(A).						
	pilih4(A):-jawab(A,'Y'),tanya5.					
	pilih4(A):-jawab(A,'y'),tanya5.
	pilih4(A):-jawab(A,'t'),diagnosa0.				
	pilih4(A):-jawab(A,'T'),diagnosa0.
	pilih4(_):-exxit,tanya4.						

tanya5:-
nl,nl,	
	write("Apakah anda mudah letih ? Y/T"),
	readchar(A), pilih5(A).						
	pilih5(A):-jawab(A,'Y'),diagnosa3.					
	pilih5(A):-jawab(A,'y'),diagnosa3.
	pilih5(A):-jawab(A,'t'),tanya8.				
	pilih5(A):-jawab(A,'T'),tanya8.
	pilih5(_):-exxit,tanya5.						

tanya6:-
nl,nl,	
	write("Apakah anda sering buang gas ? Y/T"),
	readchar(A), pilih6(A).						
	pilih6(A):-jawab(A,'Y'),tanya7.					
	pilih6(A):-jawab(A,'y'),tanya7.
	pilih6(A):-jawab(A,'t'),tanya10.				
	pilih6(A):-jawab(A,'T'),tanya10.
	pilih6(_):-exxit,tanya6.						

tanya7:-
nl,nl,	
	write("Apakah lidah anda berlendir disertai sakit kepala ? Y/T"),
	readchar(A), pilih7(A).						
	pilih7(A):-jawab(A,'Y'),diagnosa2.				
	pilih7(A):-jawab(A,'y'),diagnosa2.
	pilih7(A):-jawab(A,'t'),diagnosa0.				
	pilih7(A):-jawab(A,'T'),diagnosa0.
	pilih7(_):-exxit,tanya7.						

tanya8:-
nl,nl,	
	write("Apakah anda mengalami mual - mual ? Y/T"),
	readchar(A), pilih8(A).						
	pilih8(A):-jawab(A,'Y'),tanya9.					
	pilih8(A):-jawab(A,'y'),tanya9.
	pilih8(A):-jawab(A,'t'),diagnosa0.				
	pilih8(A):-jawab(A,'T'),diagnosa0.
	pilih8(_):-exxit,tanya8.						

tanya9:-
nl,nl,	
	write("Apakah bagian perut (usus besar) anda sakit ? Y/T"),
	readchar(A), pilih9(A).						
	pilih9(A):-jawab(A,'Y'),diagnosa4.					
	pilih9(A):-jawab(A,'y'),diagnosa4.
	pilih9(A):-jawab(A,'t'),diagnosa0.				
	pilih9(A):-jawab(A,'T'),diagnosa0.
	pilih9(_):-exxit,tanya9.						

tanya10:-
nl,nl,	
	write("Apakah perut anda kembung dan susah buang angin ? Y/T"),
	readchar(A), pilih10(A).						
	pilih10(A):-jawab(A,'Y'),tanya11.					
	pilih10(A):-jawab(A,'y'),tanya11.
	pilih10(A):-jawab(A,'t'),diagnosa0.				
	pilih10(A):-jawab(A,'T'),diagnosa0.
	pilih10(_):-exxit,tanya10.						

tanya11:-
nl,nl,	
	write("Apakah anda mengalami demam dan meriang ? Y/T"),
	readchar(A), pilih11(A).						
	pilih11(A):-jawab(A,'Y'),tanya12.				
	pilih11(A):-jawab(A,'y'),tanya12.
	pilih11(A):-jawab(A,'t'),diagnosa0.				
	pilih11(A):-jawab(A,'T'),diagnosa0.
	pilih11(_):-exxit,tanya11.						

tanya12:-
nl,nl,	
	write("Apakah perut bagian bawah anda sakit saat di tekan dan bertambah sakit saat dilepas ? Y/T"),
	readchar(A), pilih12(A).						
	pilih12(A):-jawab(A,'Y'),diagnosa1.					
	pilih12(A):-jawab(A,'y'),diagnosa1.
	pilih12(A):-jawab(A,'t'),diagnosa0.				
	pilih12(A):-jawab(A,'T'),diagnosa0.
	pilih12(_):-exxit,tanya12.						
						

diagnosa0:-
	nl,nl,
	write("PENYAKIT YANG ANDA DERITA TIDAK DAPAT KAMI DIAGNOSIS\n"),nl,nl,nl,
	write("Apakah anda ingin mengulang Diagnosis?? Y/T"),
	readchar(A), pilihan1(A).								
	pilihan1(A):-jawab(A,'Y'),start.							
	pilihan1(A):-jawab(A,'y'),start.
	pilihan1(A):-jawab(A,'T'),keluar.							
	pilihan1(A):-jawab(A,'t'),keluar.
	pilihan1(_):-exxit,diagnosa0.							
	
	diagnosa1:-
	nl,nl,
	write("Penyakit pada Usus yang anda derita adalah"),nl,
	write("=Radang Usus Buntu="),nl,nl,	
	write("Apakah anda ingin melakukan Diagnosis baru?? Y/T"),
	readchar(A), pilihan2(A).								
	pilihan2(A):-jawab(A,'Y'),start.							
	pilihan2(A):-jawab(A,'y'),start.
	pilihan2(A):-jawab(A,'T'),keluar.							
	pilihan2(A):-jawab(A,'t'),keluar.
	pilihan2(_):-exxit,diagnosa1.							
	
	diagnosa2:-
	nl,nl,
	write("Penyakit pada Usus yang anda derita adalah"),nl,
	write("=Sembelit="),nl,nl,	
	write("Apakah anda ingin melakukan Diagnosis baru?? Y/T"),
	readchar(A), pilihan3(A).								
	pilihan3(A):-jawab(A,'Y'),start.							
	pilihan3(A):-jawab(A,'y'),start.
	pilihan3(A):-jawab(A,'T'),keluar.							
	pilihan3(A):-jawab(A,'t'),keluar.
	pilihan3(_):-exxit,diagnosa2.						
	
	diagnosa3:-
	nl,nl,
	write("Penyakit pada Usus yang anda derita adalah"),nl,
	write("=Kanker Usus Besar="),nl,nl,	
	write("Apakah anda ingin melakukan Diagnosis baru?? Y/T"),
	readchar(A), pilihan4(A).								
	pilihan4(A):-jawab(A,'Y'),start.							
	pilihan4(A):-jawab(A,'y'),start.
	pilihan4(A):-jawab(A,'T'),keluar.							
	pilihan4(A):-jawab(A,'t'),keluar.	
	pilihan4(_):-exxit,diagnosa3.								
	
	diagnosa4:-	
	nl,nl,
	write("Penyakit pada Usus yang anda derita adalah"),nl,
	write("=Radang Usus Besar="),nl,nl,	
	write("Apakah anda ingin melakukan Diagnosis baru?? Y/T"),
	readchar(A), pilihan5(A).								
	pilihan5(A):-jawab(A,'Y'),start.							
	pilihan5(A):-jawab(A,'y'),start.							
	pilihan5(A):-jawab(A,'T'),keluar.							
	pilihan5(A):-jawab(A,'t'),keluar.
	pilihan5(_):-exxit,diagnosa4.	
	
	exxit:-
	write("\n INPUTAN ANDA SALAH").
	
	keluar:-
	nl,nl,nl,
	write("TERIMA KASIH TELAH MENGGUNAKAN PROGRAM KAMI UNTUK MENDETEKSI PENYAKIT PADA \n\t\t\t PENCERNAAN (USUS) ANDA :)"),exit.
	

/*==================================================================== DIAGNOSA ====================================================================*/

/*==================================================================== KESIMPULAN ====================================================================*/
goal
write("========================== RUMAH SAKIT C1 KECERDASAN BUATAN =========================="),nl,nl,
write("======================== DIAGNOSIS PENYAKIT PENCERNAAN PADA USUS ========================"),nl,nl,
write("SILAHKAN ISI GEJALA - GEJALA YANG ANDA ALAMI DENGAN JAWABAN Y (IYA) ATAU T (TIDAK)"),nl,nl,
lihat(["Nonik Sriningsih","\nOktafira Anandiya","\nAhmad Taufik"]),nl,
start.