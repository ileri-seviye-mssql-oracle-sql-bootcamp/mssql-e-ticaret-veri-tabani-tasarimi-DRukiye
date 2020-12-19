ALTER VIEW VW_URUN_ANALİZ
AS
SELECT U.urunKod URUNKODU,U.urunAd URUNADI,
MAX(U.listeFiyat) AS EN_YUKSEK_FIYAT,
MIN(U.listeFiyat) AS EN_DUSUK_FIYAT,
AVG(U.listeFiyat) AS ORTALAMA_FIYAT,
SUM(SD.toplam) as TOPLAM_TUTAR,
SUM(SD.adet) AS TOPLAM_SATIS_MIKTARI
FROM tblSiparis S 
INNER JOIN tblKullanici K ON K.kullaniciKod = S.kullanicikod
INNER JOIN tblSiparisDetay SD ON SD.faturaKod = S.faturaKod
INNER JOIN tblUrun U ON U.urunKod = SD.urunKod
GROUP BY U.urunKod,U.urunAd 

SELECT * FROM VW_URUN_ANALİZ




