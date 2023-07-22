/* run first */
CREATE DATABASE PostData; 

/* run second*/
USE PostData
GO
CREATE TABLE T_User (
 ID int NOT NULL IDENTITY PRIMARY KEY,
 UserName varchar(50) NOT NULL ,
 Password varchar(50) NOT NULL,
 Email varchar(30),
 NameSurname varchar(50) NOT NULL,
 ImagePath varchar(max) NOT NULL,
 isAdmin bit NOT NULL,
 isDeleted bit,
 DeletedDate datetime,
 AddDate datetime NOT NULL,
 LastUpdateUserID int NOT NULL,
 LastUpdateDate datetime NOT NULL,
)



CREATE TABLE Category (
 ID int NOT NULL IDENTITY PRIMARY KEY,
 CategoryName varchar(50) NOT NULL ,
 isDeleted bit NOT NULL,
 DeletedDate datetime,
 AddDate datetime NOT NULL,
 LastUpdateUserID int NOT NULL,
 LastUpdateDate datetime NOT NULL,
) 

CREATE TABLE Address (
 ID int NOT NULL IDENTITY PRIMARY KEY,
 Address varchar(MAX) NOT NULL ,
 Email varchar(50) ,
 Phone varchar(50) NOT NULL,
 Phone2 varchar(50),
 Fax varchar(50) NOT NULL,
 MapPathLarge varchar(MAX) NOT NULL,
 MapPathSmall varchar(MAX) NOT NULL,
 isDeleted bit NOT NULL,
 DeletedDate datetime,
 AddDate datetime NOT NULL,
 LastUpdateUserID int NOT NULL,
 LastUpdateDate datetime NOT NULL,
) 


CREATE TABLE Meta(
 ID int NOT NULL IDENTITY PRIMARY KEY,
 Name varchar(50) NOT NULL,
 MetaContent varchar(MAX) NOT NULL,
 DeletedDate datetime,
 isDeleted bit NOT NULL,
 AddDate datetime NOT NULL,
 LastUpdateUserID int NOT NULL,
 LastUpdateDate datetime NOT NULL,
) 

CREATE TABLE SocialMedia(
 ID int NOT NULL IDENTITY PRIMARY KEY,
 Name varchar(50) NOT NULL,
 ImagePath varchar(MAX) NOT NULL,
 Link varchar(50) NOT NULL,
 DeletedDate datetime,
 isDeleted bit NOT NULL,
 AddDate datetime NOT NULL,
 LastUpdateUserID int NOT NULL,
 LastUpdateDate datetime NOT NULL,
)

CREATE TABLE FavLogoTitle(
 ID int NOT NULL IDENTITY PRIMARY KEY,
 Title varchar(50) NOT NULL,
 Fav varchar(MAX) NOT NULL,
 Logo varchar(Max) NOT NULL,
 DeletedDate datetime,
 isDeleted bit NOT NULL,
 AddDate datetime NOT NULL,
 LastUpdateUserID int NOT NULL,
 LastUpdateDate datetime NOT NULL,
)

CREATE TABLE Posts(
 ID int NOT NULL IDENTITY PRIMARY KEY,
 Title varchar(100) NOT NULL,
 ShortContent varchar(250) NOT NULL,
 PostContent varchar(Max) NOT NULL,
 CategoryID int,
 ViewCount int,
 SeoLink varchar(100),
 SliderType bit,
 Area1 bit,
 Area2 bit,
 Area3 bit,
 Notification bit,
 LanguageName varchar(50),
 UserID int,
 DeletedDate datetime,
 isDeleted bit NOT NULL,
 AddDate datetime NOT NULL,
 LastUpdateUserID int NOT NULL,
 LastUpdateDate datetime NOT NULL,
)
CREATE TABLE PostImage(
 ID int NOT NULL IDENTITY PRIMARY KEY,
 PostID int NOT NULL,
 ImagePath varchar(Max) NOT NULL,
 DeletedDate datetime,
 isDeleted bit NOT NULL,
 AddDate datetime NOT NULL,
 LastUpdateUserID int NOT NULL,
 LastUpdateDate datetime NOT NULL,
)

CREATE TABLE PostTag(
 ID int NOT NULL IDENTITY PRIMARY KEY,
 PostID int NOT NULL,
 TagContent varchar(30) NOT NULL,
 DeletedDate datetime,
 isDeleted bit NOT NULL,
 AddDate datetime NOT NULL,
 LastUpdateUserID int NOT NULL,
 LastUpdateDate datetime NOT NULL,
)

CREATE TABLE Comment(
 ID int NOT NULL IDENTITY PRIMARY KEY,
 PostID int NOT NULL,
 NameSurname varchar(50) NOT NULL,
 Email varchar(50) NOT NULL,
 CommentContent varchar(250) NOT NULL,
 IsApproved bit NOT NULL,
 ApproveUserID int,
 ApproveDate datetime,
 DeletedDate datetime,
 isDeleted bit NOT NULL,
 AddDate datetime NOT NULL,
 LastUpdateUserID int,
 LastUpdateDate datetime,
)

CREATE TABLE Video(
 ID int NOT NULL IDENTITY PRIMARY KEY,
 VideoPath varchar(MAX) NOT NULL,
 Title varchar(100) NOT NULL,
 OriginalVideoPath varchar(100) NOT NULL,
 AddID int NOT NULL,
 isDeleted bit NOT NULL,
 AddDate datetime NOT NULL,
 LastUpdateUserID int NOT NULL,
 LastUpdateDate datetime NOT NULL,
)

CREATE TABLE Contact(
 ID int NOT NULL IDENTITY PRIMARY KEY,
 NameSurname varchar(50) NOT NULL,
 Email varchar(50) NOT NULL,
 Phone varchar(20),
 Subject varchar(250) NOT NULL,
 Message varchar(MAX) NOT NULL,
 isRead bit NOT NULL,
 ReadUserID int ,
 isDeleted bit NOT NULL,
 DeletedDate datetime,
 AddDate datetime NOT NULL,
 LastUpdateUserID int ,
 LastUpdateDate datetime ,
)

CREATE TABLE Log_Table(
 ID int NOT NULL IDENTITY PRIMARY KEY,
 UserID int NOT NULL,
 IPAdress varchar(20) NOT NULL,
 ProcessID int NOT NULL,
 ProcessType int NOT NULL,
 ProcessCategoryType varchar(50) NOT NULL,
 ProccessDate datetime NOT NULL,
)

CREATE TABLE ProcessType(
 ID int NOT NULL IDENTITY PRIMARY KEY,
 ProcessName varchar(100) NOT NULL,
)
INSERT INTO ProcessType(ProcessName) VALUES 
('Login'),
('Address was added'),('Address was updated'),('Address was deleted'),
('Ads was added'),('Ads was updated'),('Ads was deleted'),
('Category was added'), ('Category was updated'),('Category was deleted'),
('Icon fav Logo was added'),('Icon fav Logo was updated'),('Icon fav Logo delted'),
('Meta was added'),('Meta was updated'),('Meta was deleted'),
('Social Media was added'), ('Social Media was updated'), ('Social Media was deleted'),
('User was added'),('User was updated'),('User was deleted'),
('Video was added'),('Video was updated'),('Video was deleted'),
('Post was added'),('Post was updated'),('Post was deleted'),
('Image was added'),('Image was updated'),('Image was deleted'),
('Tag was added'),('Tag was updated'),('Tag was deleted'),
('Comment Approved'),('Comment was deleted'),
('Contact was read'),('Contact was deleted');
