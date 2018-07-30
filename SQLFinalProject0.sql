/*
create database dbo_library_system ; 
use  dbo_library_system ; 


create table books (
 BookId int not null primary key identity (1,1),
 Title varchar (50),
 PublisherName varchar (50),
 );

 create table book_authors (
 BookId int not null primary key identity (1,1),
 AuthorName varchar (50), 
 );

 create table Publisher (
 Name varchar (50) not null primary key,
 PublisherAddress varchar (100),
 Phone int,
 );

 create table book_loans (
 BookId int not null primary key identity (1,1),
 BranchId int,
 CardNumber int,
 DateOut int,
 DueDate int,
 );

 create table book_copies (
 BookId int not null primary key identity (1,1),
 BranchId int,
 NumberOfCopies int, 
 );

 create table Borrower (
 CardNumber int not null primary key,
 Name varchar (50),
 BorrowerAddress varchar (50),
 Phone int,
 );

 create table library_branch (
 BranchId int not null primary key identity (1,1),
 BranchName varchar (50),
 BranchAddress varchar (50),
 );

 insert into books  (Title, PublisherName) values
 ('The Lost Tribe', 'PenguinCo'),
 ('One Chance', 'PenguinCo'),
 ('Here We Go', 'McCallister'),
 ('Light The Candle', 'Stellar'),
 ('How To Cook Rice', 'DIY'),
 ('How To Build A Greenhouse', 'DIY'),
 ('How To Build A Garden Bed', 'DIY'),
 ('How To Cook Beans', 'DIY'),
 ('How To Cook Eggs', 'DIY'),
 ('Age Of The Millenials', 'Stellar'),
 ('Star Dust', 'Stellar'),
 ('Talk To The Cosmos', 'Stellar'),
 ('Hand In Motion', 'PenguinCo'),
 ('Let Us Talk Code', 'McCallister'),
 ('I Code You Not', 'McCallister'),
 ('Code Scripture', 'McCallister'),
 ('To Code Or Not To Code', 'McCallister'),
 ('How I Learned To Code', 'McCasllister'),
 ('When Worlds Collide', 'Stellar'),
 ('Atoms At A Glance', 'Stellar');

 insert into book_authors (AuthorName) values
 ('Barry Mars'),
 ('Henry Tiger'),
 ('Matt Winger'),
 ('Chris Know'),
 ('Angelina Batista'),
 ('Aurora Que Bonita'),
 ('Helen Troya'),
 ('Ginger Anne Spise'),
 ('Stephen King'),
 ('Stephen King');
  
 insert into Publisher (Name, PublisherAddress, Phone) values
 ('DIY', '101 Berry Dr Los Angeles, CA', 951-234-5674),
 ('McCallister', '205 Willy Lane New York, NY', 678-453-9870),
 ('PenguinCo', '108 Memory Way Colorado Springs, CO', 320-567-8833),
 ('Stellar' , '54 Wallflower Circle Green Bay, WI', 450-870-6841);

 insert into book_loans (BranchId, CardNumber, DateOut, DueDate) values
 (1, 1234567801, 08-03-2018, 09-03-2019),
 (2, 1234567802, 08-15-2018, 09-15-2019),
 (3, 1234567803, 08-20-2018, 09-20-2019),
 (4, 1234567804, 08-17-2018, 09-17-2019),
 (5, 1234567805, 08-05-2018, 09-05-2019),
 (6, 1234567806, 06-07-2018, 07-22-2019),
 (7, 1234567807, 07-22-2018, 10-22-2019),
 (8, 1234567808, 09-01-2018, 10-01-2019),
 (8, 1234567808, 08-03-2018, 09-03-2019),
 (7, 1234567807, 08-15-2018, 09-15-2019),
 (6, 1234567806, 08-20-2018, 09-20-2019),
 (5, 1234567805, 08-17-2018, 09-17-2019),
 (4, 1234567804, 08-13-2018, 09-13-2019),
 (3, 1234567803, 09-03-2018, 10-03-2019),
 (2, 1234567802, 08-15-2018, 09-15-2019),
 (1, 1234567801, 01-20-2018, 01-20-2019),
 (1, 1234567801, 01-17-2018, 02-17-2019),
 (2, 1234567802, 03-05-2018, 04-05-2019),
 (3, 1234567803, 05-03-2018, 06-03-2019),
 (4, 1234567804, 02-15-2018, 03-15-2019),
 (5, 1234567805, 04-20-2018, 05-20-2019),
 (6, 1234567806, 06-17-2018, 07-17-2019),
 (7, 1234567807, 10-05-2018, 11-05-2019),
 (8, 1234567808, 08-03-2018, 09-03-2019),
 (8, 1234567808, 08-15-2018, 09-15-2019),
 (7, 1234567807, 03-20-2018, 04-20-2019),
 (6, 1234567806, 11-17-2018, 12-17-2019),
 (5, 1234567805, 09-05-2018, 10-05-2019),
 (4, 1234567804, 08-03-2018, 09-03-2019),
 (3, 1234567803, 08-15-2018, 09-15-2019),
 (2, 1234567802, 06-20-2018, 07-22-2018),
 (1, 1234567801, 06-17-2018, 07-22-2018),
 (1, 1234567801, 05-05-2018, 06-05-2019),
 (2, 1234567802, 08-03-2018, 09-03-2019),
 (3, 1234567803, 08-15-2018, 09-15-2019),
 (4, 1234567804, 07-22-2018, 08-20-2019),
 (5, 1234567805, 10-17-2018, 11-17-2019),
 (6, 1234567806, 07-22-2018, 03-05-2019),
 (7, 1234567807, 04-03-2018, 05-03-2019),
 (8, 1234567808, 08-15-2018, 09-15-2019),
 (8, 1234567808, 06-20-2018, 07-20-2019),
 (7, 1234567807, 08-17-2018, 09-17-2019),
 (6, 1234567806, 08-05-2018, 09-05-2019),
 (5, 1234567805, 08-03-2018, 09-03-2019),
 (4, 1234567804, 08-15-2018, 09-15-2019),
 (3, 1234567803, 08-20-2018, 09-20-2019),
 (2, 1234567802, 08-17-2018, 09-17-2019),
 (1, 1234567801, 05-05-2018, 06-05-2019),
 (1, 1234567801, 08-03-2018, 09-03-2019),
 (2, 1234567802, 07-15-2018, 08-15-2019),
 (3, 1234567803, 08-20-2018, 09-20-2019),
 (4, 1234567804, 01-17-2018, 02-17-2019),
 (5, 1234567805, 03-05-2018, 04-05-2019);


 insert into book_copies (BranchId, NumberOfCopies) values
 (2,100),
 (4,480),
 (6,120),
 (3,500),
 (1,700),
 (7,150),
 (5,450),
 (8,600);

 
 insert into Borrower (CardNumber, Name, BorrowerAddress, Phone) values
 (1234567801,'Capital One Credit', 'Los Angeles Ca', 875-098-3344),
 (1234567802,'Credit Bank','Portland Or', 435-987-6680),
 (1234567803,'Barclay Credit', 'Barcelona Spain', 876-954-3122),
 (1234567804,'Chase Bank', 'New York Ny', 643-221-1009),
 (1234567805,'Open Sky Credit', 'Amsterdam Netherlands', 786-553-2419),
 (1234567806,'Bank Of America','Union Tx', 585-734-5600),
 (1234567807,'Wells Fargo', 'Seattle Wa', 409-885-7235),
 (1234567808,'Discover Credit Union','San Diego Ca', 094-338-7645);

 insert into library_branch (BranchName, BranchAddress) values
 ('Sharpstown', 'Los Angeles U.S'),
 ('Central', 'Kansas City U.S'),
 ('Pacific', 'San Fransisco U.S'),
 ('North Atlantic', 'Seattle U.S'),
 ('South Pacific','San Dimas U.S'),
 ('East','Paris France'),
 ('West','Bejing China'),
 ('Canada','Toronto Canada');

 Select * from books ;

 Select  *
 From books
 inner join book_copies on book_copies.BookId = book_copies.BranchId
 inner join Publisher on Publisher.Name = Publisher.Name 
 inner join library_branch on library_branch.BranchId = library_branch.BranchName 
 Where BranchName = 'Sharpstown' 
 

 Select *
 from books
 inner join library_branch  on library_branch.BranchId = books.BookId
 inner join book_copies on book_copies.BookId = books.BookId
 
 
 Select *
from books 
 inner join library_branch  on library_branch.BranchId = books.BookId 
 inner join book_copies on book_copies.BookId = books.BookId 
 inner join book_loans on book_loans.BranchId = books.BookId
 
  

  Select *
from books 
 inner join library_branch  on library_branch.BranchId = books.BookId 
 inner join book_copies on book_copies.BookId = books.BookId 
 inner join book_loans on book_loans.BranchId = books.BookId
 inner join Borrower on Borrower.CardNumber = borrower.CardNumber


  Select *
from books 
 inner join library_branch  on library_branch.BranchId = books.BookId 
 inner join book_copies on book_copies.BookId = books.BookId 

 Select *
from books 
 inner join library_branch  on library_branch.BranchId = books.BookId 
 inner join book_copies on book_copies.BookId = books.BookId 
 inner join book_loans on book_loans.BranchId = books.BookId
 inner join Borrower on Borrower.CardNumber = borrower.CardNumber
 where book_copies.NumberOfCopies between 6 and 701 ;


 Select *
from books 
 inner join library_branch  on library_branch.BranchId = books.BookId 
 inner join book_copies on book_copies.BookId = books.BookId 
 inner join book_loans on book_loans.BranchId = books.BookId
 inner join Borrower on Borrower.CardNumber = borrower.CardNumber
 inner join book_authors on books.BookId = book_authors.BookId
 where AuthorName = 'Stephen King';


