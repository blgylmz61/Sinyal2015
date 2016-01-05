
%%
%%dei�kenine 2. s�t�n b de�i�kenine vr 3. sut�n c de�i�kenine atand�.oktav
%%de�eriyle oynayabilmek ad�na bir de�i�ken tan�mlad� ve de�i�kene 0 de�eri
%%atand�. �rnekleme say�s�,durma s�rei ve geikme s�resi de�i�keni
%%tan�mland� ve atamalar� yap�ld�.

    [nota,b,c]=textread('Notalar.txt','%s %s %s'); %Notalar.txt dosyasi okunarak her sutun bir de�ere atandi
    oktavdegeri=1; %oktav degeri degistirilebilir
    fs=11000;%�rnekleme say�s� de�i�kene atand�
    ds=round(fs/100); %durma s�resi hesapland�
    go=round(fs/10); %gecikme s�resi hesapland�
%%
%%�rnekleme s�resi kadar s�f�rdan olusan bir dizi olu�turuldu.notalar
%%matrisi boyutlar�nda s�f�rdan olusan bir dizi olu�turuldu.durma s�resi
%%boyutunda s�f�rdan olusan bir dizi olu�turuldu.Dosyadan cell olarak okunan
%%de�i�kenler double de�ere d�n��t�r�ld� ve oktav de�i�kenine atand�.

    notalar=zeros(1,fs); %�rnekleme s�resi kadar s�f�rdan olusan bir dizi olu�turuldu
    a=zeros(1,length(notalar)); %notalar matrisi boyutlar�nda s�f�rdan olusan bir dizi olu�turuldu
    durak=zeros(1,ds); %durma s�resi boyutunda s�f�rdan olusan bir dizi olu�turuldu
    oktav=str2num(cell2mat(b)); %dosyadan cell olarak okunan de�i�kenler double de�ere d�n��t�r�ld�.
%%  

for i=1:(length(nota)) %nota dizisi boyu kadar d�ng� ol�turuldu
       vurus((i),1)=str2num(cell2mat(c(i,1))); %dosyadan cell olarak okunan de�i�kenler double de�ere d�n��t�r�ld�.
       frekans((i),1)=frek(nota((i),1),oktav((i),1),oktavdegeri); %daha �nceden olu�turulmu� frek fonsiyonu �a��r�ld�
       [x,t]=note(frekans((i),1),vurus((i),1)); %daha �nceden ol��turulmu� note fonksiyonu �a��r�ld�.
       notalar=[notalar durak x]; %note fonsiyonunun d�nd�rd��� sinyal de�eri aralar�na daha �nce olu�turulmu durak dizisi de yerle�tirilerek birle�tirildi
   end %for d�ng�s� bitirildi
   plot(notalar)
   title('Zarflanan nota sinyalleri duraklama s�resi ile birlikte pe�pe�e eklendi')
 %%
   notalarecho=zeros(1,(length(notalar))); %notalar matrisi boyutlar�nda s�f�rdan olusan bir dizi olu�turuldu
 for i=1:(length(notalar)) %notalar dizisi boyu kadar d�ng� ol�turuldu
     f=(go+i); %echo olu�turmak i�in gerekli olan gecikme s�resi d�ng�ye sokuldu
     if f<(length(notalar)) %gecikme s�resi notalar matrisinin boyutunu ge�mesin diye �art sa�land�
     notalarecho(i)=notalar(i)*0.3+notalar(f); %notalar matrisinin herbir de�erinin %30'u al�n�p ge�ikme s�resi kadar kayd�r�lm��t�r
     else 
      notalarecho(i)=notalar(i)*0.3+0; %notalar dizininin her eleman�n�n %30'unu al�p notalar dizininin boyunu a�t���i�in gecikme s�resi kadar kayd�rmadan 0 ile toplad�k.
     end
    
 end 
  plot(notalarecho)
     title('Echolanan Nota Sinyalleri')
 %%
  normalizenotalarecho=zeros(1,(length(notalar)));%normalizasyon i�lemi yap�labilmesi i�in de�i�ken tan�mlanm��t�r
  normalizenotalarecho=notalarecho/max(abs(notalarecho));%sinyalin tepe de�erleri 1'e normalize edilmi�tir.

  sound(normalizenotalarecho) %sinyal �ald�r�l�yor.
    plot(normalizenotalarecho)
      title('Nomalize Edilmi� Nota Sinyalleri')

    