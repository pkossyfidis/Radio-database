CREATE TABLE ������� (
  ID INTEGER  NOT NULL  ,
  ���������� DATE    ,
  ��� TIME    ,
  �������� INTEGER    ,
  ���� VARCHAR(255)      ,
PRIMARY KEY(ID));



CREATE TABLE ��������� (
  ID INTEGER  NOT NULL  ,
  ������ VARCHAR(50)    ,
  ����� VARCHAR(45)      ,
PRIMARY KEY(ID));



CREATE TABLE �������� (
  ID INTEGER  NOT NULL  ,
  ����� VARCHAR(45)    ,
  ������� VARCHAR(45)      ,
PRIMARY KEY(ID));



CREATE TABLE ����� (
  ���������_ID INTEGER  NOT NULL  ,
  �������_ID INTEGER  NOT NULL    ,
PRIMARY KEY(���������_ID, �������_ID)    ,
  FOREIGN KEY(���������_ID)
    REFERENCES ���������(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(�������_ID)
    REFERENCES �������(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE INDEX ���������_has_�������_FKIndex1 ON ����� (���������_ID);
CREATE INDEX ���������_has_�������_FKIndex2 ON ����� (�������_ID);



CREATE TABLE ��������� (
  �������_ID INTEGER  NOT NULL  ,
  ��������_ID INTEGER  NOT NULL  ,
  ������� INTEGER(3)    ,
  ������� VARCHAR      ,
PRIMARY KEY(�������_ID, ��������_ID)    ,
  FOREIGN KEY(�������_ID)
    REFERENCES �������(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(��������_ID)
    REFERENCES ��������(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE INDEX �������_has_��������_FKIndex1 ON ��������� (�������_ID);
CREATE INDEX �������_has_��������_FKIndex2 ON ��������� (��������_ID);



CREATE TABLE ���������� (
  ID INTEGER  NOT NULL  ,
  ���������_�������_ID INTEGER  NOT NULL  ,
  ���������_��������_ID INTEGER  NOT NULL  ,
  Petros VARCHAR    ,
  Apostolos VARCHAR      ,
PRIMARY KEY(ID)  ,
  FOREIGN KEY(���������_�������_ID, ���������_��������_ID)
    REFERENCES ���������(�������_ID, ��������_ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE INDEX ����������_FKIndex1 ON ���������� (���������_�������_ID, ���������_��������_ID);


