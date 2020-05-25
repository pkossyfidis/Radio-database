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
PRIMARY KEY(ÔÑÁÃÏÕÄÉÁ_ID, ÅÊÐÏÌÐÇ_ID)    ,
  FOREIGN KEY(ÔÑÁÃÏÕÄÉÁ_ID)
    REFERENCES ÔÑÁÃÏÕÄÉÁ(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ÅÊÐÏÌÐÇ_ID)
    REFERENCES ÅÊÐÏÌÐÇ(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE INDEX ÔÑÁÃÏÕÄÉÁ_has_ÅÊÐÏÌÐÇ_FKIndex1 ON ËÉÓÔÁ (ÔÑÁÃÏÕÄÉÁ_ID);
CREATE INDEX ÔÑÁÃÏÕÄÉÁ_has_ÅÊÐÏÌÐÇ_FKIndex2 ON ËÉÓÔÁ (ÅÊÐÏÌÐÇ_ID);



CREATE TABLE ÅÑÙÔÇÓÅÉÓ (
  ÅÊÐÏÌÐÇ_ID INTEGER  NOT NULL  ,
  ÁÊÑÏÁÔÇÓ_ID INTEGER  NOT NULL  ,
  Êùäéêïò INTEGER(3)    ,
  Êåéìåíï VARCHAR      ,
PRIMARY KEY(ÅÊÐÏÌÐÇ_ID, ÁÊÑÏÁÔÇÓ_ID)    ,
  FOREIGN KEY(ÅÊÐÏÌÐÇ_ID)
    REFERENCES ÅÊÐÏÌÐÇ(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ÁÊÑÏÁÔÇÓ_ID)
    REFERENCES ÁÊÑÏÁÔÇÓ(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE INDEX ÅÊÐÏÌÐÇ_has_ÁÊÑÏÁÔÇÓ_FKIndex1 ON ÅÑÙÔÇÓÅÉÓ (ÅÊÐÏÌÐÇ_ID);
CREATE INDEX ÅÊÐÏÌÐÇ_has_ÁÊÑÏÁÔÇÓ_FKIndex2 ON ÅÑÙÔÇÓÅÉÓ (ÁÊÑÏÁÔÇÓ_ID);



CREATE TABLE ÁÐÁÍÔÇÓÅÉÓ (
  ID INTEGER  NOT NULL  ,
  ÅÑÙÔÇÓÅÉÓ_ÅÊÐÏÌÐÇ_ID INTEGER  NOT NULL  ,
  ÅÑÙÔÇÓÅÉÓ_ÁÊÑÏÁÔÇÓ_ID INTEGER  NOT NULL  ,
  Petros VARCHAR    ,
  Apostolos VARCHAR      ,
PRIMARY KEY(ID)  ,
  FOREIGN KEY(ÅÑÙÔÇÓÅÉÓ_ÅÊÐÏÌÐÇ_ID, ÅÑÙÔÇÓÅÉÓ_ÁÊÑÏÁÔÇÓ_ID)
    REFERENCES ÅÑÙÔÇÓÅÉÓ(ÅÊÐÏÌÐÇ_ID, ÁÊÑÏÁÔÇÓ_ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE INDEX ÁÐÁÍÔÇÓÅÉÓ_FKIndex1 ON ÁÐÁÍÔÇÓÅÉÓ (ÅÑÙÔÇÓÅÉÓ_ÅÊÐÏÌÐÇ_ID, ÅÑÙÔÇÓÅÉÓ_ÁÊÑÏÁÔÇÓ_ID);


