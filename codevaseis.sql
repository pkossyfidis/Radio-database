CREATE TABLE ейполпг (
  ID INTEGER  NOT NULL  ,
  гЛЕЯОЛГМИА DATE    ,
  ыЯА TIME    ,
  дИАЯЙЕИА INTEGER    ,
  хЕЛА VARCHAR(255)      ,
PRIMARY KEY(ID));



CREATE TABLE тяацоудиа (
  ID INTEGER  NOT NULL  ,
  тИТКОР VARCHAR(50)    ,
  еИДОР VARCHAR(45)      ,
PRIMARY KEY(ID));



CREATE TABLE айяоатгс (
  ID INTEGER  NOT NULL  ,
  оМОЛА VARCHAR(45)    ,
  еПИХЕТО VARCHAR(45)      ,
PRIMARY KEY(ID));



CREATE TABLE киста (
  тяацоудиа_ID INTEGER  NOT NULL  ,
  ейполпг_ID INTEGER  NOT NULL    ,
PRIMARY KEY(тяацоудиа_ID, ейполпг_ID)    ,
  FOREIGN KEY(тяацоудиа_ID)
    REFERENCES тяацоудиа(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ейполпг_ID)
    REFERENCES ейполпг(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE INDEX тяацоудиа_has_ейполпг_FKIndex1 ON киста (тяацоудиа_ID);
CREATE INDEX тяацоудиа_has_ейполпг_FKIndex2 ON киста (ейполпг_ID);



CREATE TABLE еяытгсеис (
  ейполпг_ID INTEGER  NOT NULL  ,
  айяоатгс_ID INTEGER  NOT NULL  ,
  йЫДИЙОР INTEGER(3)    ,
  йЕИЛЕМО VARCHAR      ,
PRIMARY KEY(ейполпг_ID, айяоатгс_ID)    ,
  FOREIGN KEY(ейполпг_ID)
    REFERENCES ейполпг(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(айяоатгс_ID)
    REFERENCES айяоатгс(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE INDEX ейполпг_has_айяоатгс_FKIndex1 ON еяытгсеис (ейполпг_ID);
CREATE INDEX ейполпг_has_айяоатгс_FKIndex2 ON еяытгсеис (айяоатгс_ID);



CREATE TABLE апамтгсеис (
  ID INTEGER  NOT NULL  ,
  еяытгсеис_ейполпг_ID INTEGER  NOT NULL  ,
  еяытгсеис_айяоатгс_ID INTEGER  NOT NULL  ,
  Petros VARCHAR    ,
  Apostolos VARCHAR      ,
PRIMARY KEY(ID)  ,
  FOREIGN KEY(еяытгсеис_ейполпг_ID, еяытгсеис_айяоатгс_ID)
    REFERENCES еяытгсеис(ейполпг_ID, айяоатгс_ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE INDEX апамтгсеис_FKIndex1 ON апамтгсеис (еяытгсеис_ейполпг_ID, еяытгсеис_айяоатгс_ID);


