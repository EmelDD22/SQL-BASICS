--REPLACE
SELECT 'EMEL DO�AN'
SELECT REPLACE('EMEL DO�AN', 'DO�AN', 'DURHANO�LU')

DECLARE @METIN AS VARCHAR(MAX)
SET @METIN=
'Bug�n kendime baz� sorular sordum. Mutlu musun, dedim, cevab�m �evet� oldu. Hayallerin pe�inden gitmeye haz�r m�s�n, dedim, yine �evet� ��kt� i�imden. Zor zamanlarda pes etmeyecek misin, dedim, bir �evet� daha y�kseldi. Sevdiklerini koruyacak m�s�n, dedim, cevab�m kocaman bir �evet�ti. Yeni �eyler ��renmeye a��k m�s�n, dedim, i�imden �evet� f�s�ldand�. Kendini sevecek misin, dedim, i�ten bir �evet� geldi. Hayat� kucaklayacak m�s�n, dedim, g��l� bir �evet� duydum. �yili�e inan�yor musun, dedim, kalbim �evet� dedi. ��kredecek misin, dedim, yine �evet� ��kt�. Ve son olarak, umutla devam edecek misin diye sordum; cevab�m kesinlikle �evet� oldu.'

--SELECT @METIN=REPLACE(@METIN, 'BUG�N','D�N') SELECT @METIN

DECLARE @LEN1 AS INT
SET @LEN1=LEN(@METIN)
DECLARE @LEN2 AS INT
SET @METIN=REPLACE(@METIN,'EVET','')
SET @LEN2=LEN(@METIN)

SELECT (@LEN1-@LEN2)/LEN('EVET')


