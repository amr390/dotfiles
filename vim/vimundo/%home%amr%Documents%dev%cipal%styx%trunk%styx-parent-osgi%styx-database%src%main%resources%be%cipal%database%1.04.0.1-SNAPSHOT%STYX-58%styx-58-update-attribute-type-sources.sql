Vim�UnDo� �'�9q�nA~�;Vl��N�⬏�����R+�              m                       T���    _�                        m    ����                                                                                                                                                                                                                                                                                                                                                             T���    �      	         �    WHERE CODE IN ('COUNTRY_NISCODE', 'CITY_NISCODE','CITY_CRAB_ID',  'STREET_CRAB_ID', 'HOUSENUMBER_CRAB_ID', 'POSTALCODE_CRAB_ID');5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             T��4     �                 DECLARE   CRAB_SOURCE_ID NUMBER(20,0);   BEGIN   B    SELECT id INTO CRAB_SOURCE_ID FROM SOURCE WHERE CODE = 'CRAB';           6    UPDATE ATTRIBUTE_TYPE SET SOURCE_ID=CRAB_SOURCE_ID   �    WHERE CODE IN ('COUNTRY_NISCODE', 'CITY_NISCODE','CITY_CRAB_ID',  'STREET_CRAB_ID', 'HOUSENUMBER_CRAB_ID', 'POSTALCODE_CRAB_ID');           COMMIT;       END;   GO5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             T��7     �                 DECLARE   CRAB_SOURCE_ID NUMBER(20,0);   BEGIN   B    SELECT id INTO CRAB_SOURCE_ID FROM SOURCE WHERE CODE = 'CRAB';           6    UPDATE ATTRIBUTE_TYPE SET SOURCE_ID=CRAB_SOURCE_ID   �    WHERE CODE IN ('COUNTRY_NISCODE', 'CITY_NISCODE','CITY_CRAB_ID',  'STREET_CRAB_ID', 'HOUSENUMBER_CRAB_ID', 'POSTALCODE_CRAB_ID');           COMMIT;       END;   GO5��