Vim�UnDo� +S&�cp��W3�|����^�/��њ]y�(kO   	           5                       T%y    _�                             ����                                                                                                                                                                                                                                                                                                                                                             T�E     �                CREATE TABLE DESCRIPTION(5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             T�J     �                CREATE TABLE DESCRIPTION(5�_�                           ����                                                                                                                                                                                                                                                                                                                                       
           v        T�V     �               !    LABEL VARCHAR2(255) NOT NULL,   &    LANGUAGE_ID NUMBER(20,0) NOT NULL,   *    AREA_TYPE_DESCRIPTION_ID NUMBER(20,0),   #    AREA_TYPE_NAME_ID NUMBER(20,0),       AREA_NAME_ID NUMBER(20,0),       START_DATE DATE,       END_DATE DATE      ) TABLESPACE STYX_TABLES; 5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  v        T�\     �                CREATE SEQUENCE SEQ_DESCRIPTION;5�_�                      5    ����                                                                                                                                                                                                                                                                                                                                                  v        T�g     �      	         IALTER TABLE DESCRIPTION ADD CONSTRAINT PK_DESCRIPTION_ID PRIMARY KEY (ID)5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                  v        T�p     �   
              YALTER TABLE DESCRIPTION ADD CONSTRAINT FK_DESCRIPTION_LANGUAGE FOREIGN KEY (LANGUAGE_ID)    REFERENCES LANGUAGE (ID);       YALTER TABLE DESCRIPTION ADD CONSTRAINT FK_AREA_TYPE_NAME FOREIGN KEY (AREA_TYPE_NAME_ID)    REFERENCES AREA_TYPE (ID);       gALTER TABLE DESCRIPTION ADD CONSTRAINT FK_AREA_TYPE_DESCRIPTION FOREIGN KEY (AREA_TYPE_DESCRIPTION_ID)    REFERENCES AREA_TYPE (ID);           OALTER TABLE DESCRIPTION ADD CONSTRAINT FK_AREA_NAME FOREIGN KEY (AREA_NAME_ID)    REFERENCES AREA (ID);    5�_�      
           	   
        ����                                                                                                                                                                                                                                                                                                                                                  v        T�u     �   	   
           5�_�   	              
   
        ����                                                                                                                                                                                                                                                                                                                            
                      v        T�v    �   	   
           5�_�   
                          ����                                                                                                                                                                                                                                                                                                                                                             T%x    �      	          RALTER TABLE DESCRIPTION ADD CONSTRAINT PK_DESCRIPTION_PROVIDER_ID PRIMARY KEY (ID)�                )CREATE SEQUENCE SEQ_DESCRIPTION_PROVIDER;�                 "CREATE TABLE DESCRIPTION_PROVIDER(5�_�                       '    ����                                                                                                                                                                                                                                                                                                                                                  v        T�a     �               *CREATE SEQUENCE SEQ_DESCRIPTION_PROVIDER; 5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             T�N     �                =CREATE TABLE DESCRIPTION_PROVIDER( ID NUMBER(20,0) NOT NULL, 5��