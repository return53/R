# R İstatistikleri
# İstatistik, verileri analiz etmek, incelemek ve sonuç çıkarmak için kullanılan bir bilimdir.

# Bazı temel istatistiksel değerler şunları içerir:
# Ortalama, medyan ve mod (Mean, median and mode)
# Minimum ve maksimum değer
# Yüzdelikler (Percentiles)
# Varyans ve Standart Sapma
# Kovaryans ve Korelasyon
# Olasılık dağılımları

# R dili, iki istatistikçi tarafından geliştirilmiştir. İstatistiksel analiz amacıyla kullanılan kütüphanelerin yanı sıra birçok yerleşik işlevselliği vardır.
# Bu özellikleri ve nasıl kullanılacaklarını bir sonraki bölümlerde öğreneceksiniz.
# İpucu: Eğer istatistik konusunda tamamen yeniyseniz ve daha fazla bilgi edinmek istiyorsanız, İstatistik Öğreticimize göz atabilirsiniz.

# R Veri Seti (Data Set)
# Bir veri seti, genellikle bir tabloda sunulan verilerin bir koleksiyonudur.
# R'de "mtcars" (Motor Trend Car Road Tests) adında popüler bir dahili veri seti bulunmaktadır. Bu veri seti, 1974 Motor Trend US Dergisi'nden alınmıştır.
# Aşağıdaki örneklerde (ve sonraki bölümlerde) istatistiksel amaçlarla mtcars veri setini kullanacağız:

# mtcars veri setini yazdır
mtcars

Çıktı:
#                      mpg cyl  disp  hp drat    wt  qsec vs am gear carb
# Mazda RX4           21.0   6 160.0 110 3.90 2.620 16.46  0  1    4    4
# Mazda RX4 Wag       21.0   6 160.0 110 3.90 2.875 17.02  0  1    4    4
# Datsun 710          22.8   4 108.0  93 3.85 2.320 18.61  1  1    4    1
# Hornet 4 Drive      21.4   6 258.0 110 3.08 3.215 19.44  1  0    3    1
# Hornet Sportabout   18.7   8 360.0 175 3.15 3.440 17.02  0  0    3    2
# Valiant             18.1   6 225.0 105 2.76 3.460 20.22  1  0    3    1
# Duster 360          14.3   8 360.0 245 3.21 3.570 15.84  0  0    3    4
# Merc 240D           24.4   4 146.7  62 3.69 3.190 20.00  1  0    4    2
# Merc 230            22.8   4 140.8  95 3.92 3.150 22.90  1  0    4    2
# Merc 280            19.2   6 167.6 123 3.92 3.440 18.30  1  0    4    4
# Merc 280C           17.8   6 167.6 123 3.92 3.440 18.90  1  0    4    4
# Merc 450SE          16.4   8 275.8 180 3.07 4.070 17.40  0  0    3    3
# Merc 450SL          17.3   8 275.8 180 3.07 3.730 17.60  0  0    3    3
# Merc 450SLC         15.2   8 275.8 180 3.07 3.780 18.00  0  0    3    3
# Cadillac Fleetwood  10.4   8 472.0 205 2.93 5.250 17.98  0  0    3    4
# Lincoln Continental 10.4   8 460.0 215 3.00 5.424 17.82  0  0    3    4
# Chrysler Imperial   14.7   8 440.0 230 3.23 5.345 17.42  0  0    3    4
# Fiat 128            32.4   4  78.7  66 4.08 2.200 19.47  1  1    4    1
# Honda Civic         30.4   4  75.7  52 4.93 1.615 18.52  1  1    4    2
# Toyota Corolla      33.9   4  71.1  65 4.22 1.835 19.90  1  1    4    1
# Toyota Corona       21.5   4 120.1  97 3.70 2.465 20.01  1  0    3    1
# Dodge Challenger    15.5   8 318.0 150 2.76 3.520 16.87  0  0    3    2
# AMC Javelin         15.2   8 304.0 150 3.15 3.435 17.30  0  0    3    2
# Camaro Z28          13.3   8 350.0 245 3.73 3.840 15.41  0  0    3    4
# Pontiac Firebird    19.2   8 400.0 175 3.08 3.845 17.05  0  0    3    2
# Fiat X1-9           27.3   4  79.0  66 4.08 1.935 18.90  1  1    4    1
# Porsche 914-2       26.0   4 120.3  91 4.43 2.140 16.70  0  1    5    2
# Lotus Europa        30.4   4  95.1 113 3.77 1.513 16.90  1  1    5    2
# Ford Pantera L      15.8   8 351.0 264 4.22 3.170 14.50  0  1    5    4
# Ferrari Dino        19.7   6 145.0 175 3.62 2.770 15.50  0  1    5    6
# Maserati Bora       15.0   8 301.0 335 3.54 3.570 14.60  0  1    5    8
# Volvo 142E          21.4   4 121.0 109 4.11 2.780 18.60  1  1    4    2

# Tablo Hakkında Bilgi
# mtcars veri seti hakkında bilgi almak için soru işaretini (?) kullanabilirsiniz:
# 
# Veri seti hakkında bilgi almak için soru işaretini kullanın
?mtcars

# Bilgi Almak
# Veri setinin boyutlarını bulmak için dim() fonksiyonunu kullanın ve değişkenlerin isimlerini görmek için names() fonksiyonunu kullanın:

Data_Cars <- mtcars # daha iyi bir düzenleme için mtcars veri setinin bir değişkenini oluşturun
# Veri setinin boyutunu bulmak için dim() kullanın
dim(Data_Cars)
# Veri setinden değişkenlerin isimlerini bulmak için names() kullanın
names(Data_Cars)

# Her satırın adını, yani her arabanın adını içeren ilk sütunu kullanarak rownames() fonksiyonunu kullanın:

Data_Cars <- mtcars
rownames(Data_Cars)

# Yukarıdaki örneklerden, veri setinin 32 gözlem (Mazda RX4, Mazda RX4 Wag, Datsun 710, vb.) ve 11 değişken (mpg, cyl, disp, vb.) içerdiğini öğrendik.
# Bir değişken, ölçülebilen veya sayılabilen bir şey olarak tanımlanır.
# İşte mtcars veri setindeki değişkenlerin kısa bir açıklaması:
  
# Değişken Adı	Açıklama
# mpg	          Mil/(ABD) Galon
# cyl	          Silindir sayısı
# disp	        Hacim
# hp	          Brüt beygir gücü
# drat	        Arka aks oranı
# wt	          Ağırlık (1000 lbs)
# qsec	        1/4 mil süresi
# vs	          Motor (0 = V şeklinde, 1 = düz)
# am	          Şanzıman (0 = otomatik, 1 = manuel)
# gear	        İleri vites sayısı
# carb	        Karbüratör sayısı

# Değişken Değerlerini Yazdırma
# Bir değişkene ait tüm değerleri yazdırmak için veri çerçevesine $ işaretiyle erişebilir ve değişkenin adını kullanabilirsiniz (örneğin cyl (silindirler)):

Data_Cars <- mtcars
Data_Cars$cyl

# Değişken Değerlerini Sıralama
# Değerleri sıralamak için sort() fonksiyonunu kullanın:

Data_Cars <- mtcars
sort(Data_Cars$cyl)

# Yukarıdaki örneklerden, çoğu arabada 4 ve 8 silindir olduğunu görüyoruz.

# Veriyi Analiz Etmek
# Şimdi veri seti hakkında bazı bilgilere sahip olduğumuza göre, veriyi bazı istatistiksel değerlerle analiz etmeye başlayabiliriz.
# Örneğin, verinin istatistiksel bir özetini almak için summary() fonksiyonunu kullanabiliriz:

Data_Cars <- mtcars
summary(Data_Cars)

# Çıktıdaki sayıları anlamazsanız endişelenmeyin. Kısa bir süre içinde bunları tam anlamıyla öğreneceksiniz.
# summary() fonksiyonu her değişken için altı istatistiksel değer döndürür:
#   
# Min
# Birinci çeyrek (yüzdelik)
# Medyan
# Ortalama
# Üçüncü çeyrek (yüzdelik)
# Maks
# Bunların hepsini ve diğer istatistiksel değerleri bir sonraki bölümlerde ele alacağız.

# R Max ve Min
# En büyük ve en küçük değeri bulma
# Önceki bölümde, mtcars veri setini tanıttık. Bu veri setini bir sonraki sayfalarda da kullanmaya devam edeceğiz.
# R Matematik bölümünden öğrendiniz ki R'in birkaç dahili matematiksel işlevi bulunmaktadır. Örneğin, min() ve max() işlevleri bir kümedeki en düşük veya en yüksek değeri bulmak için kullanılabilir:

# Değişken hp (beygir gücü) için en büyük ve en küçük değeri bulun.

Data_Cars <- mtcars
max(Data_Cars$hp)
min(Data_Cars$hp)

# Şimdi, setteki en büyük beygir gücü değerinin 335 ve en düşük değerinin 52 olduğunu biliyoruz.
# Bu iki değerin hangi arabaya ait olduğunu görmek için veri setine bir göz atabiliriz:
# Tabloyu gözlemleyerek, en yüksek hp değerinin Maserati Bora'ya, en düşük değerin ise Honda Civic'e ait olduğu görülebilir.
# Ancak, bunu R'nin bizim için bulmasının çok daha kolay (ve güvenli) olduğunu söyleyebiliriz.
# Örneğin, which.max() ve which.min() işlevlerini kullanarak tablodaki en büyük ve en küçük değerin indeks konumunu bulabiliriz:

Data_Cars <- mtcars
which.max(Data_Cars$hp)
which.min(Data_Cars$hp)

# Ya da daha da iyisi, which.max() ve which.min() işlevlerini rownames() işleviyle birleştirerek en yüksek ve en düşük beygir gücüne sahip arabanın adını alabiliriz:

Data_Cars <- mtcars
rownames(Data_Cars)[which.max(Data_Cars$hp)]
rownames(Data_Cars)[which.min(Data_Cars$hp)]

# Şimdi kesin olarak biliyoruz:
# Maserati Bora en yüksek beygir gücüne sahip araba ve Honda Civic en düşük beygir gücüne sahip arabadır.

# Aykırı Değerler (Outliers)
# Max ve min ayrıca aykırı değerleri tespit etmek için de kullanılabilir. Bir aykırı değer, diğer gözlemlerden farklı olan bir veri noktasıdır.
# mtcars veri setinde aykırı değerler olabilecek veri noktası örnekleri:
#   -Eğer bir aracın ileri vites sayısı maksimum 11 olsaydı
#   -Eğer bir aracın beygir gücü minimum 0 olsaydı
#   -Eğer bir aracın ağırlığı maksimum 50.000 lbs olsaydı

# R Ortalama (Mean)
# Ortalama (Mean), Medyan (Median) ve Mod değerleri istatistikte sıklıkla ilgi duyduğumuz üç değerdir:
#   
#   -Ortalama - Ortalama değer
#   -Medyan - Orta değer
#   -Mod - En yaygın değer

# Ortalama (Mean)
# mtcars veri setinden bir değişkenin ortalama değerini hesaplamak için, tüm değerlerin toplamını bulun ve toplamı değerlerin sayısına böleceksiniz.

# Sıralanmış ağırlık (wt) gözlemi
# 1.513 1.615 1.835 1.935 2.140 2.200 2.320 2.465
# 2.620 2.770 2.780 2.875 3.150 3.170 3.190 3.215
# 3.435 3.440 3.440 3.440 3.460 3.520 3.570 3.570
# 3.730 3.780 3.840 3.845 4.070 5.250 5.345 5.424
# Neyse ki, R'deki mean() işlevi bunu sizin için yapabilir:

# Bir arabanın ortalama ağırlığını (wt) bulun:

Data_Cars <- mtcars
mean(Data_Cars$wt)

# R Medyan (Median)
# Medyan değeri, tüm değerleri sıraladıktan sonra ortada bulunan değerdir.
# Eğer wt değişkeninin (mtcars veri setinden) değerlerine bakarsak, ortada iki sayı olduğunu göreceğiz:

# Sıralanmış ağırlık (wt) gözlemi
# 1.513 1.615 1.835 1.935 2.140 2.200 2.320 2.465
# 2.620 2.770 2.780 2.875 3.150 3.170 3.190 3.215
# 3.435 3.440 3.440 3.440 3.460 3.520 3.570 3.570
# 3.730 3.780 3.840 3.845 4.070 5.250 5.345 5.424
# Not: Ortada iki sayı varsa, medyanı bulmak için bu sayıların toplamını ikiye bölmelisiniz.

# Neyse ki, R'de bunu sizin için yapan bir işlev var: Sadece median() işlevini kullanarak orta nokta değerini bulabilirsiniz:

# Ağırlığın (wt) orta nokta değerini bulun:
Data_Cars <- mtcars
median(Data_Cars$wt)

# R Mod (Mode)
# Mod değeri, en çok tekrar eden değerdir.
# R'nin modu hesaplamak için bir işlevi yoktur. Ancak, kendi işlevimizi oluşturarak bunu bulabiliriz.
# Eğer wt değişkeninin (mtcars veri setinden) değerlerine bakarsak, sıklıkla 3.440 sayısının görüldüğünü göreceğiz:

# Sıralanmış ağırlık (wt) gözlemi
# 1.513 1.615 1.835 1.935 2.140 2.200 2.320 2.465
# 2.620 2.770 2.780 2.875 3.150 3.170 3.190 3.215
# 3.435 3.440 3.440 3.440 3.460 3.520 3.570 3.570
# 3.730 3.780 3.840 3.845 4.070 5.250 5.345 5.424
# Bunu kendimiz saymak yerine, modu bulmak için aşağıdaki kodu kullanabiliriz:

Data_Cars <- mtcars
names(sort(-table(Data_Cars$wt)))[1]

# Yukarıdaki örneğe göre, mtcars wt değişkeninde en çok tekrar eden sayının 3.44 veya 3.440 lbs olduğunu artık biliyoruz.

# Yüzdelikler (Percentiles)
# Yüzdelikler istatistikte, verilerin belirli bir yüzdesinin daha düşük olduğu bir değeri size verir.
# mtcars veri setinden wt (ağırlık) değişkeninin değerlerine bir göz atarsak:
#   
# wt (ağırlık) gözlemi
# 1.513 1.615 1.835 1.935 2.140 2.200 2.320 2.465
# 2.620 2.770 2.780 2.875 3.150 3.170 3.190 3.215
# 3.435 3.440 3.440 3.440 3.460 3.520 3.570 3.570
# 3.730 3.780 3.840 3.845 4.070 5.250 5.345 5.424
# Arabaların ağırlığının yüzde 75'i kaçır? Cevap, 3.61 veya 3.610 lbs'dir, bu da arabaların %75'inin 3.610 lbs veya daha az olduğunu gösterir:

Data_Cars <- mtcars
# c() belirli yüzdeyi belirtir
quantile(Data_Cars$wt, c(0.75))

# quantile() işlevini c() parametresini belirtmeden çalıştırırsanız, 0, 25, 50, 75 ve 100 yüzdeliklerini elde edersiniz:

Data_Cars <- mtcars
quantile(Data_Cars$wt)

# Kartiller (Quartiles)
# Kartiller, verilerin artan bir sırayla sıralandığında dört parçaya ayrıldığı zaman kullanılır:
# 
#   -İlk kartil değeri, verilerin ilk %25'ini keser
#   -İkinci kartil değeri, verilerin ilk %50'sini keser
#   -Üçüncü kartil değeri, verilerin ilk %75'ini keser
#   -Dördüncü kartil değeri, verilerin %100'ünü keser
#   -Kartilleri elde etmek için quantile() işlevini kullanın.
