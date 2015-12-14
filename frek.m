function frekans = frek(nota,oktav)  % oktav� verilen notan�n frekans�n� d�nd�ren fonksiyon
notalar=['do','d1','re','mb','mi','fa','f1','sol','s1','la','lb' ,'si']; %notalar bir diziye atand�.
n=findstr(notalar,nota); % fonksiyona g�nderilen nota dizi i�erisinde arat�ld� ve indeksi d�nd�r�ld�.
frekans=16.35*(2^oktav)*(2^n/12); % notan�n frekans� matematiksel olarak hesapland�
