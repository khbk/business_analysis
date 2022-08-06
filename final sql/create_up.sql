CREATE DATABASE ConvenienceStoreDB
GO

USE ConvenienceStoreDB
GO

CREATE TABLE Location (
    locationID INT IDENTITY (1,1) PRIMARY KEY,
    locationName VARCHAR(100)
)
GO

INSERT INTO Location(locationName)
VALUES('University Place'),
('Burien'),
('Kent')
GO

SELECT *
FROM Location
GO

CREATE TABLE DailyTransaction (
    DailyTransactionID INT IDENTITY (1,1) PRIMARY KEY,
    locationID INT FOREIGN KEY REFERENCES Location(locationID) NOT NULL,
    dates DATE,
    total MONEY,
    pack MONEY,
    carton MONEY,
    grcy MONEY,
    grcy_nt MONEY,
    vape MONEY,
    misc_total MONEY,
    tobacco MONEY,
    beer MONEY,
    cigar MONEY,
    lotto MONEY,
    p_o MONEY,
    scratch MONEY,
    scp_o MONEY,
    main MONEY,
    card MONEY
)
GO









-- University Place
CREATE TABLE [dbo].[UniversityPlacePK](
	PK INT IDENTITY (1,1) PRIMARY KEY,
    [column1] [smallint] NULL,
	[dates] [date] NULL,
	[total] [float] NULL,
	[pack] [float] NULL,
	[carton] [float] NULL,
	[grcy] [float] NULL,
	[grcy_nt] [float] NULL,
	[misc_total] [float] NULL,
	[vape] [float] NULL,
	[tobacco] [float] NULL,
	[beer] [float] NULL,
	[cigar] [float] NULL,
	[lotto] [float] NULL,
	[p_o] [float] NULL,
	[scratch] [float] NULL,
	[scp_o] [float] NULL,
	[main] [float] NULL,
	[card] [float] NULL
)
GO

INSERT INTO UniversityPlacePK
SELECT * FROM UniversityPlace
GO


DECLARE @COUNT INT = (SELECT COUNT(*) FROM UniversityPlacePK)
DECLARE @RUN INT = 1
DECLARE @dates date, @total float,
	@pack float,
	@carton float,
	@grcy float,
	@grcy_nt float,
	@misc_total float,
	@vape float,
    @tobacco float,
    @beer float,
	@cigar float,
	@lotto float,
	@p_o float,
	@scratch float,
	@scp_o float,
	@main float,
	@card float


WHILE @COUNT >= @RUN
BEGIN

SET @dates = (
		SELECT dates
		FROM UniversityPlacePK
		WHERE PK = @RUN
	)

SET @total = (
		SELECT total
		FROM UniversityPlacePK
		WHERE PK = @RUN
	)

SET @pack = (
		SELECT pack
		FROM UniversityPlacePK
		WHERE PK = @RUN
	)

SET @carton = (
		SELECT carton
		FROM UniversityPlacePK
		WHERE PK = @RUN
	)

SET @grcy = (
		SELECT grcy
		FROM UniversityPlacePK
		WHERE PK = @RUN
	)

SET @grcy_nt = (
		SELECT grcy_nt
		FROM UniversityPlacePK
		WHERE PK = @RUN
	)

SET @misc_total = (
		SELECT misc_total
		FROM UniversityPlacePK
		WHERE PK = @RUN
	)

SET @vape = (
		SELECT vape
		FROM UniversityPlacePK
		WHERE PK = @RUN
	)

SET @tobacco = (
		SELECT tobacco
		FROM UniversityPlacePK
		WHERE PK = @RUN
	)

SET @beer = (
		SELECT beer
		FROM UniversityPlacePK
		WHERE PK = @RUN
	)

SET @cigar = (
		SELECT cigar
		FROM UniversityPlacePK
		WHERE PK = @RUN
	)

SET @lotto = (
		SELECT lotto
		FROM UniversityPlacePK
		WHERE PK = @RUN
	)

SET @p_o = (
		SELECT p_o
		FROM UniversityPlacePK
		WHERE PK = @RUN
	)

SET @scratch = (
		SELECT scratch
		FROM UniversityPlacePK
		WHERE PK = @RUN
	)

SET @scp_o = (
		SELECT scp_o
		FROM UniversityPlacePK
		WHERE PK = @RUN
	)

SET @main = (
		SELECT main
		FROM UniversityPlacePK
		WHERE PK = @RUN
	)

SET @card = (
		SELECT card
		FROM UniversityPlacePK
		WHERE PK = @RUN
	)

INSERT INTO DailyTransaction
VALUES(1, @dates, @total, @pack, @carton, @grcy, @grcy_nt, @misc_total, @vape, @tobacco, @beer, @cigar, @lotto, @p_o, @scratch, @scp_o, @main, @card)

SET @RUN = @RUN + 1

END
GO








-- Burien
CREATE TABLE [dbo].[BurienPK](
	PK INT IDENTITY (1,1) PRIMARY KEY,
	[column1] [smallint] NULL,
	[dates] [date] NULL,
	[total] [float] NULL,
	[pack] [float] NULL,
	[carton] [float] NULL,
	[grcy] [float] NULL,
	[misc_total] [float] NULL,
	[vape] [float] NULL,
	[tobacco] [float] NULL,
	[beer] [float] NULL,
	[main] [float] NULL,
	[card] [float] NULL
)
GO

INSERT INTO BurienPK
SELECT * FROM Burien
GO


DECLARE @COUNT INT = (SELECT COUNT(*) FROM BurienPK)
DECLARE @RUN INT = 1
DECLARE @dates date, @total float,
	@pack float,
	@carton float,
	@grcy float,
	@grcy_nt float,
	@misc_total float,
	@vape float,
    @tobacco float,
    @beer float,
	@cigar float,
	@lotto float,
	@p_o float,
	@scratch float,
	@scp_o float,
	@main float,
	@card float


WHILE @COUNT >= @RUN
BEGIN

SET @dates = (
		SELECT dates
		FROM BurienPK
		WHERE PK = @RUN
	)

SET @total = (
		SELECT total
		FROM BurienPK
		WHERE PK = @RUN
	)

SET @pack = (
		SELECT pack
		FROM BurienPK
		WHERE PK = @RUN
	)

SET @carton = (
		SELECT carton
		FROM BurienPK
		WHERE PK = @RUN
	)

SET @grcy = (
		SELECT grcy
		FROM BurienPK
		WHERE PK = @RUN
	)

SET @grcy_nt = 0

SET @misc_total = (
		SELECT misc_total
		FROM BurienPK
		WHERE PK = @RUN
	)

SET @vape = (
		SELECT vape
		FROM BurienPK
		WHERE PK = @RUN
	)

SET @tobacco = (
		SELECT tobacco
		FROM BurienPK
		WHERE PK = @RUN
	)

SET @beer = (
		SELECT beer
		FROM BurienPK
		WHERE PK = @RUN
	)

SET @cigar = 0

SET @lotto = 0

SET @p_o = 0

SET @scratch = 0

SET @scp_o = 0

SET @main = (
		SELECT main
		FROM BurienPK
		WHERE PK = @RUN
	)

SET @card = (
		SELECT card
		FROM BurienPK
		WHERE PK = @RUN
	)

INSERT INTO DailyTransaction
VALUES(2, @dates, @total, @pack, @carton, @grcy, @grcy_nt, @misc_total, @vape, @tobacco, @beer, @cigar, @lotto, @p_o, @scratch, @scp_o, @main, @card)

SET @RUN = @RUN + 1

END
GO





-- Kent
CREATE TABLE [dbo].[KentPK](
	PK INT IDENTITY (1,1) PRIMARY KEY,
	[column1] [smallint] NULL,
	[dates] [date] NULL,
	[total] [float] NULL,
	[pack] [float] NULL,
	[carton] [float] NULL,
	[grcy] [float] NULL,
	[misc_total] [float] NULL,
	[tobacco] [float] NULL,
	[beer] [float] NULL,
	[main] [float] NULL,
	[card] [float] NULL
)
GO

INSERT INTO KentPK
SELECT * FROM Kent
GO


DECLARE @COUNT INT = (SELECT COUNT(*) FROM KentPK)
DECLARE @RUN INT = 1
DECLARE @dates date, @total float,
	@pack float,
	@carton float,
	@grcy float,
	@grcy_nt float,
	@misc_total float,
	@vape float,
    @tobacco float,
    @beer float,
	@cigar float,
	@lotto float,
	@p_o float,
	@scratch float,
	@scp_o float,
	@main float,
	@card float


WHILE @COUNT >= @RUN
BEGIN

SET @dates = (
		SELECT dates
		FROM KentPK
		WHERE PK = @RUN
	)

SET @total = (
		SELECT total
		FROM KentPK
		WHERE PK = @RUN
	)

SET @pack = (
		SELECT pack
		FROM KentPK
		WHERE PK = @RUN
	)

SET @carton = (
		SELECT carton
		FROM KentPK
		WHERE PK = @RUN
	)

SET @grcy = (
		SELECT grcy
		FROM KentPK
		WHERE PK = @RUN
	)

SET @grcy_nt = 0

SET @misc_total = (
		SELECT misc_total
		FROM KentPK
		WHERE PK = @RUN
	)

SET @vape = 0

SET @tobacco = (
		SELECT tobacco
		FROM KentPK
		WHERE PK = @RUN
	)

SET @beer = (
		SELECT beer
		FROM KentPK
		WHERE PK = @RUN
	)

SET @cigar = 0

SET @lotto = 0

SET @p_o = 0

SET @scratch = 0

SET @scp_o = 0

SET @main = (
		SELECT main
		FROM KentPK
		WHERE PK = @RUN
	)

SET @card = (
		SELECT card
		FROM KentPK
		WHERE PK = @RUN
	)

INSERT INTO DailyTransaction
VALUES(3, @dates, @total, @pack, @carton, @grcy, @grcy_nt, @misc_total, @vape, @tobacco, @beer, @cigar, @lotto, @p_o, @scratch, @scp_o, @main, @card)

SET @RUN = @RUN + 1

END
GO

SELECT *
FROM DailyTransaction DT
    JOIN Location L ON L.locationID = DT.locationID
GO


-- Adding margins

ALTER TABLE dbo.DailyTransaction 
ADD packMargin AS (pack * 0.1)

ALTER TABLE dbo.DailyTransaction 
ADD cartonMargin AS (carton * 0.1)

ALTER TABLE dbo.DailyTransaction 
ADD cigarMargin AS (cigar * 0.25)

ALTER TABLE dbo.DailyTransaction 
ADD grcyMargin AS (grcy * 0.3)

ALTER TABLE dbo.DailyTransaction 
ADD grcyntMargin AS (grcy_nt * 0.3)

ALTER TABLE dbo.DailyTransaction 
ADD vapeMargin AS (vape * 0.45)

ALTER TABLE dbo.DailyTransaction 
ADD miscMargin AS (misc_total * 0.5)

ALTER TABLE dbo.DailyTransaction 
ADD tobaccoMargin AS (tobacco * 0.25)

ALTER TABLE dbo.DailyTransaction 
ADD beerMargin AS (beer * 0.28)

ALTER TABLE dbo.DailyTransaction 
ADD lottoMargin AS ((lotto + p_o) * 0.04)

ALTER TABLE dbo.DailyTransaction 
ADD scratchMargin AS ((scratch + scp_o) * 0.04)



-- Deleting Duplicates

WITH cte AS (
    SELECT 
        dates, 
        total, 
        pack, 
        beer, 
        ROW_NUMBER() OVER (
            PARTITION BY 
                total, 
                pack, 
                beer
            ORDER BY 
                total, 
                pack, 
                beer
        ) row_num
     FROM 
        DailyTransaction
)
DELETE FROM cte
WHERE row_num > 1;



-- Insights

SELECT dates, MAX(total) AS best_sales, locationID
FROM DailyTransaction
GROUP BY dates, locationID
ORDER BY MAX(total) DESC

SELECT dates, total, locationID
FROM DailyTransaction 
WHERE total > 5000
ORDER BY total DESC

SELECT AVG(total), locationID
FROM DailyTransaction
GROUP BY locationID

SELECT SUM(packMargin) + SUM(cartonMargin) + SUM(grcyMargin) + SUM(grcyntMargin) + SUM(vapeMargin) + SUM(miscMargin) +
SUM(tobaccoMargin) + SUM(beerMargin) + SUM(lottoMargin) + SUM(scratchMargin)
FROM DailyTransaction

SELECT COUNT(dates)
FROM DailyTransaction