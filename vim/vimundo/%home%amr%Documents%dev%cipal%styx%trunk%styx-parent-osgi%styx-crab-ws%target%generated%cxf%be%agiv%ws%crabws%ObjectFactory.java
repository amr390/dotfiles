Vim�UnDo� ��&��$�Xһ�s���w~s��@`�D�ߢ�h  �                                  TG��    _�                            ����                                                                                                                                                                                                                                                                                                                                                             TGq�     �         �      6package com.microsoft.schemas._2003._10.serialization;5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             TGq�     �         �      3package .microsoft.schemas._2003._10.serialization;5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             TGq�     �         �      package 5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             TGq�    �   �   �               * �   �   �               * �   �   �               * �   �   �               * �   �   �               * �   �   �               * �   �   �               * �   �   �               * �   �   �               * �   �   �               * �   �   �               * �   �   �               * �   �   �               * �   |   ~               * �   s   u               * �   j   l               * �   a   c               * �   X   Z               * �   O   Q               * �   F   H               * �   =   ?               * �   6   8               * �                 * �                2 * groups.  Factory methods for each of these are �                4 * type definitions, element declarations and model �                2 * and classes representing the binding of schema �                4 * content can consist of schema derived interfaces �                3 * for XML content. The Java representation of XML �                6 * construct new instances of the Java representation �                5 * <p>An ObjectFactory allows you to programatically �                K * generated in the com.microsoft.schemas._2003._10.serialization package. �                5 * Java content interface and Java element interface �                1 * This object contains factory methods for each 5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             TG�p     �               �       package be.agiv.ws.crabws;       import java.math.BigDecimal;   import java.math.BigInteger;   "import javax.xml.bind.JAXBElement;   0import javax.xml.bind.annotation.XmlElementDecl;   -import javax.xml.bind.annotation.XmlRegistry;   #import javax.xml.datatype.Duration;   /import javax.xml.datatype.XMLGregorianCalendar;   !import javax.xml.namespace.QName;           /**   0 * This object contains factory methods for each   4 * Java content interface and Java element interface   J * generated in the com.microsoft.schemas._2003._10.serialization package.   4 * <p>An ObjectFactory allows you to programatically   5 * construct new instances of the Java representation   2 * for XML content. The Java representation of XML   3 * content can consist of schema derived interfaces   1 * and classes representing the binding of schema   3 * type definitions, element declarations and model   1 * groups.  Factory methods for each of these are    * provided in this class.    *    */   @XmlRegistry   public class ObjectFactory {       z    private final static QName _AnyURI_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "anyURI");   v    private final static QName _Char_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "char");   x    private final static QName _Float_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "float");   v    private final static QName _Long_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "long");   �    private final static QName _Base64Binary_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "base64Binary");   v    private final static QName _Byte_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "byte");   |    private final static QName _Boolean_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "boolean");   �    private final static QName _UnsignedByte_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "unsignedByte");   |    private final static QName _AnyType_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "anyType");   t    private final static QName _Int_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "int");   z    private final static QName _Double_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "double");   ~    private final static QName _DateTime_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "dateTime");   x    private final static QName _QName_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "QName");   �    private final static QName _UnsignedShort_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "unsignedShort");   x    private final static QName _Short_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "short");   �    private final static QName _UnsignedInt_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "unsignedInt");   |    private final static QName _Decimal_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "decimal");   v    private final static QName _Guid_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "guid");   ~    private final static QName _Duration_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "duration");   z    private final static QName _String_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "string");   �    private final static QName _UnsignedLong_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "unsignedLong");           /**   �     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: com.microsoft.schemas._2003._10.serialization        *        */       public ObjectFactory() {       }           /**   S     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}        *        */   g    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "anyURI")   ;    public JAXBElement<String> createAnyURI(String value) {   Q        return new JAXBElement<String>(_AnyURI_QNAME, String.class, null, value);       }           /**   T     * Create an instance of {@link JAXBElement }{@code <}{@link Integer }{@code >}}        *        */   e    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "char")   ;    public JAXBElement<Integer> createChar(Integer value) {   Q        return new JAXBElement<Integer>(_Char_QNAME, Integer.class, null, value);       }           /**   R     * Create an instance of {@link JAXBElement }{@code <}{@link Float }{@code >}}        *        */   f    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "float")   8    public JAXBElement<Float> createFloat(Float value) {   N        return new JAXBElement<Float>(_Float_QNAME, Float.class, null, value);       }           /**   Q     * Create an instance of {@link JAXBElement }{@code <}{@link Long }{@code >}}        *        */   e    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "long")   5    public JAXBElement<Long> createLong(Long value) {   K        return new JAXBElement<Long>(_Long_QNAME, Long.class, null, value);       }           /**   R     * Create an instance of {@link JAXBElement }{@code <}{@link byte[]}{@code >}}        *        */   m    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "base64Binary")   A    public JAXBElement<byte[]> createBase64Binary(byte[] value) {   b        return new JAXBElement<byte[]>(_Base64Binary_QNAME, byte[].class, null, ((byte[]) value));       }           /**   Q     * Create an instance of {@link JAXBElement }{@code <}{@link Byte }{@code >}}        *        */   e    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "byte")   5    public JAXBElement<Byte> createByte(Byte value) {   K        return new JAXBElement<Byte>(_Byte_QNAME, Byte.class, null, value);       }           /**   T     * Create an instance of {@link JAXBElement }{@code <}{@link Boolean }{@code >}}        *        */   h    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "boolean")   >    public JAXBElement<Boolean> createBoolean(Boolean value) {   T        return new JAXBElement<Boolean>(_Boolean_QNAME, Boolean.class, null, value);       }           /**   R     * Create an instance of {@link JAXBElement }{@code <}{@link Short }{@code >}}        *        */   m    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "unsignedByte")   ?    public JAXBElement<Short> createUnsignedByte(Short value) {   U        return new JAXBElement<Short>(_UnsignedByte_QNAME, Short.class, null, value);       }           /**   S     * Create an instance of {@link JAXBElement }{@code <}{@link Object }{@code >}}        *        */   h    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "anyType")   <    public JAXBElement<Object> createAnyType(Object value) {   R        return new JAXBElement<Object>(_AnyType_QNAME, Object.class, null, value);       }           /**   T     * Create an instance of {@link JAXBElement }{@code <}{@link Integer }{@code >}}        *        */   d    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "int")   :    public JAXBElement<Integer> createInt(Integer value) {   P        return new JAXBElement<Integer>(_Int_QNAME, Integer.class, null, value);       }           /**   S     * Create an instance of {@link JAXBElement }{@code <}{@link Double }{@code >}}        *        */   g    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "double")   ;    public JAXBElement<Double> createDouble(Double value) {   Q        return new JAXBElement<Double>(_Double_QNAME, Double.class, null, value);       }           /**   a     * Create an instance of {@link JAXBElement }{@code <}{@link XMLGregorianCalendar }{@code >}}        *        */   i    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "dateTime")   Y    public JAXBElement<XMLGregorianCalendar> createDateTime(XMLGregorianCalendar value) {   o        return new JAXBElement<XMLGregorianCalendar>(_DateTime_QNAME, XMLGregorianCalendar.class, null, value);       }           /**   R     * Create an instance of {@link JAXBElement }{@code <}{@link QName }{@code >}}        *        */   f    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "QName")   8    public JAXBElement<QName> createQName(QName value) {   N        return new JAXBElement<QName>(_QName_QNAME, QName.class, null, value);       }           /**   T     * Create an instance of {@link JAXBElement }{@code <}{@link Integer }{@code >}}        *        */   n    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "unsignedShort")   D    public JAXBElement<Integer> createUnsignedShort(Integer value) {   Z        return new JAXBElement<Integer>(_UnsignedShort_QNAME, Integer.class, null, value);       }           /**   R     * Create an instance of {@link JAXBElement }{@code <}{@link Short }{@code >}}        *        */   f    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "short")   8    public JAXBElement<Short> createShort(Short value) {   N        return new JAXBElement<Short>(_Short_QNAME, Short.class, null, value);       }           /**   Q     * Create an instance of {@link JAXBElement }{@code <}{@link Long }{@code >}}        *        */   l    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "unsignedInt")   <    public JAXBElement<Long> createUnsignedInt(Long value) {   R        return new JAXBElement<Long>(_UnsignedInt_QNAME, Long.class, null, value);       }           /**   W     * Create an instance of {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}}        *        */   h    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "decimal")   D    public JAXBElement<BigDecimal> createDecimal(BigDecimal value) {   Z        return new JAXBElement<BigDecimal>(_Decimal_QNAME, BigDecimal.class, null, value);       }           /**   S     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}        *        */   e    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "guid")   9    public JAXBElement<String> createGuid(String value) {   O        return new JAXBElement<String>(_Guid_QNAME, String.class, null, value);       }           /**   U     * Create an instance of {@link JAXBElement }{@code <}{@link Duration }{@code >}}        *        */   i    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "duration")   A    public JAXBElement<Duration> createDuration(Duration value) {   W        return new JAXBElement<Duration>(_Duration_QNAME, Duration.class, null, value);       }           /**   S     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}        *        */   g    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "string")   ;    public JAXBElement<String> createString(String value) {   Q        return new JAXBElement<String>(_String_QNAME, String.class, null, value);       }           /**   W     * Create an instance of {@link JAXBElement }{@code <}{@link BigInteger }{@code >}}        *        */   m    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "unsignedLong")   I    public JAXBElement<BigInteger> createUnsignedLong(BigInteger value) {   _        return new JAXBElement<BigInteger>(_UnsignedLong_QNAME, BigInteger.class, null, value);       }       }5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             TG��     �                   5��