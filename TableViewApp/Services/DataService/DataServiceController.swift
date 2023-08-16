//
//  DataServiceController.swift
//  TableViewApp
//
//  Created by Kadir Hocaoğlu on 15.08.2023.
//

import Foundation

class PlaceFakeService{
    
    var places: [Places] = [
        Places(name: "Ayasofya (Hagia Sophia)", description: "Bizans İmparatoru Justinianus tarafından 537 yılında inşa edilen bu yapı, önce kilise olarak kullanıldı, sonra camiye dönüştü ve günümüzde müze olarak kullanılmaktadır.", since: 537),
        Places(name: "Topkapı Sarayı", description: "Osmanlı İmparatorluğu'nun merkezi olan saray, 15. yüzyılda inşa edilmiştir ve uzun süre Osmanlı padişahlarının ikametgahı olmuştur.", since: 1500),
        Places(name: "Yerebatan Sarnıcı (Basilica Cistern)", description: "Bizans dönemine ait su sarnıcı, 6. yüzyılda inşa edilmiştir ve sütunları ile ünlüdür.", since: 600),
        Places(name: "Galata Kulesi", description: "Cenevizliler tarafından 14. yüzyılda inşa edilen bu kule, tarihi Galata bölgesinin sembollerinden biridir.", since: 1400),
        Places(name: "Süleymaniye Camii", description: "Mimar Sinan tarafından 16. yüzyılda yapılan cami, Osmanlı mimarisinin önemli bir örneğidir.", since: 1600),
        Places(name: "Kapalıçarşı", description: "15. yüzyıldan beri faaliyet gösteren bu kapalı çarşı, dünyanın en eski ve büyük kapalı çarşılarından biridir.", since: 1500),
        Places(name: "Rumeli Hisarı", description: "Fatih Sultan Mehmet'in İstanbul'u fethetmeden önce inşa ettirdiği hisar, 15. yüzyılda yapılmıştır.", since: 1500),
        Places(name: "Anadolu Hisarı", description: "Boğaz'ın karşı tarafında yer alan hisar, Güzelce Hisar olarak da bilinir ve 14. yüzyılda inşa edilmiştir.", since: 1400),
        Places(name: "Galata Köprüsü", description: "İstanbul'un tarihi Galata ve Eminönü bölgelerini birbirine bağlayan köprü, 19. yüzyılda inşa edilmiştir.", since: 1900),
        Places(name: "Sultanahmet Camii (Mavi Camii)", description: "17. yüzyılda inşa edilen cami, mavi ve beyaz seramiklerle süslenmiş iç mekanıyla tanınır.", since: 1700)
    ]
    
}
