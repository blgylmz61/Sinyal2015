BiLGE YILMAZ
030115236
SiNYAL iSLEME
Proje : MATLAB ile sentezleme
Frek.m dosyas� notan�n frekans�n� hesaplayan fonksiyonu icermektedir.
Notalar.png dosyas� sinyalleri olusturulacak notalar� g�stermektedir.
Notalar.txt dosyas� her �l��n�n notalar�n� ve vurus de�erlerini olu�turmaktad�r.
note.m dosyas� her notan�n sin�s sinyalini olusturacak fonksiyonu icermektedir.
	Notalar�n frekanslar� aras�nda ki ba�lant� ise her oktav derecesi artt�k�a frekans de�eri 2 kat�na ��kmatad�r.
notalar sa�a do�ru ilerledik�e 2'1/12 lik bir de�i�kenlik g�stermektedir. Bu durumda 0. oktav�n 'do de�erini sabit olarak al�rsak 
frekans.hesab�n�= 16.35*(2^oktav)*2^(nota.indexsi/12) ile yapabiliriz.

Notalar.txt dosyas� g�ncellendi ve notalara oktav de�erleri de eklendi. frek fonksiyonu g�ncellendi ve de�er g�nderilmedi�i taktirde oktav� 4 almas� sa�land�
ayn� zamanda sus notas� eklendi ve nota de�eri sus geldi�i durumlarda frekans �retilmemesi sa�land�.
nota.m dosyas� da �retilen sin�s sinyalini zarflamak �zere g�ncellenmek istendi ama ba�ar�lamad�. 