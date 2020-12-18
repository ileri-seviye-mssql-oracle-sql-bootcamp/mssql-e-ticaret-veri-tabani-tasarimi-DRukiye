CREATE PROC SP_YENI_HESAP_KAYIT_EKLEME
@HESAP_ID INT,
@ISIM NVARCHAR(55),
@SOYAD NVARCHAR(55),
@SUBE INT,
@BAKIYE MONEY
AS 
BEGIN

INSERT INTO tblHesap (HesapNo,isim,soyad,sube,bakiye)
VALUES (@HESAP_ID,@ISIM,@SOYAD,@SUBE,@BAKIYE)

END


 