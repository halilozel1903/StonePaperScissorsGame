# Taş Kağıt Makas Oyunu 

![Screenshot](taskagitmakas.jpg)

## Projenin Amacı

Taş Kağıt Makas oyunu Swift-4 ile geliştirilmiş bir iOS uygulamasıdır. Amaç kullanıcıya iOS uygulamalarda da basit bir şekilde
oyun nasıl yapılır onu göstermektir. Arkadaşlar her türlü eleştiri ve desteğe açığım :smile:

## Projenin İçeriği
Swift-4 ile geliştirilen bir projedir. Button,Image,Label gibi bileşenlerin kullanımlarını öğreneceksiniz. <br>

## Oyun Nasıl Oynanır ?
Oyunda bir kullanıcı ve karşısında bilgisayar olmak üzere 2 yarışmacı bulunmaktadır. Bizim seçimimize göre rakibimiz rastgele
bir seçenek sunarak bize karşı alacağı sonucu bekler. Eğer bizden iyi bir eleman kullanırsa 1 puan alır. Biz galip gelirsek
bizim puanımız 1 artar. Eşitse ise herhangibir şey değişmeden oyuna devam edilir. Yapıların birbirlerine göre durumları
aşağıdaki gibidir : 

1. Taş - Kağıt : Kağıt 
2. Taş - Makas : Taş
3. Taş - Taş   : Berabere
4. Kağıt - Kağıt : Berabere 
5. Kağıt - Makas : Makas
6. Kağıt - Taş   : Kağıt
7. Makas - Kağıt : Makas 
8. Makas - Makas : Berabere
9. Makas - Taş   : Taş

 <br>

## Ekran Tasarımı

<p>
  <img src="pic1.png" width="300" >
</p>

Ekran tasarımında çeşitli yapıları kullandık. 3 adet buton kullanıldı. Diğer kalan yapılar ise label elemanıdır. 
Kazanılma ya da kaybedilme durumlarında değerlerin güncellendiği alanlarla label ile tasarlandı.
Butonların arka planında kullanılan resimleri aşağıdaki dosyada bulabilirsiniz : 

https://github.com/halilozel1903/StonePaperScissorsGame/tree/master/TasKagitMakas/TasKagitMakas/Assets.xcassets

Tasarlanan kodları artık ViewController.swift dosyasında bağlıyoruz : 

```java 
  // MARK: - Variables 
  // MARK: - IBOutlets
  // MARK: - IBActions
```
 şeklinde yeni bir kullanım tarzı ile yazmış olduğumuz kodları düzenliyoruz. Tanımlanan yapıları değişkenker, tanımlamalar
 ve buton işlemleri olmak üzere 3 çeşit kategoriye ayırdık. Aşağıdaki gibi kolay şekilde proje içerisinde gezinebileceğiz : 
 
 <p>
  <img src="Screen%20Shot%202018-07-22%20at%2011.27.02%20PM.png" >
</p>


