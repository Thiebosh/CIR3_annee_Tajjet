DROP TABLE IF EXISTS Sky ;
CREATE TABLE Sky (ID_sky INT AUTO_INCREMENT NOT NULL,
Label VARCHAR(255),
PRIMARY KEY (ID_sky)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Town ;
CREATE TABLE Town (ID_town INT AUTO_INCREMENT NOT NULL,
Label VARCHAR(255),
MinTemp FLOAT,
MaxTemp FLOAT,
FeltTemp FLOAT,
Humidity FLOAT,
Pressure FLOAT,
ID_sky INT,
PRIMARY KEY (ID_town)) ENGINE=InnoDB;

DROP TABLE IF EXISTS User ;
CREATE TABLE User (ID_user INT AUTO_INCREMENT NOT NULL,
Login VARCHAR(255),
Password VARCHAR(255),
Avatar VARCHAR(255),
BirthDate DATE,
Height FLOAT,
town_id_town INT,
PRIMARY KEY (ID_user)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Renewal ;
CREATE TABLE Renewal (ID_renewal INT AUTO_INCREMENT NOT NULL,
ModuleName VARCHAR(255),
ID_frequency INT,
PRIMARY KEY (ID_renewal)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Frequency ;
CREATE TABLE Frequency (ID_frequency INT AUTO_INCREMENT NOT NULL,
NumberOfDays FLOAT,
NextDate DATETIME,
PRIMARY KEY (ID_frequency)) ENGINE=InnoDB;

DROP TABLE IF EXISTS News ;
CREATE TABLE News (ID_news INT AUTO_INCREMENT NOT NULL,
Summary TEXT,
ID_theme INT,
PRIMARY KEY (ID_news)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Article ;
CREATE TABLE Article (ID_article INT AUTO_INCREMENT NOT NULL,
URL VARCHAR(255),
ReadingTime VARCHAR(255),
ID_news INT,
PRIMARY KEY (ID_article)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Category ;
CREATE TABLE Category (ID_category INT AUTO_INCREMENT NOT NULL,
Label VARCHAR(255),
PRIMARY KEY (ID_category)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Activity ;
CREATE TABLE Activity (ID_activity INT AUTO_INCREMENT NOT NULL,
Label VARCHAR(255),
Distance FLOAT,
ID_town INT,
ID_category INT,
PRIMARY KEY (ID_activity)) ENGINE=InnoDB;

DROP TABLE IF EXISTS TVprogram ;
CREATE TABLE TVprogram (ID_TVprogram INT AUTO_INCREMENT NOT NULL,
Title VARCHAR(255),
Synopsis TEXT,
Begin VARCHAR(255),
End VARCHAR(255),
Genre VARCHAR(255),
ID_channel INT,
PRIMARY KEY (ID_TVprogram)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Item ;
CREATE TABLE Item (ID_item INT AUTO_INCREMENT NOT NULL,
Label VARCHAR(255),
Consumable BOOLEAN,
PRIMARY KEY (ID_item)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Recipe ;
CREATE TABLE Recipe (ID_recipe INT AUTO_INCREMENT NOT NULL,
Picture VARCHAR(255),
PreparationTime VARCHAR(255),
CookingTime VARCHAR(255),
Steps TEXT,
Calories FLOAT,
PRIMARY KEY (ID_recipe)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Health ;
CREATE TABLE Health (ID_health INT AUTO_INCREMENT NOT NULL,
RecordDate DATE,
Weight FLOAT,
Calories FLOAT,
Sleep TIME,
ID_user INT,
PRIMARY KEY (ID_health)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Sport ;
CREATE TABLE Sport (ID_sport INT AUTO_INCREMENT NOT NULL,
Label VARCHAR(255),
Picture VARCHAR(255),
Calories FLOAT,
PRIMARY KEY (ID_sport)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Muscle ;
CREATE TABLE Muscle (ID_muscle INT AUTO_INCREMENT NOT NULL,
Label VARCHAR(255),
PRIMARY KEY (ID_muscle)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Theme ;
CREATE TABLE Theme (ID_theme INT AUTO_INCREMENT NOT NULL,
Label VARCHAR(255),
PRIMARY KEY (ID_theme)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Channel ;
CREATE TABLE Channel (ID_channel INT AUTO_INCREMENT NOT NULL,
Label VARCHAR(255),
PRIMARY KEY (ID_channel)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Include ;
CREATE TABLE Include (ID_recipe INT AUTO_INCREMENT NOT NULL,
ID_item INT NOT NULL,
PRIMARY KEY (ID_recipe,
 ID_item)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Have ;
CREATE TABLE Have (ID_item INT AUTO_INCREMENT NOT NULL,
ID_user INT NOT NULL,
PRIMARY KEY (ID_item,
 ID_user)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Work ;
CREATE TABLE Work (ID_muscle INT AUTO_INCREMENT NOT NULL,
ID_sport INT NOT NULL,
PRIMARY KEY (ID_muscle,
 ID_sport)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Program ;
CREATE TABLE Program (ID_user INT AUTO_INCREMENT NOT NULL,
ID_sport INT NOT NULL,
PRIMARY KEY (ID_user,
 ID_sport)) ENGINE=InnoDB;

ALTER TABLE Town ADD CONSTRAINT FK_Town_ID_sky FOREIGN KEY (ID_sky) REFERENCES Sky (ID_sky);

ALTER TABLE User ADD CONSTRAINT FK_User_town_id_town FOREIGN KEY (town_id_town) REFERENCES Town (ID_town);
ALTER TABLE Renewal ADD CONSTRAINT FK_Renewal_ID_frequency FOREIGN KEY (ID_frequency) REFERENCES Frequency (ID_frequency);
ALTER TABLE News ADD CONSTRAINT FK_News_ID_theme FOREIGN KEY (ID_theme) REFERENCES Theme (ID_theme);
ALTER TABLE Article ADD CONSTRAINT FK_Article_ID_news FOREIGN KEY (ID_news) REFERENCES News (ID_news);
ALTER TABLE Activity ADD CONSTRAINT FK_Activity_ID_town FOREIGN KEY (ID_town) REFERENCES Town (ID_town);
ALTER TABLE Activity ADD CONSTRAINT FK_Activity_ID_category FOREIGN KEY (ID_category) REFERENCES Category (ID_category);
ALTER TABLE TVprogram ADD CONSTRAINT FK_TVprogram_ID_channel FOREIGN KEY (ID_channel) REFERENCES Channel (ID_channel);
ALTER TABLE Health ADD CONSTRAINT FK_Health_ID_user FOREIGN KEY (ID_user) REFERENCES User (ID_user);
ALTER TABLE Include ADD CONSTRAINT FK_Include_ID_recipe FOREIGN KEY (ID_recipe) REFERENCES Recipe (ID_recipe);
ALTER TABLE Include ADD CONSTRAINT FK_Include_ID_item FOREIGN KEY (ID_item) REFERENCES Item (ID_item);
ALTER TABLE Have ADD CONSTRAINT FK_Have_ID_item FOREIGN KEY (ID_item) REFERENCES Item (ID_item);
ALTER TABLE Have ADD CONSTRAINT FK_Have_ID_user FOREIGN KEY (ID_user) REFERENCES User (ID_user);
ALTER TABLE Work ADD CONSTRAINT FK_Work_ID_muscle FOREIGN KEY (ID_muscle) REFERENCES Muscle (ID_muscle);
ALTER TABLE Work ADD CONSTRAINT FK_Work_ID_sport FOREIGN KEY (ID_sport) REFERENCES Sport (ID_sport);
ALTER TABLE Program ADD CONSTRAINT FK_Program_ID_user FOREIGN KEY (ID_user) REFERENCES User (ID_user);
ALTER TABLE Program ADD CONSTRAINT FK_Program_ID_sport FOREIGN KEY (ID_sport) REFERENCES Sport (ID_sport);
