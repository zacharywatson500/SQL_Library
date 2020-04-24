DROP DATABASE library;

CREATE DATABASE IF NOT EXISTS library;

USE library;  

DROP TABLE IF EXISTS transactions;
CREATE TABLE IF NOT EXISTS transactions(
	transaction_id INT PRIMARY KEY AUTO_INCREMENT, 
    add_or_drop VARCHAR(4) NOT NULL, 
    date DATETIME 
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS authors;
CREATE TABLE IF NOT EXISTS authors( 
	author_id INT PRIMARY KEY AUTO_INCREMENT, 
    last_name VARCHAR(50) NOT NULL, 
	first_name VARCHAR(50)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO authors VALUES(1,'Spurgeon','Charles');
INSERT INTO authors VALUES(2,'Murray','Andrew');
INSERT INTO authors VALUES(3,'Lewis','CS');
INSERT INTO authors VALUES(4,'Venkitachalam','Mahesh');
INSERT INTO authors VALUES(5,'Matthes','Eric');
INSERT INTO authors VALUES(6,'Steinbeck','John');
INSERT INTO authors VALUES(7,'Brogden','Dick');
INSERT INTO authors VALUES(8,'Bounds','EM');
INSERT INTO authors VALUES(9,'Graham','Benjamin');
INSERT INTO authors VALUES(10,'Vujicic','Nick');

DROP TABLE IF EXISTS books;
CREATE TABLE IF NOT EXISTS books( 
	book_id INT PRIMARY KEY AUTO_INCREMENT, 
    name VARCHAR(255) NOT NULL, 
    year YEAR,
    secular BOOLEAN,  
    author_id INT,
    FOREIGN KEY fk_books_authors (author_id)
		REFERENCES authors (author_id) 
        ON UPDATE CASCADE 
        ON DELETE NO ACTION
)ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;   

INSERT INTO books VALUES(1,"Faith's Checkbook",NULL, FALSE,1);
INSERT INTO books VALUES(2,"Humility",NULL, FALSE,2);
INSERT INTO books VALUES(3,"Life Without Limbs",2010, FALSE,10); 
INSERT INTO books VALUES(4,"The Intelligent Investor",1984, TRUE,9);
INSERT INTO books VALUES(5,"Mere Christianity", 1952, FALSE,3);
INSERT INTO books VALUES(6,"The Necessity of Prayer",1984, FALSE,8);
INSERT INTO books VALUES(7,"Obtaining Answers to Prayer",1984, FALSE,8);
INSERT INTO books VALUES(8,"This Gospel", 2018, FALSE, 7);
INSERT INTO books VALUES(9,"East of Eden",1952, TRUE,6);
INSERT INTO books VALUES(10,"Python Crash Course",2016,TRUE,5);
INSERT INTO books VALUES(11,"Python Playground",2016,TRUE,4);











    