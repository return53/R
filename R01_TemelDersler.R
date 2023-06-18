# R Tutorial

5 + 5

# Sözdizimi
# R'de metin çıktısı almak için tek veya çift tırnak kullanın:

"Merhaba Dünya!"

# Sayıların çıktısını almak için sayıyı yazın (tırnak işaretleri olmadan):

5
10
25

#Basit hesaplamalar yapmak için sayıları birlikte toplayın:

5 + 5

# Tebrikler! Artık ilk R kodunuzu yazdınız.

# Yazdır
# Diğer birçok programlama dilinden farklı olarak, bir yazdırma işlevi kullanmadan R'de kod çıktısı alabilirsiniz:

"Hello World!"

# "print()" fonksiyonu, genellikle Python gibi diğer programlama dillerine aşina iseniz, kodun çıktısını almak için kullanılan bir işlevdir. Ancak, kullanmak isterseniz R\'de de benzer bir işlev bulunur ve bu nedenle bu konuda aşinalık yararlı olabilir.

print("Merhaba Dünya!")

#"print()" işlevini kullanmanız gereken zamanlar da vardır, özellikle döngülerle çalışırken, döngüdeki her bir adımda kodun çıktısını almak için "print()" işlevini kullanabilirsiniz.

for (x in 1:10) {
  print(x)
}

#Sonuç olarak, "print()" işlevini kullanmak isteyip istemediğiniz size bağlıdır. Ancak, kodunuz bir R ifadesinin içinde ise, çıktıyı görmek için "print()" işlevini kullanmanız önerilir.

#Yorumlar, R kodunu açıklamak ve daha okunabilir hale getirmek için kullanılabilir. Ayrıca, alternatif kodları test ederken yürütmenin önlenmesi için de kullanılabilir.
#Yorumlar # ile başlar. Kodu çalıştırırken R, # ile başlayan her şeyi yoksayar.

# This is a comment
"Hello World!"

"Hello World!" # This is a comment

#Yorumlar, kodu açıklamak için metin olmak zorunda değildir, aynı zamanda R'nin kodu yürütmesini engellemek için de kullanılabilir:

# "Good morning!"
"Good night!"

#Java gibi diğer programlama dillerinin aksine, R'de çok satırlı yorumlar için bir sözdizimi yoktur. Bununla birlikte, çok satırlı yorumlar oluşturmak için her satıra bir # ekleyebiliriz:

# This is a comment
# written in
# more than just one line
"Hello World!"

#R Değişkenleri
#R'de Değişken Oluşturma
#Değişkenler, veri değerlerini depolamak için kullanılan konteynerlerdir.

#R'de bir değişkeni tanımlamak için bir komut yoktur. Bir değişken, ilk kez bir değer atandığında oluşturulur. Bir değişkene değer atamak için <- işaretini kullanın. Değişken değerini çıktılamak (veya yazdırmak) için sadece değişken adını yazın:

name <- "John"
age <- 40

name # "John" çıktısını verir
age # 40 çıktısını verir

#Yukarıdaki örnekte, name ve age değişkenlerdir, "John" ve 40 ise değerlerdir.

#Diğer programlama dillerinde atama operatörü olarak = kullanmak yaygındır. R'de = ve <- her ikisini de atama operatörü olarak kullanabiliriz.

#Ancak, <- çoğu durumda tercih edilir çünkü = operatörü R'de bazı bağlamlarda yasaklanabilir.

#Değişkenleri Yazdırma / Çıktı Alma
#Birçok diğer programlama diline kıyasla, R'de değişkenleri yazdırmak / çıktılamak için bir işlev kullanmanıza gerek yoktur. Sadece değişken adını yazmanız yeterlidir:

name <- "John Doe"

name # name değişkeninin değerini otomatik olarak çıktılar
#Ancak, R'de kullanmak isterseniz print() işlevi mevcuttur. Bu, Python gibi diğer programlama dillerine aşina iseniz yararlı olabilir. Bu diller genellikle değişkenleri çıktılamak için bir print() işlevi kullanırlar.

name <- "John Doe"

print(name) # name değişkeninin değerini çıktılar
#Ve for döngüleriyle çalışırken (daha sonra daha fazlasını öğreneceğiniz), kodu çıktılamak için print() işlevini kullanmanız gereken zamanlar vardır:

for (x in 1:10) {
  print(x)
}
#Sonuç: Kodu çıktılamak için print() işlevini kullanmak isteyip istememek size kalmıştır. Bununla birlikte, kodunuz bir R ifadesinin içindeyse (örneğin, yukarıdaki örnekte olduğu gibi süslü ayraçlar {} içinde), sonucu çıkarmak için print() işlevini kullanın.

#R Elemanları Birleştirme
#paste() fonksiyonunu kullanarak iki veya daha fazla elemanı birleştirebilirsiniz.

#Metin ve bir değişkeni birleştirmek için R, virgül (,) kullanır:

text <- "harika"
paste("R", text, "bir programlama dili")

#Ayrıca bir değişkeni başka bir değişkene eklemek için de , kullanabilirsiniz:

text1 <- "R"
text2 <- "harika"
paste(text1, "bir", text2, "programlama dili")

#Sayılar için matematiksel bir operatör olarak + karakterini kullanabilirsiniz:

num1 <- 5
num2 <- 10
num1 + num2

#Eğer bir dize (metin) ve bir sayıyı birleştirmeye çalışırsanız, R size bir hata verecektir:

num <- 5
text <- "Biraz metin"
num + text

#Çıktı: Error in num + text : binary operator için sayısal olmayan argüman"

#R'de Birden Fazla Değişken
#Birden fazla değişkene aynı değeri atamanıza izin verir

var1 <- var2 <- var3 <- "Portakal"

#R'de Birden Fazla Değişken
#Birden fazla değişkene aynı değeri atamanıza izin veren R'dir:

#Aynı değeri birden fazla değişkene atama
var1 <- var2 <- var3 <- "Portakal"

#Değişken değerlerini yazdırma
var1
var2
var3


#Değişken Adlandırma
#Bir değişken kısa bir isim (x, y gibi) veya daha açıklayıcı bir isim (yaş, araba_isim, toplam_hacim) alabilir. R değişkenleri için kurallar şunlardır:
# -Bir değişken adı harfle başlamalı ve harfler, rakamlar, nokta(.) ve alt çizgi() kombinasyonu olabilir. Nokta(.) ile başlarsa, ardından bir rakam gelemez.
# -Bir değişken adı sayı veya alt çizgi () ile başlayamaz.
# -Değişken isimleri büyük-küçük harf duyarlıdır (yaş, Yaş ve YAŞ üç farklı değişkendir).
# -Ayrılmış kelimeler değişken olarak kullanılamaz (TRUE, FALSE, NULL, if...).

# Legal variable names:
myvar <- "John"
my_var <- "John"
myVar <- "John"
MYVAR <- "John"
myvar2 <- "John"
.myvar <- "John"

#   Illegal variable names:
#   2myvar <- "John"
#   my-var <- "John"
#   my var <- "John"
#   _my_var <- "John"
#   my_v@ar <- "John"
#   TRUE <- "John"

#R Veri Türleri
#Programlamada, veri türü önemli bir kavramdır.
#Değişkenler farklı türlerde verileri depolayabilir ve farklı türler farklı şeyler yapabilir.
#R'de değişkenler belirli bir türle tanımlanmak zorunda değildir ve hatta tanımlandıktan sonra bile türleri değişebilir.

my_var <- 30 # my_var sayısal (numeric) türünde
my_var <- "Sally" # my_var şimdi karakter (character) türünde

#R'nin çeşitli veri türleri ve nesne sınıfları vardır. R'yi tanımaya devam ettikçe bunlar hakkında daha fazla bilgi edineceksiniz.

#Temel Veri Türleri
#R'deki temel veri tipleri aşağıdaki gibi sınıflandırılabilir:
  
# -numeric - (10.5, 55, 787)
# -integer - (1L, 55L, 100L, "L" harfi tamsayı olduğunu belirtir)
# -complex - (9 + 3i, "i" hayali kısmı temsil eder)
# -character (dize olarak da bilinir) - ("k", "R heyecan vericidir", "FALSE", "11.5")
# -logical (boolean olarak da bilinir) - (TRUE veya FALSE)
# -Değişkenin veri türünü kontrol etmek için class() fonksiyonunu kullanabiliriz:

#numeric
x <- 10.5
class(x)

#integer
x <- 1000L
class(x)

#complex
x <- 9i + 3
class(x)

#character/dize
x <- "R heyecan vericidir"
class(x)

#logical/boolean
x <- TRUE
class(x)

#R Sayılar
#R'de üç tür sayı vardır:

# -numeric (sayısal)
# -integer (tamsayı)
# -complex (kompleks)

#Sayı türündeki değişkenler, değer atandığında oluşturulur:

x <- 10.5 # numeric (sayısal)
y <- 10L # integer (tamsayı)
z <- 1i # complex (kompleks)

#Numeric (Sayısal)
#Sayısal bir veri türü, R'de en yaygın olanıdır ve ondalıklı veya ondalıksız herhangi bir sayıyı içerir, örneğin: 10.5, 55, 787:
  
x <- 10.5
y <- 55

#x ve y'nin değerlerini yazdırma
x
y

#x ve y'nin sınıf adını yazdırma
class(x)
class(y)

#Integer (Tamsayı)
#Tamsayılar, ondalık kısmı olmayan sayısal verilerdir. Ondalık olmayan bir değişken oluşturacağınızdan emin olduğunuz durumlarda kullanılır. Tamsayı bir değişken oluşturmak için tamsayı değerinden sonra "L" harfini kullanmanız gerekmektedir:

x <- 1000L
y <- 55L

#x ve y'nin değerlerini yazdırma
x
y

#x ve y'nin sınıf adını yazdırma
class(x)
class(y)

#Complex (Kompleks)
#Kompleks sayılar, hayali kısmı "i" ile gösterilen sayılardır:

x <- 3+5i
y <- 5i

#x ve y'nin değerlerini yazdırma
x
y

#x ve y'nin sınıf adını yazdırma
class(x)
class(y)

#Tür Dönüşümü
#Aşağıdaki fonksiyonlarla bir türden diğerine dönüşüm yapabilirsiniz:
  
# -as.numeric()
# -as.integer()
# -as.complex()

x <- 1L # integer (tamsayı)
y <- 2 # numeric (sayısal)

#tamsayıdan sayısala dönüşüm (from integer to numeric):
  a <- as.numeric(x)

#sayısaldan tamsayıya dönüşüm (from numeric to integer):
  b <- as.integer(y)

#x ve y'nin değerlerini yazdırma
x
y

#a ve b'nin sınıf adını yazdırma
class(a)
class(b)

#R Matematik
#Basit Matematik
#R'de, sayılar üzerinde yaygın matematiksel işlemleri gerçekleştirmek için operatörler kullanabilirsiniz.
#+ operatörü iki değeri bir araya getirmek yada toplamak için kullanılır:

10 + 5

#Ve - operatörü çıkarma işlemi için kullanılır:

10 - 5

#Dahili Matematiksel Fonksiyonlar
#R'de aynı zamanda sayılar üzerinde matematiksel işlemler yapmanızı sağlayan birçok dahili matematik fonksiyonu bulunur.
#Örneğin, min() ve max() fonksiyonları, bir kümedeki en düşük veya en yüksek sayıyı bulmak için kullanılabilir:

max(5, 10, 15)
min(5, 10, 15)

#sqrt()
#sqrt() fonksiyonu bir sayının karekökünü döndürür:

sqrt(16)

#abs()
#abs() fonksiyonu bir sayının mutlak (pozitif) değerini döndürür:

abs(-4.7)

#ceiling() ve floor()
#ceiling() fonksiyonu bir sayıyı en yakın tam sayıya yukarı yuvarlar ve floor() fonksiyonu bir sayıyı en yakın tam sayıya aşağı yuvarlar ve sonucu döndürür:
  
ceiling(1.4)
floor(1.4)

#R Dizeleri
#Dize Örnekleri
#Dizeler metinleri depolamak için kullanılır.
#Bir dize ya tek tırnak ya da çift tırnak ile çevrelenir:
  
#  "hello", 'hello' şeklinde yazmak aynı anlama gelir:

"hello"
'hello'

#Bir Değişkene Dize Atama
#Bir dizeyi bir değişkene atamak için, değişkeni takiben <- operatörü ve dize kullanılır:
  
str <- "Merhaba"
str # str değişkeninin değerini yazdırma

#Çok Satırlı Dizeler
#Aşağıdaki gibi çok satırlı bir dizeyi bir değişkene atayabilirsiniz:
  
str <- "Lorem ipsum dolor sit amet,
consectetur adipiscing elit,
sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua."

str # str değişkeninin değerini yazdırma

#Ancak, R, her satır sonuna "\n" ekleyecektir. Bu bir kaçış karakteridir ve n karakteri yeni bir satırı belirtir.
#Eğer satır sonlarının koddaki konumuna aynı şekilde yerleştirilmesini isterseniz, cat() fonksiyonunu kullanın:

str <- "Lorem ipsum dolor sit amet,
consectetur adipiscing elit,
sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua."

cat(str)

#Dize Uzunluğu
#R'de birçok kullanışlı dize fonksiyonu vardır.
#Örneğin, bir dizenin kaç karakter içerdiğini bulmak için nchar() fonksiyonunu kullanabilirsiniz:

str <- "Merhaba Dünya!"
nchar(str)

#Bir Dizeyi Kontrol Etme
#Bir karakterin veya karakter dizisinin bir dizide bulunup bulunmadığını kontrol etmek için grepl() fonksiyonunu kullanın:


str <- "Merhaba Dünya!"
grepl("H", str)
grepl("Merhaba", str)
grepl("X", str)

#İki Dizeyi Birleştirme
#İki diziyi birleştirmek için paste() fonksiyonunu kullanın:

str1 <- "Merhaba"
str2 <- "Dünya"
paste(str1, str2)

#R Kaçış Karakterleri
#Kaçış Karakterleri
#Dize içerisinde geçersiz olan karakterleri eklemek için kaçış karakteri kullanmanız gerekmektedir.
#Bir kaçış karakteri, ters bölü \ takip eden eklemek istediğiniz karakterdir.
#Bir dize içerisinde çift tırnak kullanmanın geçersiz olduğu bir örnek:
  
str <- "Biz kuzeyden gelen \"Viking\" olarak biliniriz."
str

#Sonuç:Error: unexpected symbol in "str <- "Biz kuzeyden gelen "Viking"

#Bu sorunu düzeltmek için, \" kaçış karakterini kullanın:
#Kaçış karakteri normalde izin verilmediği durumlarda çift tırnak kullanmanıza olanak sağlar:

str <- "Biz kuzeyden gelen \"Viking\" olarak biliniriz."
str
cat(str)

#Dikkat edin, str değişkenini otomatik olarak yazdırmak, çıktıda ters bölüyü (\) yazdıracaktır. Onu ters bölü olmadan yazdırmak için cat() fonksiyonunu kullanabilirsiniz.

#R'de diğer kaçış karakterleri:

#Kod  Sonuç
#\\   Ters bölü
#\n	  Yeni Satır
#\r	  Tekerlekli İşaret Dönüşü
#\t	  Tab
#\b	  Geri Al

#R Booleans / Mantıksal Değerler
#Booleans (Mantıksal Değerler)
#Programlamada, bir ifadenin doğru mu yoksa yanlış mı olduğunu sıklıkla bilmek istersiniz.
#R'de herhangi bir ifadeyi değerlendirebilir ve iki yanıt olan TRUE veya FALSE elde edebilirsiniz.
#İki değeri karşılaştırdığınızda, ifade değerlendirilir ve R mantıksal cevabı döndürür:

10 > 9    # 10, 9'dan büyük olduğu için TRUE
10 == 9   # 10, 9'a eşit olmadığı için FALSE
10 < 9    # 10, 9'dan küçük olmadığı için FALSE

#Ayrıca iki değişkeni de karşılaştırabilirsiniz:
  
a <- 10
b <- 9

a > b

#Ayrıca bir koşulu if ifadesinde çalıştırabilirsiniz, bu konuda daha fazlasını if..else bölümünde öğreneceksiniz.

a <- 200
b <- 33

if (b > a) {
  print ("b, a'dan büyüktür")
} else {
  print("b, a'dan büyük değildir")
}

#R Operatörler
#Operatörler, değişkenler ve değerler üzerinde işlemler yapmak için kullanılır.
#Aşağıdaki örnekte, + operatörünü kullanarak iki değeri topluyoruz:

10 + 5

#R, operatörleri aşağıdaki gruplara ayırır:
  
# -Aritmetik operatörler
# -Atama operatörleri
# -Karşılaştırma operatörleri
# -Mantıksal operatörler
# -Çeşitli operatörler

#R Aritmetik Operatörler
#Aritmetik operatörler, sayısal değerlerle kullanılarak yaygın matematiksel işlemleri gerçekleştirmek için kullanılır:
  
#   Operatör	İsim	                          Örnek
#   +	        Toplama	                        x + y	
#   -	        Çıkarma	                        x - y	
#   *	        Çarpma	                        x * y	
#   /	        Bölme	                          x / y	
#   ^	        Üs alma	                        x ^ y	
#   %%	      Kalan (bölme işleminden kalan)  x %% y	
#   %/%	      Tam Bölme	                      x %/% y	

#R Atama Operatörleri
#Atama operatörleri, değişkenlere değer atamak için kullanılır:
  
my_var <- 3
my_var <<- 3
3 -> my_var
3 ->> my_var
my_var # my_var'ı yazdır

#Not: <<- global bir atama işlemidir. Bunun hakkında daha fazlasını Global Değişken bölümünde öğreneceksiniz.
#Atama operatörünün yönünü değiştirmek de mümkündür.
#x <- 3, 3 -> x ile aynıdır.

#R Karşılaştırma Operatörleri
#Karşılaştırma operatörleri, iki değeri karşılaştırmak için kullanılır:
  
#   Operatör	İsim	              Örnek
#   ==	      Eşit mi	            x == y	
#   !=	      Eşit değil mi       x != y	
#   >	        Büyük mü	          x > y	
#   <	        Küçük mü	          x < y	
#   >=	      Büyük veya eşit mi  x >= y	
#   <=	      Küçük veya eşit mi  x <= y	

#R Mantıksal Operatörler
#Mantıksal operatörler, koşullu ifadeleri birleştirmek için kullanılır:
  
#   Operatör  Açıklama
#   &	        Element-wise Mantıksal VE operatörü. Her iki öğe de TRUE ise TRUE döner
#   &&	      Mantıksal VE operatörü - Her iki ifade de TRUE ise TRUE döner
#   |	        Element-wise Mantıksal VEYA operatörü. En az bir ifade TRUE ise TRUE döner
#   ||	      Mantıksal VEYA operatörü. En az bir ifade TRUE ise TRUE döner
#   !	        Mantıksal DEĞİL - ifade TRUE ise FALSE döner

#R Çeşitli Operatörler
#Çeşitli operatörler verileri manipüle etmek için kullanılır:
  
#   Operatör  Açıklama	                                    Örnek
#   :	        Bir dizi sayıyı bir sıra halinde oluşturur    x <- 1:10
#   %in%	    Bir öğenin bir vektörde olup olmadığını bulur x %in% y
#   %*%       Matris çarpımı	                              x <- Matrix1 %*% Matrix2

#R If ... Else
#Koşullar ve If İfadeleri
#R, matematikteki yaygın mantıksal koşulları destekler:
  
# Operatör	İsim	              Örnek
# ==	      Eşit mi	            x == y
# !=	      Eşit değil mi	      x != y
# >	        Büyük mü	          x > y
# <	        Küçük mü	          x < y
# >=	      Büyük veya eşit mi	x >= y
# <=	      Küçük veya eşit mi	x <= y

#Bu koşullar, genellikle "if ifadeleri" ve döngülerde kullanılır.

#If İfadesi
#Bir "if ifadesi", if anahtar kelimesiyle yazılır ve bir koşul TRUE ise çalıştırılacak bir kod bloğunu belirtmek için kullanılır:

a <- 33
b <- 200
if (b > a) {
  print("b, a'dan büyüktür")
}

#Bu örnekte, b'nin a'dan büyük olup olmadığını test etmek için a ve b adında iki değişken kullanıyoruz. a 33 ve b 200 olduğunda, 200'ün 33'ten büyük olduğunu biliyoruz, bu nedenle ekrana "b, a'dan büyüktür" yazdırıyoruz.
#R, kod içindeki kapsamı tanımlamak için süslü parantezler { } kullanır.

#Else If
#else if anahtar kelimesi, R'nin "eğer önceki koşullar doğru değilse, o zaman bu koşulu dene" demektir:

a <- 33
b <- 33
if (b > a) {
  print("b, a'dan büyüktür")
} else if (a == b) {
  print("a ve b eşittir")
}

#Bu örnekte, a b'ye eşit olduğu için ilk koşul doğru değildir, ancak else if koşulu doğrudur, bu nedenle "a ve b eşittir" ekrana yazdırılır.
#R'de istediğiniz kadar else if ifadesi kullanabilirsiniz.

#If Else
#else anahtar kelimesi, önceki koşullar tarafından yakalanmayan her şeyi yakalar:

a <- 200
b <- 33
if (b > a) {
  print("b, a'dan büyüktür")
} else if (a == b) {
  print("a ve b eşittir")
} else {
  print("a, b'den büyüktür")
}

#Bu örnekte, a b'den büyüktür, bu nedenle ilk koşul doğru değildir, ayrıca else if koşulu da doğru değildir, bu nedenle else koşuluna gideriz ve "a, b'den büyüktür" ekrana yazdırılır.
#Ayrıca else if olmadan da else kullanabilirsiniz:

a <- 200
b <- 33
if (b > a) {
  print("b, a'dan büyüktür")
} else {
  print("b, a'dan büyük değildir")
}

#Kodda iç içe if ifadeleri de kullanabilirsiniz. Buna "nested if statements" denir.

x <- 41
if (x > 10) {
  print("On üzeri")
  if (x > 20) {
    print("ve aynı zamanda 20'den büyük!")
  } else {
    print("ancak 20'den büyük değil.")
  }
} else {
  print("10'dan küçük.")
}

# R - AND ve OR Operatörleri
# AND
# & sembolü (ve), mantıksal bir operatördür ve koşullu ifadeleri birleştirmek için kullanılır:

# a, b'den büyük mü VE a, c'den büyük mü diye test edin:
  
a <- 200
b <- 33
c <- 500

if (a > b & c > a) {
  print("Her iki koşul da doğrudur")
}

# OR
# | sembolü (veya), mantıksal bir operatördür ve koşullu ifadeleri birleştirmek için kullanılır:

# a, b'den büyük mü YA DA c, a'dan büyük mü diye test edin:
  
a <- 200
b <- 33
c <- 500

if (a > b | a > c) {
  print("Koşullardan en az biri doğrudur")
}

#R While Döngüsü
#Döngüler
#Döngüler, belirli bir koşul gerçekleştiği sürece bir kod bloğunu çalıştırabilen yapılardır.
#Döngüler, zaman tasarrufu sağlar, hataları azaltır ve kodu daha okunabilir hale getirir.
#R programında iki tane döngü komutu bulunur:
  
# -while döngüleri
# -for döngüleri

#R While Döngüleri
#While döngüsüyle, bir koşul TRUE olduğu sürece bir dizi ifadeyi çalıştırabiliriz:
  
#i değişkeni 6'dan küçük olduğu sürece i'yi ekrana yazdır:
  
i <- 1
while (i < 6) {
  print(i)
  i <- i + 1
}

#Yukarıdaki örnekte döngü, 1'den 5'e kadar olan sayıları üretmeye devam edecektir. Döngü, 6'da duracak çünkü 6 < 6 ifadesi FALSE'dur.
#While döngüsü, ilgili değişkenlerin hazır olmasını gerektirir; bu örnekte, 1 olarak ayarladığımız bir indeks değişkeni olan i'yi tanımlamamız gerekiyor.
#Not: i'yi artırmanızı unutmayın; aksi takdirde döngü sonsuza kadar devam eder.

#Break
#Break ifadesiyle, while koşulu TRUE olsa bile döngüyü durdurabiliriz:

#i 4'e eşit olduğunda döngüden çık:

i <- 1
while (i < 6) {
  print(i)
  i <- i + 1
  if (i == 4) {
    break
  }
}

#Döngü, i'nin 4'e eşit olduğunda (i == 4) break ifadesini kullanarak döngüyü bitirmeyi seçtiğimiz için 3'te duracaktır.

#Next
#Next ifadesiyle bir döngü adımını atlayabiliriz, ancak döngüyü sonlandırmaz:

#3 değerini atla:
  
i <- 0
while (i < 6) {
  i <- i + 1
  if (i == 3) {
    next
  }
  print(i)
}

#Döngü 3 değerini geçtiğinde onu atlar ve döngüye devam eder.

#Yahtzee!
#While Döngüsüyle Birlikte If.. Else Kullanımı
#Pratik bir örnek olarak, Yahtzee adlı bir oyun oynadığımızı düşünelim!
  
#Zar sayısı 6 ise "Yahtzee!" yazdır:
  
dice <- 1
while (dice <= 6) {
  if (dice < 6) {
    print("Yahtzee yok")
  } else {
    print("Yahtzee!")
  }
  dice <- dice + 1
}

#Döngü, 1'den 5'e kadar olan değerleri geçerse
#"Yahtzee yok" yazdırır. Değer 6 olduğunda ise "Yahtzee!" yazdırır.

#R For Döngüsü
#For Döngüleri
#For döngüsü, bir dizi üzerinde yineleme yapmak için kullanılır:
  
#1'den 10'a kadar olan her değeri yazdır:
  
for (x in 1:10) {
  print(x)
}

#Bu, diğer programlama dillerindeki for anahtar kelimesine daha az benzemektedir ve diğer nesne yönelimli programlama dillerinde bulunan bir yineleyici yöntemi gibi çalışır.
#For döngüsüyle, bir vektör, dizi, liste vb. içindeki her öğe için belirli bir dizi ifadeyi çalıştırabiliriz.
#Listeleri, vektörleri vb. daha sonraki bir bölümde öğreneceksiniz.

#Bir listedeki her öğeyi yazdır:
  
fruits <- list("elma", "muz", "kiraz")
for (x in fruits) {
  print(x)
}

#Zar sayısını yazdır:
  
dice <- c(1, 2, 3, 4, 5, 6)
for (x in dice) {
  print(x)
}

#For döngüsü, while döngülerinde olduğu gibi önceden ayarlanmış bir indeks değişkenine ihtiyaç duymaz.

#Break
#Break ifadesiyle, döngü tüm öğeler üzerinde döngülenmeden önce döngüyü durdurabiliriz:

#"kiraz"da döngüyü durdur:
  
fruits <- list("elma", "muz", "kiraz")
for (x in fruits) {
  if (x == "kiraz") {
    break
  }
  print(x)
}

#Döngü, x "kiraz" olduğunda (x == "kiraz") break ifadesini kullanarak döngüyü bitirmeyi seçtiğimiz için "kiraz"da duracaktır.

#Next
#Next ifadesiyle, bir yinelemeyi atlayabiliriz ancak döngüyü sonlandırmaz:

#"muz"u atla:
  
fruits <- list("elma", "muz", "kiraz")
for (x in fruits) {
  if (x == "muz") {
    next
  }
  print(x)
}

#Döngü "muz"u geçtiğinde onu atlayacak ve döngüye devam edecektir.

#Yahtzee!
#For Döngüsüyle Birlikte If.. Else Kullanımı
#Pratik bir örnek olarak, Yahtzee adlı bir oyun oynadığımızı düşünelim!

#Zar sayısı 6 ise "Yahtzee!" yazdır:
  
dice <- 1:6
for(x in dice) {
  if (x == 6) {
    print(paste("Zar sayısı", x, "Yahtzee!"))
  } else {
    print(paste("Zar sayısı", x, "Yahtzee değil"))
  }
}

#Döngü 1'den 5'e kadar olan değerleri geçerse "Yahtzee değil" ve sayısını yazdırır. Değer 6'ya ulaştığında "Yahtzee!" ve sayısını yazdırır.

#R İçiçe (nested) Döngüler
#Bir döngüyü başka bir döngünün içine yerleştirmek de mümkündür. Buna "yer içinde yer alan" (nested) bir döngü denir:

#Bir listedeki her meyvenin sıfatını yazdır:
  
adj <- list("kırmızı", "büyük", "lezzetli")

fruits <- list("elma", "muz", "kiraz")
for (x in adj) {
  for (y in fruits) {
    print(paste(x, y))
  }
}

#R Fonksiyonlar
#Bir fonksiyon, yalnızca çağrıldığında çalışan bir kod bloğudur.
#Fonksiyonlara, parametreler olarak bilinen verileri iletebilirsiniz.
#Bir fonksiyon, bir sonuç olarak veri döndürebilir.

#Bir Fonksiyon Oluşturma
#Bir fonksiyon oluşturmak için, function() anahtar kelimesini kullanın:

my_function <- function() { # my_function adında bir fonksiyon oluşturun
  print("Merhaba Dünya!")
}

#Bir Fonksiyonu Çağırma
#Bir fonksiyonu çağırmak için, fonksiyon adından sonra parantez kullanın, örneğin my_function():

my_function <- function() {
  print("Merhaba Dünya!")
}

my_function() # my_function adlı fonksiyonu çağırma

#Argümanlar
#Bilgi, argümanlar olarak fonksiyonlara iletilir.
#Argümanlar, fonksiyon adından sonra, parantez içinde belirtilir. Aralarına virgül koyarak istediğiniz kadar argüman ekleyebilirsiniz.
#Aşağıdaki örnekte, bir argümana (fname) sahip bir fonksiyon bulunmaktadır. Fonksiyon çağrıldığında, tam adı yazdırmak için fonksiyon içinde kullanılır:

my_function <- function(fname) {
  paste(fname, "Griffin")
}

my_function("Peter")
my_function("Lois")
my_function("Stewie")

#Parametreler veya Argümanlar?
#"Parametre" ve "argüman" terimleri aynı şey için kullanılabilir: bir fonksiyona iletilen bilgiler.
#Bir fonksiyonun bakış açısından:
#Bir parametre, fonksiyon tanımındaki parantez içinde listelenen değişkendir.
#Bir argüman, fonksiyon çağrıldığında gönderilen değerdir.

#Argüman Sayısı
#Varsayılan olarak, bir fonksiyon doğru sayıda argümanla çağrılmalıdır. Yani, eğer fonksiyonunuz 2 argüman bekliyorsa, fonksiyonu 2 argümanla çağırmalısınız, daha fazla veya daha az değil:

#Bu fonksiyon 2 argüman bekliyor ve 2 argüman alır:

my_function <- function(fname, lname) {
  paste(fname, lname)
}
my_function("Peter", "Griffin")

#Eğer fonksiyonu 1 veya 3 argümanla çağırırsanız bir hata alırsınız:
#Bu fonksiyon 2 argüman bekliyor ve 1 argüman alır:
  
my_function <- function(fname, lname) {
  paste(fname, lname)
}
my_function("Peter")

#Varsayılan Parametre Değeri
#Aşağıdaki örnek, varsayılan bir parametre değerini nasıl kullanacağınızı göstermektedir.
#Argüman olmadan fonksiyonu çağırdığımızda, varsayılan değeri kullanır:

my_function <- function(country = "Norveç") {
  paste("Ben", country, "liyim")
}
my_function("İsveç")
my_function("Hindistan")
my_function() # varsayılan değer olan Norveç'i alacak
my_function("ABD")

#Dönüş Değerleri
#Bir fonksiyonun bir sonuç döndürmesini sağlamak için, return() fonksiyonunu kullanın:

my_function <- function(x) {
  return (5 * x)
}
print(my_function(3))
print(my_function(5))
print(my_function(9))

#Yukarıdaki kodun çıktısı şu şekilde olacaktır:
  
# [1] 15
# [1] 25
# [1] 45

#R İç İçe Fonksiyonlar (Nested Functions)
#İç içe fonksiyon oluşturmanın iki yolu vardır:
  
# -Bir fonksiyonu başka bir fonksiyon içinde çağırmak.
# -Bir fonksiyonu başka bir fonksiyonun içinde yazmak.

#Bir fonksiyonu başka bir fonksiyon içinde çağırma:
  
Nested_function <- function(x, y) {
  a <- x + y
  return(a)
}
Nested_function(Nested_function(2,2), Nested_function(3,3))

#Örneği Açıklayalım
#Fonksiyon x'in y'yi eklemesini söyler.
#İlk giriş Nested_function(2,2) ana fonksiyonun "x"sidir.
#İkinci giriş Nested_function(3,3) ana fonksiyonun "y"sidir.
#Çıktı bu nedenle (2+2) + (3+3) = 10'dur.

#Bir fonksiyonu başka bir fonksiyonun içinde yazma:

Outer_func <- function(x) {
  Inner_func <- function(y) {
    a <- x + y
    return(a)
  }
  return (Inner_func)
}
output <- Outer_func(3) # Outer_func'i çağırmak için
output(5)

#Örneği Açıklayalım
#İç içe fonksiyon olan Inner_func, Outer_func'in içine (içine) tanımlanmış olduğu için doğrudan çağıramazsınız.
#Inner_func'i ikinci adımda çağırmak için önce Outer_func'i çağırmamız gerekiyor.
#3 değerine sahip olan output adında yeni bir değişken oluşturuyoruz.
#Ardından, bu çıktıyı istenen "y" değeriyle (bu durumda 5) yazdırıyoruz.
#Çıktı bu nedenle 8'dir (3 + 5).

#R Fonksiyon Rekürsivite (Recursion)
#R, kendini çağırabilen bir fonksiyonu kabul eder. Bu, tanımlanmış bir fonksiyonun kendini çağırması anlamına gelir.
#Rekürsivite, yaygın bir matematiksel ve programlama kavramıdır. Bir fonksiyonun kendini çağırması anlamına gelir. Bu, veri üzerinde döngü yaparak bir sonuca ulaşmanızı sağlar.
#Geliştirici, rekürsiviteyi çok dikkatli kullanmalıdır, çünkü fonksiyonun hiçbir zaman sonlanmadığı veya aşırı miktarda bellek veya işlemci gücü kullanan bir fonksiyon yazmak oldukça kolay olabilir. Ancak doğru şekilde yazıldığında, rekürsivite, programlamada çok verimli ve matematiksel olarak zarif bir yaklaşım olabilir.
#Bu örnekte, tri_recursion(), kendisini ("recurse") çağıran bir fonksiyon olarak tanımlanmıştır. Veri olarak k değişkenini kullanırız ve her tekrarda (-1) azalır. Rekürsion, şart k 0'dan büyük olmadığında (yani 0 olduğunda) sona erer.
#Yeni bir geliştirici için bu tam olarak nasıl çalıştığını anlamak biraz zaman alabilir, en iyi yol test etmek ve değiştirmektir.

tri_recursion <- function(k) {
  if (k > 0) {
    result <- k + tri_recursion(k - 1)
    print(result)
  } else {
    result = 0
    return(result)
  }
}
tri_recursion(6)

#R Global Değişkenler (Global Variables)
#Fonksiyonların dışında oluşturulan değişkenlere global değişkenler denir.
#Global değişkenler herkes tarafından kullanılabilir, hem fonksiyonların içinde hem de dışında.

#Bir fonksiyonun içinde kullanılmak üzere bir değişkeni fonksiyonun dışında oluşturun ve içinde kullanın:
  
txt <- "harika"
my_function <- function() {
  paste("R harika bir dildir:", txt)
}
my_function()

#Eğer aynı isimle bir değişkeni bir fonksiyonun içinde oluşturursanız, bu değişken yerel olacak ve sadece fonksiyonun içinde kullanılabilir. Aynı isme sahip global değişken, global olarak kalacak ve orijinal değeriyle kullanılmaya devam edecektir.
#Global değişkenle aynı isme sahip bir değişkeni fonksiyonun içinde oluşturun:
  
txt <- "global değişken"
my_function <- function() {
  txt = "harika"
  paste("R harika bir dildir:", txt)
}
my_function()
txt # txt'yi yazdır
