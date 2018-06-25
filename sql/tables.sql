CREATE DATABASE Mediatheque CHARSET SET 'utf8';
SET foreign_key_checks=0;

CREATE TABLE Users(
  idUser INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_uname VARCHAR(45) NOT NULL,
  user_fname VARCHAR(45) NOT NULL,
  user_lname VARCHAR(45) NOT NULL,
  user_password VARCHAR(100) NOT NULL,
  user_email VARCHAR(45) NOT NULL,
  PRIMARY KEY (idUser)
)ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

CREATE TABLE Reservations(
  idReservation INT UNSIGNED NOT NULL AUTO_INCREMENT,
  reservation_date_demande DATE NOT NULL,
  reservation_date_location DATE,
  reservation_details VARCHAR(45),
  idUser INT UNSIGNED,
  idDocument INT UNSIGNED,
  CONSTRAINT fk_UsersReservations FOREIGN KEY (idUser) REFERENCES Users(idUser),
  CONSTRAINT fk_DocumentsReservations FOREIGN KEY (idDocument) REFERENCES Documents(idDocument),
  PRIMARY KEY (idReservation)
)ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

CREATE TABLE Documents(
  idDocument INT UNSIGNED NOT NULL,
  document_quantity INT UNSIGNED NOT NULL,
  document_author VARCHAR(45) NOT NULL,
  document_title VARCHAR(45) NOT NULL,
  document_publication_date VARCHAR(45) NOT NULL,
  document_publisher VARCHAR(45),
  document_type VARCHAR(45),
  document_category VARCHAR(45),
  document_details VARCHAR(45),
  idCategory INT UNSIGNED,
  CONSTRAINT fk_CategoriesDocuments FOREIGN KEY (idCategory) REFERENCES Categories(idCategory),
  PRIMARY KEY (idDocument)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE Categories(
  idCategory INT UNSIGNED NOT NULL AUTO_INCREMENT,
  category_name VARCHAR(45) NOT NULL,
  PRIMARY KEY (idCategory)
)ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;