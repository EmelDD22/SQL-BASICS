--REPLACE
SELECT 'EMEL DOÐAN'
SELECT REPLACE('EMEL DOÐAN', 'DOÐAN', 'DURHANOÐLU')

DECLARE @METIN AS VARCHAR(MAX)
SET @METIN=
'Bugün kendime bazý sorular sordum. Mutlu musun, dedim, cevabým “evet” oldu. Hayallerin peþinden gitmeye hazýr mýsýn, dedim, yine “evet” çýktý içimden. Zor zamanlarda pes etmeyecek misin, dedim, bir “evet” daha yükseldi. Sevdiklerini koruyacak mýsýn, dedim, cevabým kocaman bir “evet”ti. Yeni þeyler öðrenmeye açýk mýsýn, dedim, içimden “evet” fýsýldandý. Kendini sevecek misin, dedim, içten bir “evet” geldi. Hayatý kucaklayacak mýsýn, dedim, güçlü bir “evet” duydum. Ýyiliðe inanýyor musun, dedim, kalbim “evet” dedi. Þükredecek misin, dedim, yine “evet” çýktý. Ve son olarak, umutla devam edecek misin diye sordum; cevabým kesinlikle “evet” oldu.'

--SELECT @METIN=REPLACE(@METIN, 'BUGÜN','DÜN') SELECT @METIN

DECLARE @LEN1 AS INT
SET @LEN1=LEN(@METIN)
DECLARE @LEN2 AS INT
SET @METIN=REPLACE(@METIN,'EVET','')
SET @LEN2=LEN(@METIN)

SELECT (@LEN1-@LEN2)/LEN('EVET')


