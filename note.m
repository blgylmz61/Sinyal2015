function[x,t]=note(genlik,frekans,vurus) %genli�i frekans� ve vuru� de�eri verilen notan�n sin�s sinyalini �izdiren fonksiyon
t=0:0,00025:vurus 
x=genlik*sin(2*pi*frekans*t)
