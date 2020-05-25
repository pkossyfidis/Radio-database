CREATE TABLE ΕΚΠΟΜΠΗ (
  ID INTEGER  NOT NULL  ,
  Ημερομηνια DATE    ,
  Ωρα TIME    ,
  Διαρκεια INTEGER    ,
  Θεμα VARCHAR(255)      ,
PRIMARY KEY(ID));



CREATE TABLE ΤΡΑΓΟΥΔΙΑ (
  ID INTEGER  NOT NULL  ,
  Τιτλος VARCHAR(50)    ,
  Ειδος VARCHAR(45)      ,
PRIMARY KEY(ID));



CREATE TABLE ΑΚΡΟΑΤΗΣ (
  ID INTEGER  NOT NULL  ,
  Ονομα VARCHAR(45)    ,
  Επιθετο VARCHAR(45)      ,
PRIMARY KEY(ID));



CREATE TABLE ΛΙΣΤΑ (
  ΤΡΑΓΟΥΔΙΑ_ID INTEGER  NOT NULL  ,
  ΕΚΠΟΜΠΗ_ID INTEGER  NOT NULL    ,
PRIMARY KEY(ΤΡΑΓΟΥΔΙΑ_ID,ΕΚΠΟΜΠΗ_ID)    ,
  FOREIGN KEY(ΤΡΑΓΟΥΔΙΑ_ID)
    REFERENCES ΤΡΑΓΟΥΔΙΑ(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ΕΚΠΟΜΠΗ_ID)
    REFERENCES ΕΚΠΟΜΠΗ(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE INDEX ΤΡΑΓΟΥΔΙΑ_has_ΕΚΠΟΜΠΗ_FKIndex1 ON ËÉÓÔÁ (ΤΡΑΓΟΥΔΙΑ_ID);
CREATE INDEX ΤΡΑΓΟΥΔΙΑ_has_ΕΚΠΟΜΠΗ_FKIndex2 ON ËÉÓÔÁ (ΕΚΠΟΜΠΗ_ID);



CREATE TABLE ΕΡΩΤΗΣΕΙΣ (
  ΕΚΠΟΜΠΗ_ID INTEGER  NOT NULL  ,
  ΑΚΡΟΑΤΗΣ_ID INTEGER  NOT NULL  ,
  Κωδικος INTEGER(3)    ,
  Κειμενο VARCHAR      ,
PRIMARY KEY(ΕΚΠΟΜΠΗ_ID, ΑΚΡΟΑΤΗΣ_ID)    ,
  FOREIGN KEY(ΕΚΠΟΜΠΗ_ID)
    REFERENCES ΕΚΠΟΜΠΗ(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ΑΚΡΟΑΤΗΣ_ID)
    REFERENCES ΑΚΡΟΑΤΗΣ(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE INDEX ΕΚΠΟΜΠΗ_has_ΑΚΡΟΑΤΗΣ_FKIndex1 ON ΕΡΩΤΗΣΕΙΣ (ΕΚΠΟΜΠΗ_ID);
CREATE INDEX ΕΚΠΟΜΠΗ_has_ΑΚΡΟΑΤΗΣ_FKIndex2 ON ΕΡΩΤΗΣΕΙΣ ΑΚΡΟΑΤΗΣ_ID);



CREATE TABLE ΑΠΑΝΤΗΣΕΙΣ (
  ID INTEGER  NOT NULL  ,
  ΕΡΩΤΗΣΕΙΣ_ΕΚΠΟΜΠΗ_ID INTEGER  NOT NULL  ,
  ΕΡΩΤΗΣΕΙΣ_ΑΚΡΟΑΤΗΣ_ID INTEGER  NOT NULL  ,
  Petros VARCHAR    ,
  Apostolos VARCHAR      ,
PRIMARY KEY(ID)  ,
  FOREIGN KEY(ΕΡΩΤΗΣΕΙΣ_ΕΚΠΟΜΠΗ_ID, ΕΡΩΤΗΣΕΙΣ_ΑΚΡΟΑΤΗΣ_ID)
    REFERENCES ΕΡΩΤΗΣΕΙΣ(ΕΚΠΟΜΠΗ_ID, ΑΚΡΟΑΤΗΣ_ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE INDEX ΑΠΑΝΤΗΣΕΙΣ_FKIndex1 ON ΑΠΑΝΤΗΣΕΙΣ (ΕΡΩΤΗΣΕΙΣ_ΕΚΠΟΜΠΗ_ID, ΕΡΩΤΗΣΕΙΣ_ΑΚΡΟΑΤΗΣ_ID);


