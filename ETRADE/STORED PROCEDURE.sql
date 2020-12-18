ALTER PROCEDURE SP_DETAYLI_SIPARIS_RAPORU
@BASLANGICTARIH DATE,
@BITISTARIH DATE
AS
BEGIN

	SELECT
	 K.kullaniciAd,K.isim,K.soyad,K.sehir,k.adres1,k.adres2,k.bakiye,S.faturaKod,U.urunKod,SD.adet,
	SDURUM.siparisDurumKod,S.siparisTarih,SD.toplam,U.stokDurum,SDURUM.aciklama,
	CONVERT(DATE,S.siparisTarih) AS SIPARISTARIHI,
	CONVERT(TIME,S.siparisTarih) AS SIPARISZAMANI,
	DBO.MONTHNAME_(S.siparisTarih) AS AY,
	DBO.DAYOFWEEK_(S.siparisTarih) AS GUN,
	
	FROM tblKullanici K
	INNER JOIN tblSiparis S ON K.kullaniciKod = S.kullaniciKod
	INNER JOIN tblSiparisDetay SD ON S.faturaKod = SD.faturaKod
	INNER JOIN tblUrun U ON SD.urunKod = U.urunKod
	INNER JOIN tblSiparisDurum SDURUM ON S.siparisDurumKod = SDURUM.siparisDurumKod

	WHERE S.siparisTarih BETWEEN @BASLANGICTARIH AND @BITISTARIH

END