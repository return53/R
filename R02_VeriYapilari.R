#R Vektörler (Vectors)
#Bir vektör, aynı türdeki öğelerin bir listesidir.
#Öğeleri birleştirmek için c() işlevini kullanın ve öğeleri virgülle ayırın.
#Aşağıdaki örnekte, stringleri birleştiren meyveler adında bir vektör değişkeni oluşturuyoruz:

## String vektörü
meyveler <- c("muz", "elma", "portakal")
## Meyveleri yazdır
meyveler

#Bu örnekte, sayısal değerleri birleştiren bir vektör oluşturuyoruz:

## Sayısal değerlerin vektörü
sayilar <- c(1, 2, 3)
## Sayıları yazdır
sayilar

#Sayısal değerlerle bir dizi oluşturmak için : operatörünü kullanın:

## Dizi içindeki sayısal değerlerle vektör
sayilar <- 1:10
sayilar

#Dizi içinde ondalık sayısal değerler de oluşturabilirsiniz, ancak eğer son öğe dizinin bir parçası değilse kullanılmaz:

## Ondalık sayısal değerlerle vektör
sayilar1 <- 1.5:6.5
sayilar1
## Ondalık sayısal değerlerle vektör, son öğe kullanılmaz
sayilar2 <- 1.5:6.3
sayilar2

# Sonuç:
#   [1] 1.5 2.5 3.5 4.5 5.5 6.5
#   [1] 1.5 2.5 3.5 4.5 5.5

#Aşağıdaki örnekte, mantıksal değerlerin bir vektörünü oluşturuyoruz:

## Mantıksal değerlerin vektörü
mantiksal_degerler <- c(TRUE, FALSE, TRUE, FALSE)
mantiksal_degerler

#Vektörün Uzunluğu
#Bir vektörün kaç öğeye sahip olduğunu öğrenmek için length() işlevini kullanın:

meyveler <- c("muz", "elma", "portakal")
length(meyveler)

#Vektörü Sıralama
#Vektördeki öğeleri alfabetik veya sayısal olarak sıralamak için sort() işlevini kullanın:

meyveler <- c("muz", "elma", "portakal", "mango", "limon")
sayilar <- c(13, 3, 5, 7, 20, 2)

sort(meyveler)  # Stringleri sırala
sort(sayilar) # Sayıları sırala

#Vektörlere Erişim
#Vektör öğelerine, parantezler [] içindeki dizin numarasına başvurarak erişebilirsiniz. İlk öğe 1 indeksine, ikinci öğe 2 indeksine ve benzer şekilde:

meyveler <- c("muz", "elma", "portakal")
## İlk öğeye erişim (muz)
meyveler[1]

#c() işlevini kullanarak farklı indeks konumlarına başvurarak birden fazla öğeye de erişebilirsiniz:

meyveler <- c("muz", "elma", "portakal", "mango", "limon")
## İlk ve üçüncü öğeye erişim (muz ve portakal)
meyveler[c(1, 3)]

#Belirtilenler hariç tüm öğelere erişmek için negatif indeks numaralarını da kullanabilirsiniz:

meyveler <- c("muz", "elma", "portakal", "mango", "limon")
# İlk öğe hariç tüm öğelere erişim
meyveler[c(-1)]

#Bir Öğeyi Değiştirme
#Bir belirli öğenin değerini değiştirmek için dizin numarasına başvurun:

meyveler <- c("muz", "elma", "portakal", "mango", "limon")
## "muz" yerine "armut"u değiştir
meyveler[1] <- "armut"

## Meyveleri yazdır
meyveler

#Vektörleri Tekrarlama
#Vektörleri tekrarlamak için rep() işlevini kullanın:

#Her değeri tekrarla:
  
hepsini_tekrarla <- rep(c(1,2,3), each = 3)
hepsini_tekrarla

#Vektörün dizisini tekrarla:
  
tekrar_sayisi <- rep(c(1,2,3), times = 3)
tekrar_sayisi

#Her değeri bağımsız olarak tekrarla:
  
bağımsız_tekrar <- rep(c(1,2,3), times = c(5,2,1))
bağımsız_tekrar

#Dizi Oluşturma
#Yukarıdaki örneklerden biri, : operatörünü kullanarak sayısal değerleri olan bir vektör oluşturmanızı gösterdi:

sayilar <- 1:10
sayilar

#Dizi içinde daha büyük veya daha küçük adımlarla bir dizi oluşturmak için seq() işlevini kullanın:

sayilar <- seq(from = 0, to = 100, by = 20)
sayilar

#Not: seq() işlevi üç parametreye sahiptir: from dizinin başladığı yerdir, to dizinin bittiği yerdir ve by dizinin aralığıdır.

# R Listeleri (Lists)
# R'de bir liste, içinde birçok farklı veri türünü barındırabilen bir veri yapısıdır. Bir liste, sıralı ve değiştirilebilir bir veri koleksiyonudur.
# Bir liste oluşturmak için list() işlevini kullanın:

## Stringlerin listesi
bu_liste <- list("elma", "muz", "kiraz")
## Listeyi yazdır
bu_liste

# Listelere Erişim
# Liste öğelerine, parantezler içindeki dizin numarasına başvurarak erişebilirsiniz. İlk öğe 1 indeksine, ikinci öğe 2 indeksine sahiptir ve benzer şekilde devam eder:

bu_liste <- list("elma", "muz", "kiraz")
bu_liste[1]

# Öğe Değerini Değiştirme
# Bir belirli öğenin değerini değiştirmek için dizin numarasına başvurun:

bu_liste <- list("elma", "muz", "kiraz")
bu_liste[1] <- "frenk üzümü"
## Güncellenmiş listeyi yazdır
bu_liste

# Liste Uzunluğu
# Bir listenin kaç öğeye sahip olduğunu öğrenmek için length() işlevini kullanın:

bu_liste <- list("elma", "muz", "kiraz")
length(bu_liste)

# Öğenin Var Olup Olmadığını Kontrol Etme
# Belirtilen bir öğenin listede var olup olmadığını bulmak için %in% operatörünü kullanın:

# Listede "elma" öğesinin var olup olmadığını kontrol edin:

bu_liste <- list("elma", "muz", "kiraz")
"elma" %in% bu_liste

# Liste Öğesi Ekleme
# Bir öğeyi listenin sonuna eklemek için append() işlevini kullanın:

# Listeye "portakal" öğesini ekleyin:

bu_liste <- list("elma", "muz", "kiraz")
append(bu_liste, "portakal")

# Belirtilen bir dizin numarasının sağında bir öğe eklemek için append() işlevine "after=dizin numarası" ekleyin:

# "muz"dan sonra (2. dizin) "portakal"ı listeye ekleyin:

bu_liste <- list("elma", "muz", "kiraz")
append(bu_liste, "portakal", after = 2)

# Liste Öğelerini Kaldırma
# Liste öğelerini de kaldırabilirsiniz. Aşağıdaki örnek, "elma" öğesini içermeyen yeni bir güncellenmiş liste oluşturur:

# Listeden "elma"yı kaldırın:

bu_liste <- list("elma", "muz", "kiraz")
yeni_liste <- bu_liste[-1]
## Yeni listeyi yazdır
yeni_liste

# Dizin Aralığı
# Başlangıç ve bitiş noktalarını belirterek dizin aralığını belirleyebilirsiniz. Bunun için : operatörünü kullanın:

# İkinci, üçüncü, dördüncü ve beşinci öğeyi döndürün:

bu_liste <- list("elma", "muz", "kiraz", "portakal", "kiwi", "kavun", "mango")
(bu_liste)[2:5]

# Not: Arama işlemi, başlangıç noktasından (dahil) bitiş noktasına kadar devam eder.
# Unutmayın ki ilk öğe 1 indeksine sahiptir.

# Bir Liste Üzerinde Döngü İşlemi
# Liste öğeleri üzerinde döngü işlemi yapmak için bir for döngüsü kullanabilirsiniz:

# Tüm öğeleri tek tek listeleyin:

bu_liste <- list("elma", "muz", "kiraz")
for (x in bu_liste) {
  print(x)
}

# İki Liste Birleştirme
# R'de iki veya daha fazla listeyi birleştirmenin birkaç yolu vardır.
# En yaygın yöntem, iki öğeyi birleştiren c() işlevini kullanmaktır:

liste1 <- list("a", "b", "c")
liste2 <- list(1,2,3)
liste3 <- c(liste1, liste2)
liste3

# R Matrisleri (Matrices)
# Bir matris, sütunlar ve satırlarla temsil edilen iki boyutlu bir veri kümesidir.
# Bir sütun, verilerin dikey temsilidir, bir satır ise yatay temsilidir.
# matrix() işlevini kullanarak bir matris oluşturulabilir. Satır sayısını (nrow) ve sütun sayısını (ncol) belirtmek için parametreleri kullanın:

## Bir matris oluştur
bu_matris <- matrix(c(1,2,3,4,5,6), nrow = 3, ncol = 2)
## Matrisi yazdır
bu_matris

# Not: c() işlevi öğeleri birleştirmek için kullanılır.

# Ayrıca stringlerle bir matris oluşturabilirsiniz:

bu_matris <- matrix(c("elma", "muz", "kiraz", "portakal"), nrow = 2, ncol = 2)
bu_matris

# Matris Öğelerine Erişim
#[ ] parantezlerini kullanarak öğelere erişebilirsiniz. Parantez içindeki ilk sayı "1", satır konumunu belirtirken, ikinci sayı "2", sütun konumunu belirtir:

bu_matris <- matrix(c("elma", "muz", "kiraz", "portakal"), nrow = 2, ncol = 2)
bu_matris[1, 2]

# Tüm bir satıra erişmek için parantez içindeki sayının ardından virgül belirtin:

bu_matris <- matrix(c("elma", "muz", "kiraz", "portakal"), nrow = 2, ncol = 2)
bu_matris[2,]

# Tüm bir sütuna erişmek için parantez içindeki sayının öncesine virgül koyun:

bu_matris <- matrix(c("elma", "muz", "kiraz", "portakal"), nrow = 2, ncol = 2)
bu_matris[, 2]

# Bir veya daha fazla satıra erişmek
# Bir veya daha fazla satıra erişmek için c() işlevini kullanabilirsiniz:

bu_matris <- matrix(c("elma", "muz", "kiraz", "portakal","üzüm", "ananas", "armut", "kavun", "incir"), nrow = 3, ncol = 3)
bu_matris[c(1,2),]

# Bir veya daha fazla sütuna erişmek
# Bir veya daha fazla sütuna erişmek için c() işlevini kullanabilirsiniz:

bu_matris <- matrix(c("elma", "muz", "kiraz", "portakal","üzüm", "ananas", "armut", "kavun", "incir"), nrow = 3, ncol = 3)
bu_matris[, c(1,2)]

# Satırlar ve Sütunlar Ekleme
# Bir Matrise ek sütunlar eklemek için cbind() işlevini kullanın:

bu_matris <- matrix(c("elma", "muz", "kiraz", "portakal","üzüm", "ananas", "armut", "kavun", "incir"), nrow = 3, ncol = 3)
yeni_matris <- cbind(bu_matris, c("çilek", "yabanmersini", "ahududu"))
## Yeni matrisi yazdır
yeni_matris

# Not: Yeni sütündeki hücreler, mevcut matrisle aynı uzunlukta olmalıdır.

# Bir Matrise ek satırlar eklemek için rbind() işlevini kullanın:

bu_matris <- matrix(c("elma", "muz", "kiraz", "portakal","üzüm", "ananas", "armut", "kavun", "incir"), nrow = 3, ncol = 3)
yeni_matris <- rbind(bu_matris, c("çilek", "yabanmersini", "ahududu"))
## Yeni matrisi yazdır
yeni_matris

# Not: Yeni satırdaki hücreler, mevcut matrisle aynı uzunlukta olmalıdır.

# Satır ve Sütunları Kaldırma
# Bir Matristen satır ve sütunları kaldırmak için c() işlevini kullanın:

bu_matris <- matrix(c("elma", "muz", "kiraz", "portakal", "mango", "ananas"), nrow = 3, ncol =2)
# İlk satırı ve ilk sütunu kaldır
bu_matris <- bu_matris[-c(1), -c(1)]
bu_matris

# Bir Öğenin Varlığını Kontrol Etme
# Belirtilen bir öğenin bir matriste bulunup bulunmadığını öğrenmek için %in% operatörünü kullanın:

# "elma" matriste var mı diye kontrol edin:
  
bu_matris <- matrix(c("elma", "muz", "kiraz", "portakal"), nrow = 2, ncol = 2)
"elma" %in% bu_matris

# Satır ve Sütun Sayısı
# Bir Matristeki satır ve sütun sayısını bulmak için dim() işlevini kullanın:

bu_matris <- matrix(c("elma", "muz", "kiraz", "portakal"), nrow = 2, ncol = 2)
dim(bu_matris)

# Matris Uzunluğu
# Bir Matrisin boyutunu bulmak için length() işlevini kullanın:

bu_matris <- matrix(c("elma", "muz", "kiraz", "portakal"), nrow = 2, ncol = 2)
length(bu_matris)

# Matristeki toplam hücre sayısı, satır sayısı ile sütun sayısının çarpımıdır.
# Yukarıdaki örnekte: Boyut = 2*2 = 4.

# Bir Matris Üzerinde Döngü İşlemi
# Bir Matris üzerinde for döngüsü kullanarak döngü yapabilirsiniz. Döngü, ilk satırdan başlayarak sağa doğru hareket edecektir:

# Matris öğeleri üzerinde döngü yapın ve yazdırın:
  
bu_matris <- matrix(c("elma", "muz", "kiraz", "portakal"), nrow = 2, ncol = 2)
for (satırlar in 1:nrow(bu_matris)) {
  for (sütunlar in 1:ncol(bu_matris)) {
    print(bu_matris[satırlar, sütunlar])
  }
}

# İki Matrisi Birleştirme
# Yine, iki veya daha fazla matrisi birleştirmek için rbind() veya cbind() işlevlerini kullanabilirsiniz:

## Matrisleri birleştir
Matris1 <- matrix(c("elma", "muz", "kiraz", "üzüm"), nrow = 2, ncol = 2)
Matris2 <- matrix(c("portakal", "mango", "ananas", "karpuz"), nrow = 2, ncol = 2)
## Satır olarak ekleyerek
Birleştirilmiş_Matris <- rbind(Matris1, Matris2)
Birleştirilmiş_Matris
## Sütun olarak ekleyerek
Birleştirilmiş_Matris <- cbind(Matris1, Matris2)
Birleştirilmiş_Matris

# Arraylar
# Matrislere kıyasla, arraylar birden fazla boyuta sahip olabilir.
# Bir array oluşturmak için array() işlevini kullanabilir ve boyutları belirtmek için dim parametresini kullanabiliriz:

## 1'den 24'e kadar değerler içeren tek boyutlu bir array
bu_array <- c(1:24)
bu_array
## Birden fazla boyutu olan bir array
coklu_array <- array(bu_array, dim = c(4, 3, 2))
coklu_array

# Örnek Açıklaması
# Yukarıdaki örnekte, 1'den 24'e kadar değerleri içeren bir array oluşturuyoruz.
# dim=c(4,3,2) nasıl çalışır?
# Parantez içindeki ilk ve ikinci sayı, satır ve sütun sayısını belirtir.
# Parantez içindeki son sayı, kaç boyut istediğimizi belirtir.
# Not: Arraylar yalnızca bir veri türüne sahip olabilir.

# Array Öğelerine Erişme
# Array öğelerine [] parantezleri kullanarak indeks konumuna başvurarak erişebilirsiniz:

bu_array <- c(1:24)
coklu_array <- array(bu_array, dim = c(4, 3, 2))
coklu_array[2, 3, 2]

# Sözdizimi şu şekildedir: array[satır konumu, sütun konumu, matris seviyesi]

# Ayrıca, bir arraydaki matrisin tamamına erişmek için c() işlevini kullanarak bir satır veya sütuna da erişebilirsiniz:

bu_array <- c(1:24)
## İlk matristeki ilk satırdaki tüm öğelere erişme
coklu_array <- array(bu_array, dim = c(4, 3, 2))
coklu_array[c(1),,1]
## İlk matristeki ilk sütundaki tüm öğelere erişme
coklu_array <- array(bu_array, dim = c(4, 3, 2))
coklu_array[,c(1),1]

# c() öncesindeki virgül (,) sütuna erişmek istediğimizi ifade eder.
# c() sonrasındaki virgül (,) satıra erişmek istediğimizi ifade eder.

# Bir Öğenin Varlığını Kontrol Etme
# Belirtilen bir öğenin bir arrayde bulunup bulunmadığını öğrenmek için %in% operatörünü kullanın:

# Değeri "2" olan öğenin arrayde bulunup bulunmadığını kontrol edin:

bu_array <- c(1:24)
coklu_array <- array(bu_array, dim = c(4, 3, 2))
2 %in% coklu_array

# Satır ve Sütun Sayısı
# Bir arraydeki satır ve sütun sayısını bulmak için dim() işlevini kullanın:

bu_array <- c(1:24)
coklu_array <- array(bu_array, dim = c(4, 3, 2))
dim(coklu_array)

# Array Uzunluğu
# Bir arrayin boyutunu bulmak için length() işlevini kullanın:

bu_array <- c(1:24)
coklu_array <- array(bu_array, dim = c(4, 3, 2))
length(coklu_array)

# Array Üzerinde Döngü İşlemi
# Array öğeleri üzerinde döngü yapmak için for döngüsünü kullanabilirsiniz:

bu_array <- c(1:24)
coklu_array <- array(bu_array, dim = c(4, 3, 2))
for(x in coklu_array){
  print(x)
}

# Veri Çerçeveleri
# Veri çerçeveleri, bir tablo şeklinde gösterilen verilerdir.
# Veri çerçevelerinde farklı türde veriler bulunabilir. İlk sütun karakter olabilirken, ikinci ve üçüncü sütunlar sayısal veya mantıksal olabilir. Ancak her sütunun aynı veri türünde olması gerekmektedir.
# Veri çerçevesi oluşturmak için data.frame() işlevini kullanabilirsiniz:

##Bir veri çerçevesi oluştur
Veri_Cercevesi <- data.frame(
  Eğitim = c("Güç", "Dayanıklılık", "Diğer"),
  Nabız = c(100, 150, 120),
  Süre = c(60, 30, 45)
)

## Veri çerçevesini yazdır
Veri_Cercevesi

# Verileri Özetleme
# Veri çerçevesindeki verileri özetlemek için summary() işlevini kullanabilirsiniz:

Veri_Cercevesi <- data.frame(
  Eğitim = c("Güç", "Dayanıklılık", "Diğer"),
  Nabız = c(100, 150, 120),
  Süre = c(60, 30, 45)
)
Veri_Cercevesi
summary(Veri_Cercevesi)

# summary() işlevini R öğreticinin istatistiksel bölümünde daha fazla öğreneceksiniz.

# Öğelere Erişme
# Bir veri çerçevesinden sütunlara erişmek için tek köşeli parantez [ ], çift köşeli parantez [[ ]] veya $ işaretini kullanabiliriz:

Veri_Cercevesi <- data.frame(
  Eğitim = c("Güç", "Dayanıklılık", "Diğer"),
  Nabız = c(100, 150, 120),
  Süre = c(60, 30, 45)
)
Veri_Cercevesi[1]
Veri_Cercevesi[["Eğitim"]]
Veri_Cercevesi$Eğitim

# Satırları Ekleme
# Yeni satırlar eklemek için rbind() işlevini kullanabilirsiniz:

Veri_Cercevesi <- data.frame(
  Eğitim = c("Güç", "Dayanıklılık", "Diğer"),
  Nabız = c(100, 150, 120),
  Süre = c(60, 30, 45)
)
## Yeni bir satır ekle
Yeni_Satır_VC <- rbind(Veri_Cercevesi, c("Güç", 110, 110))
## Yeni satırı yazdır
Yeni_Satır_VC

# Sütunlar Ekleme
# Yeni sütunlar eklemek için cbind() işlevini kullanabilirsiniz:

Veri_Cercevesi <- data.frame(
  Eğitim = c("Güç", "Dayanıklılık", "Diğer"),
  Nabız = c(100, 150, 120),
  Süre = c(60, 30, 45)
)
## Yeni bir sütun ekle
Yeni_Sutun_VC <- cbind(Veri_Cercevesi, Adımlar = c(1000, 6000, 2000))
## Yeni sütunu yazdır
Yeni_Sutun_VC

# Satır ve Sütunları Kaldırma
# Satır ve sütunları kaldırmak için c() işlevini kullanabilirsiniz:

Veri_Cercevesi <- data.frame(
  Eğitim = c("Güç", "Dayanıklılık", "Diğer"),
  Nabız = c(100, 150, 120),
  Süre = c(60, 30, 45)
)
## İlk satırı ve sütunu kaldır
Yeni_VC <- Veri_Cercevesi[-c(1), -c(1)]
## Yeni veri çerçevesini yazdır
Yeni_VC

# Satır ve Sütun Sayısı
# Satır ve sütun sayısını bulmak için dim() işlevini kullanabilirsiniz:

Veri_Cercevesi <- data.frame(
  Eğitim = c("Güç", "Dayanıklılık", "Diğer"),
  Nabız = c(100, 150, 120),
  Süre = c(60, 30, 45)
)
dim(Veri_Cercevesi)

# Ayrıca ncol() işlevini sütun sayısını bulmak için ve nrow() işlevini satır sayısını bulmak için kullanabilirsiniz:

Veri_Cercevesi <- data.frame(
  Eğitim = c("Güç", "Dayanıklılık", "Diğer"),
  Nabız = c(100, 150, 120),
  Süre = c(60, 30, 45)
)
ncol(Veri_Cercevesi)
nrow(Veri_Cercevesi)

# Veri Çerçevesi Uzunluğu
# Veri çerçevesindeki sütun sayısını bulmak için (ncol() ile benzer şekilde) length() işlevini kullanabilirsiniz:

Veri_Cercevesi <- data.frame(
  Eğitim = c("Güç", "Dayanıklılık", "Diğer"),
  Nabız = c(100, 150, 120),
  Süre = c(60, 30, 45)
)
length(Veri_Cercevesi)

# Veri Çerçevelerini Birleştirme
# R'de iki veya daha fazla veri çerçevesini dikey olarak birleştirmek için rbind() işlevini kullanabilirsiniz:

Veri_Cercevesi1 <- data.frame(
  Eğitim = c("Güç", "Dayanıklılık", "Diğer"),
  Nabız = c(100, 150, 120),
  Süre = c(60, 30, 45)
)
Veri_Cercevesi2 <- data.frame(
  Eğitim = c("Dayanıklılık", "Dayanıklılık", "Güç"),
  Nabız = c(140, 150, 160),
  Süre = c(30, 30, 20)
)
Yeni_Veri_Cercevesi <- rbind(Veri_Cercevesi1, Veri_Cercevesi2)
Yeni_Veri_Cercevesi

# Ve iki veya daha fazla veri çerçevesini yatay olarak birleştirmek için cbind() işlevini kullanabilirsiniz:

Veri_Cercevesi3 <- data.frame(
  Eğitim = c("Güç", "Dayanıklılık", "Diğer"),
  Nabız = c(100, 150, 120),
  Süre = c(60, 30, 45)
)
Veri_Cercevesi4 <- data.frame(
  Adımlar = c(3000, 6000, 2000),
  Kaloriler = c(300, 400, 300)
)
Yeni_Veri_Cercevesi1 <- cbind(Veri_Cercevesi3, Veri_Cercevesi4)
Yeni_Veri_Cercevesi1

# Faktörler
# Faktörler, verileri kategorilere ayırmak için kullanılır. Faktör örnekleri şunlardır:
  
# Demografi: Erkek/Kadın
# Müzik: Rock, Pop, Klasik, Caz
# Antrenman: Güç, Dayanıklılık
# 
# Bir faktör oluşturmak için, factor() işlevini kullanın ve bir vektörü argüman olarak ekleyin:

## Faktör oluşturma
müzik_türü <- factor(c("Caz", "Rock", "Klasik", "Klasik", "Pop", "Caz", "Rock", "Caz"))
## Faktörü yazdırma
müzik_türü

# Sonuç:
#   [1] Caz     Rock    Klasik  Klasik  Pop     Caz     Rock    Caz    
#   Levels: Caz Klasik Pop Rock

# Yukarıdaki örnekte, faktörün dört seviyesi (kategorisi) olduğunu görebilirsiniz: Klasik, Caz, Pop ve Rock.
# Yalnızca seviyeleri yazdırmak için levels() işlevini kullanın:

müzik_türü <- factor(c("Caz", "Rock", "Klasik", "Klasik", "Pop", "Caz", "Rock", "Caz"))
levels(müzik_türü)

# Sonuç:
#   [1] "Klasik" "Caz"    "Pop"    "Rock"   
#   Seviyeleri de belirleyebilirsiniz, bunun için factor() işlevi içinde levels argümanını ekleyin:

müzik_türü <- factor(c("Caz", "Rock", "Klasik", "Klasik", "Pop", "Caz", "Rock", "Caz"), levels = c("Klasik", "Caz", "Pop", "Rock", "Diğer"))
levels(müzik_türü)

# Sonuç:
#   [1] "Klasik" "Caz"    "Pop"    "Rock"   "Diğer"  

# Faktör Uzunluğu
# Faktörde kaç öğe olduğunu bulmak için length() işlevini kullanın:

müzik_türü <- factor(c("Caz", "Rock", "Klasik", "Klasik", "Pop", "Caz", "Rock", "Caz"))
length(müzik_türü)

# Sonuç:
#   [1] 8

# Faktörlere Erişim
# Faktördeki öğelere erişmek için [] köşeli parantezlerini kullanarak indeks numarasını belirtin:

# Üçüncü öğeye erişin:
  
müzik_türü <- factor(c("Caz", "Rock", "Klasik", "Klasik", "Pop", "Caz", "Rock", "Caz"))
müzik_türü[3]

# Sonuç:
#   [1] Klasik
#   Levels: Klasik Caz Pop Rock

# Öğenin değerini değiştirme
# Belirli bir öğenin değerini değiştirmek için indeks numarasına başvurun:

# Üçüncü öğenin değerini değiştirin:
müzik_türü <- factor(c("Caz", "Rock", "Klasik", "Klasik", "Pop", "Caz", "Rock", "Caz"))
müzik_türü[3] <- "Pop"
müzik_türü[3]

# Sonuç:
#   [1] Pop
#   Levels: Klasik Caz Pop Rock

# Dikkat edin, eğer belirli bir öğenin değeri zaten faktörde tanımlanmamışsa değiştiremezsiniz. Aşağıdaki örnek hata verecektir:

# Tanımlanmamış/belirlenmemiş bir öğe olan üçüncü öğenin ("Klasik") değerini değiştirmeye çalışmak:
  
müzik_türü <- factor(c("Caz", "Rock", "Klasik", "Klasik", "Pop", "Caz", "Rock", "Caz"))
müzik_türü[3] <- "Opera"
müzik_türü[3]

# Sonuç:
#   Uyarı mesajı:
#   In `[<-.factor`(`*tmp*`, 3, value = "Opera") :
#   invalid factor level, NA generated

# Ancak, seviyeler argümanı içinde zaten belirtildiyse işe yarayacaktır:

# Üçüncü öğenin değerini değiştirin:
  
müzik_türü <- factor(c("Caz", "Rock", "Klasik", "Klasik", "Pop", "Caz", "Rock", "Caz"), levels = c("Klasik", "Caz", "Pop", "Rock", "Opera"))
müzik_türü[3] <- "Opera"
müzik_türü[3]

# Sonuç:
#   [1] Opera
#   Levels: Klasik Caz Pop Rock Opera



