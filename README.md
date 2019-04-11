# Taş Kağıt Makas Oyunu 

![Screenshot](taskagitmakas.jpg)

## Projenin Amacı

Taş Kağıt Makas oyunu Swift-5 ile geliştirilmiş bir iOS uygulamasıdır.
Amaç kullanıcıya iOS uygulamalarda da basit bir şekildeoyun nasıl yapılır onu göstermektir.

## Projenin İçeriği
Swift-5 ile geliştirilen bir projedir. Button,Image,Label gibi bileşenlerin kullanımlarını öğreneceksiniz. <br>

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

<br>

## Kodların Yazılması


```swift 
// MARK: - Variables
    var myPoints = 0
    var pcPoints = 0
    let array = ["tas","kagit","makas"] // string türde bir dizi oluşturuldu.
```
Kullanıcının puanını ve bilgisayarın puanını tutmak için 2 adet değişken tanımlandı. İlk değerlerine 0 atandı.
String türde bir array tanımlandı. Array içine oyunda kullanılan seçenekler eklendi.

<br>

```swift 
 // MARK: - IBOutlets
    @IBOutlet weak var myChoiseLabel: UILabel!
    @IBOutlet weak var pcChoiseLabel: UILabel!
    @IBOutlet weak var theEndLabel: UILabel!
    @IBOutlet weak var myPointsLabel: UILabel!
    @IBOutlet weak var pcPointsLabel: UILabel!
```

Tasarımda bulunan Labelları kodla tanımladık. Kullanıcının ve bilgisayarın elde ettiği puanları gösteren labellar,
kazanan kim onu belirten label'ı ve toplam sonuca göre kimin kazandığını açıklayan label tanımı yapılmıştır.

<br>

Sıra geldi butonlara tıklanınca oluşacak işlemleri tanımlamaya 3 adet metod yazacağız. Bunların işlevleri benzerdir.
```swift 
@IBAction func rockSelected(_ sender: Any) {
        
        let randomSelected = Int(arc4random_uniform(3)) // 0,1,2
        let pcSelected = array[randomSelected] // dizinin içerisinden rastgele eleman alınacak.
        
        if pcSelected == "tas" {
            myChoiseLabel.text = "Sizin seçiminiz : Taş"
            pcChoiseLabel.text = "Bilgisayarın seçimi : Taş"
            theEndLabel.text = "Berabere Kaldınız."
            
            
        }else if pcSelected == "kagit" {
            myChoiseLabel.text = "Sizin seçiminiz : Taş"
            pcChoiseLabel.text = "Bilgisayarın seçimi : Kağıt"
            theEndLabel.text = "Bilgisayar Kazandı."
            
            pcPoints += 1
            
            pcPointsLabel.text = String(pcPoints)
            
        }else if pcSelected == "makas" {
            myChoiseLabel.text = "Sizin seçiminiz : Taş"
            pcChoiseLabel.text = "Bilgisayarın seçimi : Makas"
            theEndLabel.text = "Siz Kazandınız."
            
            myPoints += 1
            
            myPointsLabel.text = String(myPoints)
            
        }
    }
```

Rastgele sayı üreten fonksiyonu kullanarak 0-2 arasında rastgele bir sayı üretiyoruz. Üretilen bu değer array değerine atandı.
Sonrada karşılaştırma yapılıyor. Eğer bilgisayar "taş" seçeneğini seçerse ekranda seçilen kısmında taş yazar. Sonuç olarak bizde taş seçtiğimiz için sonuç beraberliktir. Eğer biz taş ve bilgisayarda kağıt seçerse bilgisayar oyunu kazanır ve 1 puan alır. Ekranda bilgisayar kazandı şeklinde mesaj verir. Biz taş ve bilgisayar makas ise biz kazanmış oluyoruz ve puanımız 1 artıyor ve ekranda siz kazandınız yazıyor.

 <br>

```swift 

 // kağıt ile ilgili işlemler
    @IBAction func paperSelected(_ sender: Any) {
        
        let randomSelected = Int(arc4random_uniform(3)) // 0,1,2
        let pcSelected = array[randomSelected] // dizinin içerisinden rastgele eleman alınacak.
        
        if pcSelected == "tas" {
            myChoiseLabel.text = "Sizin seçiminiz : Kağıt"
            pcChoiseLabel.text = "Bilgisayarın seçimi : Taş"
            theEndLabel.text = "Siz kazandınız."
            
            myPoints += 1
            
            myPointsLabel.text = String(myPoints)
            
            
        }else if pcSelected == "kagit" {
            myChoiseLabel.text = "Sizin seçiminiz : Kağıt"
            pcChoiseLabel.text = "Bilgisayarın seçimi : Kağıt"
            theEndLabel.text = "Beraber Kaldınız."
            
        
            
        }else if pcSelected == "makas" {
            myChoiseLabel.text = "Sizin seçiminiz : Kağıt"
            pcChoiseLabel.text = "Bilgisayarın seçimi : Makas"
            theEndLabel.text = "Bilgisayar Kazandı."
            
            pcPoints += 1
            
            pcPointsLabel.text = String(pcPoints)
            
        }
        
    }

```

Bu sefer biz seçimlerimizde kağıt oluyoruz. Kağıt'ın diğer bileşenlere göre durumları kontrol ediliyor. Taş metoduna çok
benzeyen bu metod sadece ufak bir değişiklikle istenilen işlemleri yapmaktadır.

 <br>

```swift 

// makas ile ilgili işlemler
    @IBAction func scissorSelected(_ sender: Any) {
        
        let randomSelected = Int(arc4random_uniform(3)) // 0,1,2
        let pcSelected = array[randomSelected] // dizinin içerisinden rastgele eleman alınacak.
        
        if pcSelected == "tas" {
            myChoiseLabel.text = "Sizin seçiminiz : Makas"
            pcChoiseLabel.text = "Bilgisayarın seçimi : Taş"
            theEndLabel.text = "Bilgisayar Kazandı."
            
            pcPoints += 1
            
            pcPointsLabel.text = String(pcPoints)
            
            
        }else if pcSelected == "kagit" {
            myChoiseLabel.text = "Sizin seçiminiz : Makas"
            pcChoiseLabel.text = "Bilgisayarın seçimi : Kağıt"
            theEndLabel.text = "Siz Kazandınız."
            
            myPoints += 1
            
            myPointsLabel.text = String(myPoints)
           
            
        }else if pcSelected == "makas" {
            myChoiseLabel.text = "Sizin seçiminiz : Makas"
            pcChoiseLabel.text = "Bilgisayarın seçimi : Makas"
            theEndLabel.text = "Berabere Kaldınız."
           
            
        }
        
    }

```

En son makas ile ilgili işlemleri yapmak için bir metod oluşturduk. Eğer makas üstün gelirse bizim puanımız 1 artacak eğer
bilgisayarın değeri üstün gelirse bilgisayarın değeri 1 artacak. Eşit seçeneklere sahipsek sonuc değişmeyecek.

 <br>

## Uygulamanın Demosu


<img src="https://github.com/halilozel1903/StonePaperScissorsGame/blob/master/res1.png" width="200" />  <img src="https://github.com/halilozel1903/StonePaperScissorsGame/blob/master/res2.png" width="200" />  <img src="https://github.com/halilozel1903/StonePaperScissorsGame/blob/master/res3.png" width="200" />

  <img src="res4.png" width="200" />  <img src="res5.png" width="200" /> <img src="res6.png" width="200" />

 <br>
 
 ## NOT
 
 Bu proje açık kaynak(open source) kodlu bir projedir. <br>
 Elimden geldiğince birşeyler yapmaya çalışıyorum.<br>
 Eksik veya hatalı gördüğünüz kısımları düzeltebilirsiniz.<br>
 Eklemeler yaparak bu projeyi daha da büyük hale getirebiliriz. <br>
 Desteklerinizi bekliyorum :)

 


