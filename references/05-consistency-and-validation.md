# 14. Tutarlılık

Tasarım yalnızca tek ekran içinde değil, ürün genelinde tutarlı olmalıdır. Tutarlılık üç seviyede kontrol edilir:

## Visual consistency

Aynı anlamdaki şeyler benzer görünmelidir — primary actions, secondary actions, destructive actions, headings, metadata, form controls aynı görsel dili kullanmalıdır. Aynı anlam grubundaki elemanları (örn. kullanıcı içeriği, kullanıcı tanımlı yapı, sistem metadata) rastgele farklı kontrast seviyelerine dağıtma; her grup kendi önem seviyesine karşılık gelen sabit bir görsel ağırlık taşımalıdır.

## Behavioral consistency

Aynı interaction aynı sonucu üretmelidir — modal kapatma davranışı, form validation, loading, error recovery, navigation, keyboard interaction. Bir ekranda farklı davranan component, kullanıcıya yeni bir kural öğretir.

## Semantic consistency

Aynı kavram aynı isim ve yapı ile ifade edilmelidir. Ürün genelinde `Delete`, `Remove`, `Discard`, `Destroy` kelimelerinin rastgele aynı anlama kullanılması kafa karıştırabilir. Bir kavramın terminolojisini sistem genelinde koru.

## Mevcut sistemle tutarlılık

Yeni bir component veya pattern oluştururken önce mevcut sistemde eşdeğeri var mı kontrol et. Yeni bir pattern ancak mevcut pattern yetersizse, yeni kullanım bağlamı gerçekten farklıysa veya mevcut pattern bilinçli olarak değiştirilmek isteniyorsa oluşturulmalıdır.

---

# 15. Responsive ve Adaptive Behavior

Responsive tasarım yalnızca ekranı küçültmek değildir. Layout'un farklı viewport/device koşullarında nasıl davranacağını belirle. Sor: Ne küçülür? Ne taşınır? Ne gizlenir? Ne yeniden sıralanır? Ne fixed kalır? Hangi bilgi önceliğini korur? Hangi interaction değişir? Mobilde desktop tasarımını yalnızca sıkıştırma.

---

# 16. Doğrulama

Tasarım kararı implement edildiğinde iş bitmez. Render et ve kontrol et — kararın kendisi bir doğrulama değildir.

## Visual validation

Mümkünse gerçek render üzerinden incele. Kontrol et: hiyerarşi gerçekten görünüyor mu? Spacing tutarlı mı? Componentler doğru gruplanmış mı? Primary action gerçekten primary görünüyor mu (varsa)? Gereksiz görsel ağırlık var mı? Responsive davranış mantıklı mı? "Kod doğru görünüyor" yeterli değildir; gerçek render önemlidir.

## Grayscale validation

Renkleri zihinsel veya gerçek olarak kaldır. Hiyerarşi hâlâ anlaşılabiliyor mu? Eğer tüm önem renk, gradient veya shadow üzerinden taşınıyorsa hiyerarşi zayıf olabilir. Renk hiyerarşiyi desteklemeli, tek başına oluşturmamalıdır. Bu kontrol, `references/03-aesthetic-identity.md`'deki estetik/palet kararlarını geçersiz kılmaz — sadece hiyerarşinin renkten bağımsız da ayakta durup durmadığını test eder.

## Accessibility validation

En azından kontrol et: keyboard navigation, focus visibility, semantic elements, accessible names, form labels, contrast, touch target size, reduced motion, error communication.

## State validation

Her önemli data-driven component'i default, empty, loading, error, success durumlarında kontrol et. Ürüne göre disabled, offline, partial, permission denied, validation error gibi durumları da kontrol et.

## Responsive validation

En azından hedeflenen küçük, normal ve büyük viewport koşullarını kontrol et. Desktop tasarımın yalnızca daha küçük hale getirilmiş hali otomatik olarak mobile tasarım değildir.

## Görsel okuma imkanı yoksa sessizce geçme

Eğer taslak render edilemiyorsa veya görsel olarak incelenemiyorsa (ortam görsel araç sunmuyorsa, çıktı sadece kod ise), bu kontrolün yapılamadığını açıkça belirt ve gerekiyorsa bir ekran görüntüsü veya onay iste. Aynı kural her doğrulama türü için geçerlidir: bir kontrolün "yapıldığını" yazmak, gerçekten yapılmış olmasının yerini tutmaz. **"Kontrol ettim" varsaymak veya öyle görünen bir cümle yazmak, hiç kontrol etmemekten daha kötüdür** — çünkü doğrulanmamış bir kararı doğrulanmış gibi gösterir.

---

# 17. Kullanıcı Testi Hipotezi

Tasarımın gerçek kullanıcı davranışıyla doğrulanması gerekiyorsa test edilebilir bir hipotez üret.

**5 saniye testi:** Kullanıcı ekranı 5 saniye gördüğünde kritik durum bilgisini fark edebilmeli.

**İlk tıklama testi:** Kullanıcı belirli görevi yapmak istediğinde ilk tıklaması beklenen aksiyon üzerinde olmalı.

**Task completion:** Kullanıcı görevi ek yönlendirme olmadan tamamlayabilmeli.

Bu testler tasarım kararlarını estetik tercihten ölçülebilir hipoteze dönüştürür.
