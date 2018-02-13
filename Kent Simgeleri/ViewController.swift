//
//  ViewController.swift
//  Kent Simgeleri
//
//  Created by Mert Ahmet Yiğit on 13.02.2018.
//  Copyright © 2018 Mert Yiğit. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var kentIsimler = [String]()
    var kentResimler = [UIImage]()
    var kentDetay = [String]()
    
    var secilenkentIsim = ""
    var secilenkentResim = UIImage()
    var secilenkentDetay = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        kentIsimler.append("Havana")
        kentIsimler.append("İstanbul")
        kentIsimler.append("Rio de Janerio")
        kentIsimler.append("Bruksel")
        kentIsimler.append("Meksico")
        kentIsimler.append("Eindhoven")
        kentIsimler.append("Munih")
        kentIsimler.append("Paris")
        kentIsimler.append("Roma")
        kentIsimler.append("Tilburg")

        
        kentResimler.append(UIImage(named: "havana.jpg")!)
        kentResimler.append(UIImage(named: "istanbul.jpg")!)
        kentResimler.append(UIImage(named: "riodejanerio.jpg")!)
        kentResimler.append(UIImage(named: "bruksel.jpg")!)
        kentResimler.append(UIImage(named: "meksico.png")!)
        kentResimler.append(UIImage(named: "eindhoven.jpg")!)
        kentResimler.append(UIImage(named: "munih.jpg")!)
        kentResimler.append(UIImage(named: "paris.jpg")!)
        kentResimler.append(UIImage(named: "roma.jpg")!)
        kentResimler.append(UIImage(named: "tilburg.jpg")!)

        kentDetay.append("Geleneksel Küba mutfağı, İspanyol, Karayip ve Afrika mutfakları karışımı. Küba’nın en bilinen ve her an her evde olan yemeği unvanını alan Congri (siyah barbunyalı beyaz pirinç pilavı) ve muz kızartması bu üç mutfağın kültürel karışımına örnek. Değişime kapalı bir toplum olan Küba gastronomi anlamında da kendini pek geliştirememiş. Bu nedenle gittiğimiz restoranların hiçbirinde büyük bir lezzet deneyimi yaşadığımızı ne yazık ki söyleyemiyorum. Yunanlı baba ve İsveçli bir annenin oğlu olan Michel Miglis’in restoranı Cafe Miglis bizi göreceli olarak mutlu eden seçeneklerden biri oluyor. İsveç, Yunan ve Küba mutfağını buluşturan menüsündeki lokal bir balık türü olan ‘Pez Perro’ ve signature kokteylleri Taze Ananaslı Daiquiri çok başarılı, restoranda yemek eşliğinde her akşam canlı caz performansı da izleyebiliyorsunuz.")
        
        kentDetay.append("İstanbul 41° K, 29° D koordinatlarında yer alır. Batıda Çatalca Yarımadası, doğuda Kocaeli Yarımadası'ndan oluşur. Kuzeyde Karadeniz, güneyde Marmara Denizi ve ortada İstanbul Boğazı'ndan oluşan kent, kuzeybatıda Tekirdağ'a bağlı Saray, batıda Tekirdağ'a bağlı Çerkezköy, Tekirdağ, Çorlu, Tekirdağ, güneybatıda Tekirdağ'a bağlı Marmara Ereğlisi, kuzeydoğuda Kocaeli'ne bağlı Kandıra, doğuda Kocaeli'ne bağlı Körfez, güneydoğuda Kocaeli'ne bağlı Gebze ilçeleri ile komşudur. İstanbul'u oluşturan yarımadalardan Çatalca Avrupa, Kocaeli ise Asya anakaralarındadır. Kentin ortasındaki İstanbul Boğazı ise bu iki kıtayı birleştirir. Boğazdaki Fatih Sultan Mehmet ve Boğaziçi Köprüleri kentin iki yakasını birbirine bağlar. İstanbul Boğazı boyunca ve Haliç'i çevreleyecek şekilde Türkiye'nin kuzeybatısında kurulmuştur.")
        
        kentDetay.append("Rio de Janeiro veya diğer bir deyişle Ocak Nehri, içinden 200 nehir geçen bir şehir için oldukça şiirsel bir isimdir. Peki, bu bahsedilen nehir hangisi?  Portekizli kâşif Gaspar de Lemos ilk kez Rio’ya ulaştığında tarih Ocak 1502’yi gösteriyordu. Efsaneye göre, Lemos bu şehir için bir isim ararken Guanabara Körfezi’nden geçiyordu ve körfezi bir nehir ağzıyla karıştırdı. Günümüzde bazı tarihçiler bu teoriye karşı çıkar ve Portekizlilerin bu hatayı yapmayacak kadar yetenekli denizciler olduklarını ve 16. yüzyılda nehir için kullanılan kelimenin aynı zamanda körfezler için de kullanıldığını savunurlar. Her şeye rağmen, Rio de Janeiro ismi günümüze kadar gelmiştir.")
        
        kentDetay.append("Brüksel tarihi Brugge ve Köln ile bağlantısı ile zaman içerisinde hızla gelişmiştir. Şehrin ilk kısmı 11. yüzyılda tamamlanmıştır. Nüfus artışı ile bu dönemde şehir duvarları yapılmıştır. Bundan kısa bir dönem sonra şehir sakinlerini korumak ve endüstrileşmeyi artırmak için ikinci bir duvar inşa edilmiştir. 12. yüzyıldan itibaren Brüksel dünya tarih sahnesinde yer alan önemli bir kent olmaya başlamıştır. Brabant Dükü’nün Brüksel’i başkent yapmasının ardından şehrin yükselişi neredeyse 3 yüzyıl devam etmiştir. Bu dönemde en çok gelişen alanlardan biri ticarettir. Brüksel tarihinde ticaretin en canlı olduğu dönemlerden biri bu günlerdir. Paris ve Venedik gibi Avrupa devi şehirlere özellikle dekorasyon ürünlerinin ticareti yapılmaya başlanmıştır ve bu, büyük bir gelir kaynağı haline gelmiştir.")
        
        kentDetay.append("Meksiko, Meksika'nın 32 federal yapılanmasından biri, ülkenin başkenti ve nüfus bakımından en büyük şehri. Alfa bir küresel şehir olup, Amerika kıtasının en önemli finansal merkezlerinden biridir. Meksiko, Amerika kıtasının en eski başkenti olmasının yanı sıra, Quito ile birlikte kızılderililer tarafından kurulan iki başkentten biridir. Şehir, Tenochtitlan adıyla Aztekler tarafından 1325 yılında, Texcoco Gölü üzerine inşa edildi. ")
        
        kentDetay.append("Eindhoven, Kuzey Brabant ilinde bulunan Hollanda‘nın beşinci büyük şehiridir. Eğitim olarak ise; Şehirde bulunan TÜ/e ( Technische Üniversiteit Eindhoven), Avrupa’nın mühendislik alanındaki önemli üniversitelerindendir. Ulaşım ise; bisiklet ve otobüs ile sağlanmaktadır.Fakat merkezde gezerken fazla otobüs göremiyorsunuz.Ben yürüyerek şehir merkezini ve civarlarını gezmiştim.Çok ufak bir şehir ve fazla turistik yerleri bulunmamakta. Standart meydanlarının dışında, philips binası, klisesi, piazza alışveriş merkezi, Evoluon konferans merkezi, eski banka binası(şimdilerde anıt) ve  Frits Philips heykeli benim aklımda kalanlardan.Hava alanları çok ufak hatta bir kısmı tadilattaydı.Ocağın ortasında gittiğimden dolayı inanılmaz bir soğuk hava vardı. Eldivensiz beresiz çıkmanız çok zor.Pazar günü Sabiha Gökçen’ den saat 13:30 gibi bi saatte uçağa binmiştim. İndiğim gece ise barlar sokağına gece hayatına bakmak için gittiğimde 100 metrelik bi sokak karşıladı beni.Mekanlar fazla dolu değildi hatta bazılarında 5-10 kişi vardı . Bir tanesinden fazla ses geliyor diye önüne doğru gittiğimde ondada salsa gecesi düzenlediklerini gördüm. Belkide pazar oluşundandır bilmiyorum ama istanbul’dan giden birisi için çok boş geldi.")
        
        kentDetay.append("Bavyera’nın başkenti Münih, tam bir festival şehridir. Lezzetli yemekler, kaliteli biralar, sürekli etkinlikler bulabileceğiniz gece hayatı, neredeyse sorunsuz bir ulaşım sistemi, güzel havasıyla; çoğu kişi için mükemmel bir tatil bölgesidir.  Berlin ve Hamburg’un ardından Almanya’nın 3. büyük kenti olarak anılır fakat birçok konuda her ikisini de geride bırakmıştır. Münih’te alışveriş yapmak isteyenler için Avrupa’nın modası ile ünlü şehirlerindekiler kadar çok seçenek bulabilecekleri caddeler var.")
        
        kentDetay.append("Paris, Fransa'nın başkenti ve Île-de-France bölgesinin merkezidir. Sen Nehri'nin üzerine, Paris Havzası'nın ortasına kurulmuştur. Paris'te ikamet edenlere Parisien diye hitap edilir. Moda ve lüksün dünya başkenti olan Paris, Işık Şehir (Ville Lumière) diye de anılmaktadır. ... Tarih öncesi yerleşimlerle Galya-Roma dönemi arasında olup bitenler hakkında pek bir şey bilinememektedir. Tek emin olunan ... O zamanki Galya şehrinin tam olarak nerede yerleştiği konusunda kesin bilgi yoktur. Paris daima dünyanın en romantik şehirlerinden biri olarak kabul edilmiştir. Paris' in nüfusu banliyöleri ile birlikte yaklaşık 12 milyon civarındadır. Şehir merkezinin nüfusu ise 2,3 milyon civarındadır. ")
        
        kentDetay.append("Roma, İtalya’nın başkenti, en kalabalık şehridir. Dünyanın 2.000 yıldan fazla bir zamandan beri önemini kaybetmeyen sayılı şehirlerinden biri Roma’dır. Avrupa’da, Atina’dan sonra en eski ikinci büyük şehir olan Roma’da tarihin ilk büyük güçlü imparatorluklarından biri kurulup gelişmiştir. Roma, aynı zamanda, modern devlet anlayışının, hukuk ilkelerinin doğduğu yerdir. Hıristiyanlığı bütün Batı dünyasına yayan merkez de bu şehir olmuştur. Roma şehri, İtalya yarımadasının ortasında, Tiber (Tevere) ırmağının iki yakasında ve yedi tepe üzerinde kurulmuştur. Tarih boyunca önemi olan bu tepeler şu adları taşır: Capitoliro (Campidoglio), Palatino, Aventino, Celio, Esquilino, Viminale, Quirinale. Ayrıca, alçak üç tepe daha vardır: Gianicolo, Vaticano, Pincio. Şehir, kuzeydoğudan Sabine, güneyden de Alban dağları ile çevrilidir, denizden 25 km. kadar içeridedir. Tiren Denizi’ne dökülen Tiber nehrinin kıyısındaki Lido di Ostia, Roma’nın hem plajı, hem de iskelesidir.")
        
        kentDetay.append("Tilburg Hollanda'nın en güneyinde bulunan Kuzey Brabant eyaletinde bir şehir ve belediyedir.Tilburg'un belediye sınırları içinde nüfusu (1 Ocak 2011 tahmini itibarıyla) 206,234 kişidir. Böylece Tilburg Kuzey Brabant eyaletinde 2. büyük şehir ( birincisi Eindhoven) ve Hollanda içinde 6. büyük şehirdir. Belediye sınırları içinde iki köy de bulunmaktadır:Berkel-Enschot ve Udenhout.")
        
        
        
        
        
        
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            kentIsimler.remove(at: indexPath.row)
            kentResimler.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.fade)
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toImageVC" {
            
            let destinationVC = segue.destination as! ImageViewController
            destinationVC.kentIsim = secilenkentIsim
            destinationVC.kentResim = secilenkentResim
            destinationVC.kentDetay = secilenkentDetay
            
        }
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        secilenkentIsim = kentIsimler[indexPath.row]
        secilenkentResim = kentResimler[indexPath.row]
        secilenkentDetay = kentDetay[indexPath.row]
        
        performSegue(withIdentifier: "toImageVC", sender: nil)
        
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kentIsimler.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = kentIsimler[indexPath.row]
        return cell
        
    }


}

