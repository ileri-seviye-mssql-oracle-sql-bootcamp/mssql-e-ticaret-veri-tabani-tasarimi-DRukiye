CREATE PROCEDURE BELLI_BIR_URUNU_ALAN_MUSTERILER
   @URUN_KOD INT
AS
BEGIN
   SELECT K.kullaniciKod,K.kullaniciAd,S.faturaKod,SD.urunKod,U.listeFiyat,SD.adet,S.siparisTarih FROM tblUrun U
   INNER JOIN tblSiparisDetay SD ON SD.urunKod = U.urunKod
   INNER JOIN tblSiparis S ON S.faturaKod = SD.faturaKod
   INNER JOIN tblKullanici K ON S.kullaniciKod = K.kullaniciKod
   WHERE U.urunKod = @URUN_KOD
   ORDER BY K.kullaniciKod
END


