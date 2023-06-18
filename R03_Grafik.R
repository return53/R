# R Çizimleri (R Plotting)
# Çizim
# plot() fonksiyonu, bir diyagramda noktaları (işaretçileri) çizmek için kullanılır.
# Fonksiyon, diyagramdaki noktaları belirlemek için parametre alır.
# Parametre 1, x-eksenindeki noktaları belirtir.
# Parametre 2, y-eksenindeki noktaları belirtir.
# En basit haliyle, plot() fonksiyonunu birbirine karşı iki sayıyı çizmek için kullanabilirsiniz:

# Diyagramda (1) ve (3) konumlarında bir nokta çizin:
  
plot(1, 3)
  
# Daha fazla nokta çizmek için vektörleri kullanabilirsiniz:

# Diyagramda (1, 3) konumunda bir nokta ve (8, 10) konumunda bir nokta çizin:
  
plot(c(1, 8), c(3, 10))

# Birden Fazla Nokta
# İstediğiniz kadar çok nokta çizebilirsiniz, sadece her iki eksende de aynı sayıda noktaya sahip olduğunuzdan emin olun:

plot(c(1, 2, 3, 4, 5), c(3, 7, 8, 9, 12))

# Daha iyi bir düzen için; birçok değere sahipseniz, değişkenleri kullanmanız daha iyidir:

x <- c(1, 2, 3, 4, 5)
y <- c(3, 7, 8, 9, 12)

plot(x, y)

# Nokta Dizileri
# Eğer bir dizi içinde noktaları, hem x-ekseninde hem de y-ekseninde çizmek isterseniz, : operatörünü kullanın:

plot(1:10)

# Bir Çizgi Çizin
# plot() fonksiyonu ayrıca tüm noktaları diyagramda birleştirmek için l değerini alan bir type parametresi alır:

plot(1:10, type="l")

# Çizim Etiketleri
# plot() fonksiyonu ayrıca main, xlab ve ylab gibi diğer parametreleri de kabul eder. Bu şekilde grafik üzerinde başlık ve x ve y-ekseni için farklı etiketlerle özelleştirme yapabilirsiniz:

plot(1:10, main="Grafik", xlab="x-ekseni", ylab="y-ekseni")

# Grafik Görünümü
# Noktaların görünümünü değiştirmek için kullanabileceğiniz birçok başka parametre bulunmaktadır.

# Renkler
# col="renk" kullanarak noktalara renk ekleyin:

plot(1:10, col="kırmızı")

# Boyut
# cex=number kullanarak noktaların boyutunu değiştirin (varsayılan 1 iken, 0.5 %50 daha küçük anlamına gelir ve 2 %100 daha büyük anlamına gelir):

plot(1:10, cex=2)

# Nokta Şekli
# Nokta şekil formatını değiştirmek için pch değerini 0 ile 25 arasında bir değerle kullanın:

plot(1:10, pch=25, cex=2)

# pch parametresinin değerleri 0 ile 25 arasında değişir, bu da 26 farklı nokta şekli türü seçebileceğimiz anlamına gelir:

# R Çizgi (R Line)
# Çizgi Grafikleri
# Çizgi grafiği, bir diyagramdaki tüm noktaları birleştiren bir çizgiye sahiptir.
# Bir çizgi oluşturmak için, plot() fonksiyonunu kullanın ve type parametresini "l" olarak ayarlayın:

plot(1:10, type="l")

# Çizgi Rengi
# Çizgi rengi varsayılan olarak siyahtır. Rengi değiştirmek için col parametresini kullanın:

plot(1:10, type="l", col="blue")

# Çizgi Kalınlığı
# Çizginin kalınlığını değiştirmek için lwd parametresini kullanın (1 varsayılan değerdir, 0.5 %50 daha küçük anlamına gelir ve 2 %100 daha büyük anlamına gelir):

plot(1:10, type="l", lwd=2)

# Çizgi Stilleri
# Çizgi varsayılan olarak düzdür. Çizgi formatını belirtmek için lty parametresini 0 ile 6 arasındaki bir değerle kullanın.

# Örneğin, lty=3, düz bir çizgi yerine noktalı bir çizgi görüntüler:

plot(1:10, type="l", lwd=5, lty=3)

# lty için kullanılabilen parametre değerleri:
# 0 çizgiyi kaldırır
# 1 düz bir çizgi görüntüler
# 2 kesikli bir çizgi görüntüler
# 3 noktalı bir çizgi görüntüler
# 4 "nokta-kesikli" bir çizgi görüntüler
# 5 "uzun kesikli" bir çizgi görüntüler
# 6 "iki kesikli" bir çizgi görüntüler

# Birden Fazla Çizgi

satir1 <- c(1,2,3,4,5,10)
satir2 <- c(2,5,7,8,9,10)

plot(satir1, type = "l", col = "blue")
lines(satir2, type="l", col = "red")

# R Dağılım Grafikleri (Scatter Plot)
# Dağılım Grafikleri
# Çizim bölümünden öğrendiniz ki plot() fonksiyonu, sayıları birbirine karşı çizmek için kullanılır.
# "Bir dağılım grafiği", iki sayısal değişken arasındaki ilişkiyi göstermek için kullanılan bir grafik türüdür ve her gözlem için bir nokta çizer.
# Bu, aynı uzunlukta iki vektöre ihtiyaç duyar, biri x-ekseni (yatay) ve biri y-ekseni (dikey) için:

x <- c(5,7,8,7,2,2,9,4,11,12,9,6)
y <- c(99,86,87,88,111,103,87,94,78,77,85,86)

plot(x, y)

# Yukarıdaki örnekteki gözlem, geçen 12 aracın sonucunu göstermelidir.
# Bu, grafikleri ilk kez gören biri için net olmayabilir, bu yüzden dağılım grafiğini daha iyi açıklamak için bir başlık ve farklı etiketler ekleyelim:

x <- c(5,7,8,7,2,2,9,4,11,12,9,6)
y <- c(99,86,87,88,111,103,87,94,78,77,85,86)

plot(x, y, main="Araç Gözlemi", xlab="Araç yaşı", ylab="Araç hızı")

# Özetlemek gerekirse, yukarıdaki örnekteki gözlem, geçen 12 aracın sonucudur.
# X-ekseni aracın ne kadar eski olduğunu gösterir.
# Y-ekseni aracın geçerkenki hızını gösterir.
# Gözlemler arasında herhangi bir ilişki var mı?
# Yeni arabaların daha hızlı gittiği gibi görünüyor, ancak bu bir tesadüf olabilir, sonuçta yalnızca 12 araba kaydetmişiz.

# Grafikleri Karşılaştırma
# Yukarıdaki örnekte, araç hızı ile araç yaş arasında bir ilişki olduğu görünüyor, ancak başka bir günden gelen gözlemleri de çizimlerle karşılaştırırsak, dağılım grafiği bize başka bir şey anlatacak mı?
# Karşılaştırma için plot() fonksiyonunu points() fonksiyonuyla birlikte kullanın:
# Aynı şekilde iki çizimi aynı grafik üzerinde çizin:
  
# Birinci gün, 12 aracın yaşı ve hızı:
x1 <- c(5,7,8,7,2,2,9,4,11,12,9,6)
y1 <- c(99,86,87,88,111,103,87,94,78,77,85,86)

# İkinci gün, 15 aracın yaşı ve hızı:
x2 <- c(2,2,8,1,15,8,12,9,7,3,11,4,7,14,12)
y2 <- c(100,105,84,105,90,99,90,95,94,100,79,112,91,80,85)

plot(x1, y1, main="Araç Gözlemi", xlab="Araç yaşı", ylab="Araç hızı", col="red", cex=2)
points(x2, y2, col="blue", cex=2)

# Not: Karşılaştırmanın farkını görebilmek için, çizimlere farklı renkler atamanız gerekir (col parametresini kullanarak). Kırmızı, birinci günün değerlerini temsil ederken, mavi ikinci günü temsil eder. Noktaların boyutunu artırmak için cex parametresini de ekledik.
# Gözlem sonucu: İki çizimi karşılaştırarak, her iki çizimin de bize aynı sonucu verdiğini söyleyebilirim: Araç ne kadar yeni ise o kadar hızlı sürüyor.

# R Daire Grafikleri (Pie Charts)
# Daire Grafikleri
# Daire grafiği, verilerin daire şeklinde grafiksel bir görünümüdür.
# Daire grafikleri çizmek için pie() fonksiyonunu kullanın:

# Bir daire vektörü oluştur
x <- c(10,20,30,40)
# Daire grafiğini görüntüle
pie(x)

# Örneğin açıklaması
# Görüldüğü gibi, daire grafiği, vektördeki her değer için bir daire çizer (bu durumda 10, 20, 30, 40).
# Varsayılan olarak, ilk dairenin çizimi x-ekseninden başlar ve saat yönünün tersine doğru hareket eder.

# Not: Her dairenin boyutu, değeri diğer tüm değerlerle karşılaştırarak şu formülü kullanarak belirlenir:
# Değer, tüm değerlerin toplamına bölünmüş hali: x/sum(x)

# Başlangıç Açısı
# init.angle parametresini kullanarak daire grafiğinin başlangıç açısını değiştirebilirsiniz.
# init.angle değeri, varsayılan olarak 0 olan açıyla belirlenir.

# İlk daireyi 90 derecede başlatın:
  
# Bir daire vektörü oluştur
x <- c(10,20,30,40)
# Daire grafiğini görüntüle ve ilk daireyi 90 derecede başlat
pie(x, init.angle = 90)

# Etiketler ve Başlık
# Daire grafiğine bir etiket eklemek için label parametresini, başlık eklemek için main parametresini kullanın:

# Bir daire vektörü oluştur
x <- c(10,20,30,40)
# Bir etiket vektörü oluştur
mylabel <- c("Elma", "Muz", "Kiraz", "Hurma")
# Etiketli daire grafiğini görüntüle
pie(x, label = mylabel, main = "Meyveler")

# Renkler
# Her daireye bir renk eklemek için col parametresini kullanabilirsiniz:
  
# Bir renk vektörü oluştur
colors <- c("mavi", "sarı", "yeşil", "siyah")
# Renkli daire grafiğini görüntüle
pie(x, label = mylabel, main = "Meyveler", col = colors)

# Açıklama Kutusu
# Her bir daire için bir açıklama listesi eklemek için legend() fonksiyonunu kullanın:

# Bir etiket vektörü oluştur
mylabel <- c("Elma", "Muz", "Kiraz", "Hurma")
# Bir renk vektörü oluştur
colors <- c("blue", "yellow", "green", "black")
# Renkli daire grafiğini görüntüle
pie(x, label =mylabel, main = "Daire Grafiği", col = colors)
# Açıklama kutusunu görüntüle
legend("bottomright", mylabel, fill = colors)

# Açıklama kutusu aşağıdaki konumlardan biri olarak ayarlanabilir:
# bottomright, bottom, bottomleft, left, topleft, top, topright, right, center

# R Bar Grafikleri (Bar Charts)
# Bar Grafikleri
# Bar grafikleri, verileri görselleştirmek için dikdörtgen çubuklar kullanır. Bar grafiklerini yatay veya dikey olarak gösterebilirsiniz. Çubukların yüksekliği veya uzunluğu temsil ettikleri değerlere orantılıdır.
# Dikey bir bar grafiği çizmek için barplot() fonksiyonunu kullanın:

# x-ekseni değerleri
x <- c("A", "B", "C", "D")
# y-ekseni değerleri
y <- c(2, 4, 6, 8)
barplot(y, names.arg = x)

# Örneğin açıklaması
# x değişkeni x-eksenindeki değerleri temsil eder (A, B, C, D).
# y değişkeni y-eksenindeki değerleri temsil eder (2, 4, 6, 8).
# Ardından, barplot() fonksiyonunu kullanarak değerlerin bar grafiğini oluştururuz.
# names.arg, x-eksenindeki her gözlem için adları belirler.

# Çubuk Rengi
# Çubukların rengini değiştirmek için col parametresini kullanın:

x <- c("A", "B", "C", "D")
y <- c(2, 4, 6, 8)
barplot(y, names.arg = x, col = "red")

# Yoğunluk / Çubuk Dokusu
# Çubuk dokusunu değiştirmek için density parametresini kullanın:

x <- c("A", "B", "C", "D")
y <- c(2, 4, 6, 8)
barplot(y, names.arg = x, density = 10)

# Çubuk Genişliği
# Çubukların genişliğini değiştirmek için width parametresini kullanın:

x <- c("A", "B", "C", "D")
y <- c(2, 4, 6, 8)

barplot(y, names.arg = x, width = c(1,2,3,4))

# Yatay Çubuklar
# Çubukların dikey olarak değil de yatay olarak gösterilmesini isterseniz, horiz=TRUE kullanın:

x <- c("A", "B", "C", "D")
y <- c(2, 4, 6, 8)
barplot(y, names.arg = x, horiz = TRUE)