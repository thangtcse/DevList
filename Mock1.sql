CREATE DATABASE SWD_PROJECT
GO
USE SWD_PROJECT
GO

CREATE TABLE Center(
id int identity(1, 1) primary key not null,
name nvarchar(50) not null,
location nvarchar(100) not null
)
GO

CREATE TABLE Account(
id int identity(1,1) primary key not null,
name nvarchar(50) not null,
role int not null,
email varchar(50) not null,
[password] varchar(50) not null,
centerId int foreign key references Center(id) null
)
GO


CREATE TABLE Course(
id int identity(1,1) primary key not null,
name nvarchar(100) not null,
centerId int foreign key references Center(id)
)
GO

CREATE TABLE Class(
id int identity(1,1) primary key not null,
name nvarchar(50) not null,
courseId int foreign key references Course(id)
)
GO

INSERT INTO Center VALUES ('IT Master 1', 'Hà Nội')
INSERT INTO Center VALUES ('IT Master 2', 'Đà Nẵng')
INSERT INTO Center VALUES ('IT Master 3', 'TP. Hồ Chí Minh')
GO


INSERT INTO Account VALUES ('Lã Xuân Khánh', 1, 'khanhlx@itmaster.com.vn', '123@123ab', 1)
INSERT INTO Account VALUES ('Nguyễn Công Long', 1,  'dinhnt6@itmaster.com.vn', '123@123ab', 1)
INSERT INTO Account VALUES ('Nguyễn Chí Thành',2, 'hiepnv13@itmaster.com.vn', '123@123ab', 1)
INSERT INTO Account VALUES ('Lê Thanh Hiếu',2, 'hieult15@itmaster.com.vn', '123@123ab', 2)
INSERT INTO Account VALUES ('Nguyễn Minh Hoàng',2, 'duonghtn@itmaster.com.vn', '123@123ab', 3)
INSERT INTO Account VALUES ('Nguyễn Chí Thành',3, 'hieunv13@itmaster.com.vn', '123@123ab', 1)
INSERT INTO Account VALUES ('Lê Thanh Hiếu',3, 'hoalt15@itmaster.com.vn', '123@123ab', 2)
INSERT INTO Account VALUES ('Nguyễn Minh Hoàng',3, 'duchtn@itmaster.com.vn', '123@123ab', 3)
INSERT INTO Account VALUES ('Nguyễn Chí Thành',4, 'hipnv13@itmaster.com.vn', '123@123ab', 1)
INSERT INTO Account VALUES ('Lê Thanh Hiếu',4, 'hieut1@itmaster.com.vn', '123@123ab', 2)
INSERT INTO Account VALUES ('Nguyễn Minh Hoàng',4, 'duontn@itmaster.com.vn', '123@123ab', 3)
INSERT INTO Account VALUES ('Nguyễn Chí Thành',4, 'hiv13@itmaster.com.vn', '123@123ab', 1)
INSERT INTO Account VALUES ('Lê Thanh Hiếu',4, 'hieu5@itmaster.com.vn', '123@123ab', 2)
INSERT INTO Account VALUES ('Nguyễn Minh Hoàng',4, 'duhtn@itmaster.com.vn', '123@123ab', 3)
GO


INSERT INTO Course VALUES ('TƯ DUY LẬP TRÌNH "8 giờ sáng tạo"', 1)
INSERT INTO Course VALUES ('Nhập môn C', 1)
INSERT INTO Course VALUES ('Nhập môn Java', 2)
INSERT INTO Course VALUES ('Nhập môn SQL', 2)
INSERT INTO Course VALUES ('Nhập môn C', 3)
GO

INSERT INTO Class VALUES('IS1001', 1)
INSERT INTO Class VALUES('IS1002', 1)
INSERT INTO Class VALUES('IS2001', 2)
INSERT INTO Class VALUES('IS2002', 2)
INSERT INTO Class VALUES('IS3001', 3)
INSERT INTO Class VALUES('IS4002', 4)
INSERT INTO Class VALUES('IS4001', 4)
INSERT INTO Class VALUES('IS5001', 5)
INSERT INTO Class VALUES('IS5002', 5)
INSERT INTO Class VALUES('IS5003', 5)


