Vim�UnDo� Q�i�U$�f�p���K�}���g����f                                      U�    _�                             ����                                                                                                                                                                                                                                                                                                                                                             U�     �                   �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             U�    �                 �                 �      
           �                 5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             U�
     �                  String xml = """   <dogs>   ! <dog type="Beagle" sound="howl">   # <dog type="Labrador" sound="woof">   </dog></dog></dogs>"""       "XmlParser parser = new XmlParser()   !def dogs = parser.parseText (xml)       dogs.dog.each { dog ->   :    println("${dog.'@type'} sounds like ${dog.'@sound'}");   }       Edef dogsThatHowl = dogs.dog.findAll { dog -> dog.'@sound' == 'howl' }       dogsThatHowl.each { dog ->       println dog['@type'];   }5��