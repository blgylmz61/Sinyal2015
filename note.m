function[x,t]=note(genlik,frekans,vurus) % genli�i frekans� ve vuru� de�eri verilen notan�n sin�s sinyalini �izdiren fonksiyon
t=0:1/10000:vurus; 
x=genlik*sin(2*pi*frekans*t) %verilen bilgiler do�rultusunde sinus sinyali olu�turur
