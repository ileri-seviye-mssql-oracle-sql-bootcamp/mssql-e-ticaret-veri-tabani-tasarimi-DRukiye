ALTER VIEW VW_YILLARA_GORE_SATIS
AS
SELECT 
	DATEPART(YEAR,S.siparisTarih) YIL,
	SUM(SD.adet) TOPLAM_ADET,
	SUM(SD.SatirNo) TOPLAM_TUTAR,
	COUNT(DISTINCT U.urunKod) URUN_SAYISI,
	COUNT(DISTINCT K.kullaniciKod ) AS MUSTERI_SAYISI
	
FROM tblSiparis S 
INNER JOIN tblKullanici K ON K.kullaniciKod = S.kullaniciKod
INNER JOIN tblSiparisDetay SD ON SD.faturaKod = S.faturaKod
INNER JOIN tblUrun U ON U.urunKod = SD.urunKod
GROUP BY DATEPART(YEAR,S.siparisTarih) 
 
 SELECT * FROM VW_YILLARA_GORE_SATIS