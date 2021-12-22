CREATE TABLE Countries (
  CountryID       int  NOT NULL,
  CountryName	  varchar(80) NOT NULL,
  Capital	  varchar(80) NOT NULL,
  Population	  int NOT NULL,
  LanguageID      int,
  PRIMARY KEY     (CountryID),
  CONSTRAINT FK_LanguageCountry FOREIGN KEY (LanguageID)
  REFERENCES Languages(LanguageID)
) 

CREATE TABLE Languages(
  LanguageID  	 int NOT NULL,
  LanguageName   varchar(80) NOT NULL,
  PRIMARY KEY (LanguageID) 
)

INSERT INTO Countries (CountryID, CountryName, Capital, Population) VALUES
(1, 'United States', 'Washington', 20000),
(2, 'Mexico', 'Mexico City', 10000);

INSER INTO Languages (LanguageID, LanguageName) VALUES
(1, English),
(2, Spanish);

UPDATE Countries
SET Population = 250000
WHERE CountryID = 1;
    
DELETE FROM Countries
WHERE population>=100,000; 

SELECT Countries.CountryID
FROM Countries
INNER JOIN Languages ON Countries.LanguageID=Languages.LanguageID;