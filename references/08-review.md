# Review

Review mevcut bir arayüzü adım 1–17 ile yargılar. Çıktısı rapordur. İstenmedikçe kod değişmez. Bu dosya 18. adım değildir.

Yazım `references/07-writing.md`. Form `references/06-core-principle.md`. Mod `SKILL.md`. Bu dosya inceleme raporu ve hibritin rapor yarısıdır. Kod hâlâ tasarım modudur.

## Ne zaman review

Kullanıcı mevcut ekranı, akışı, mockup'ı, elemanı veya canlı URL'i incelemek istiyorsa. Tetik: "review et", "incele", "ne yanlış", "audit", "neden böyle görünüyor".

Canlı ürün veya render varsa ona bak. Koddan hayal etme. Bakılamadıysa `references/05-consistency-and-validation.md` dürüstlük kuralı geçerlidir: yapılamayan kontrolü yapılmış yazma.

## Analiz ile rapor ayrıdır

Analiz adım 1–17'dir. Dosya adı (`01`–`05`) yalnız hangi metnin okunacağını gösterir.

Rapor okuyucu sırasını kullanır: hüküm, kapsam, bulgular, ne duruyor, incelenemedi, önce bunlar.

Adım çıktısı tablosu (palet planı, in/out listesi, token adı) incelemede iç kontroldür. Rapora yazılmaz. Metni 17 bölüm halinde yazma.

Adım ürüne veya kapsama uymuyorsa atla, nedeni söyle. "İlgili" bir kısaltma listesi değildir. Küçük yama skip'i review'ı kesmez. "Bu ekranı incele" 17'yi tarar.

Review'da varlık gerekçesi hâlâ geçerlidir. Gerekçesiz elemanın varsayılanı çıkarmaktır. Karar rapordadır. Kullanıcı kod istemeden silme.

## İşlem

Kapsam, istenen yüzeye göredir. Yürüyüş o kadar genişler.

**Ekran veya akış.** Adım 17 varsayılan açıktır.

1. Adım 1'den işi tek cümlede söyle. Rapora "Bağlam" başlığı açma.
2. O işi yürü: ilk tık, görev tamamlama, gerekirse 5 saniye. Durduğun yer bulgudur.
3. Adım 4'ten en az bir kırık yol dene: hata, boş, izin yok. URL vermiyorsa kapsamda "durum görülmedi" yaz. Koddan uydurma.
4. Viewport: adım 1 medyumu + adım 15'ten bir dar kırılım. Web ise desktop ve bir mobile. Medyum desktop-only ise mobile zorunlu değil; nedeni kapsamda.

**Tek eleman veya tek özellik.** O elemanın işi. Görünür mü, tıklanır mı, kontrast duruyor mu. Ekran seviyesinde görev tamamlama yok. Kapsamda yaz: `dar: [eleman]. Adım 17 atlandı çünkü iş ekran değil.`

Etkileşim minimumu adım 10 ve 16'nın review halidir: primary aksiyon, form varsa gönderim veya doğrulama, klavyeyle o aksiyona varış. Headless'te kare almak adım 16'yı bitirmez. Yapılamadıysa kapsam maddesi; sessiz atlama değil.

## Kanıt türünü ayır

Bulgunun kanıtı ya kod/DOM gözlemidir ya görsel render. Rapor bunları karıştırmaz.

Koddan çıkan bulgu yapısaldır: eleman var, etiket yok, buton span, başlık sırası atlamış. Görsel sonuç — kalabalıklık, renk dengesi, boyut hissi, ferahlık — yalnız render ile doğrulanır. DOM'da 14 görsel olması, ekranın 14 görsel gibi göründüğünü kanıtlamaz. Yapısal bulguyu görsel iddia gibi yazma. Yapısal bulgunun görsel sonucu iddia ediliyorsa ya render ile doğrula ya da "görsel doğrulama gerekli" diye işaretle.

Bulgu başlığında kanıt türünü yaz: `[DOM]` veya `[Görsel]`. İkisi varsa ikisi de. Görsel yarı doğrulanmamışsa o iddiayı yazma.

## Canlı sayfa için görsel doğrulama

Canlı URL varsa render'dan ayrılma. Ortam headless tarayıcı sunuyorsa ekran görüntüsü al. İnceleyen model görüntü okuyamıyorsa ve görüş yetenekli bir araç veya ortağa erişim varsa, görsel ekseni ona doğrulat ve raporu birleştir. Görsel doğrulama mümkün değilse estetik, boşluk ve gerçek hiyerarşi iddiaları rapora girmez. Yalnız yapısal bulgularla yetin. Bunu hem hüküm cümlesinin yanında hem "İncelenemedi"de söyle. Yalnız kapsama gömme.

## Şiddet

Önce adım 1: bu ekranın veya elemanın işi ne? Sonra adım 5 sırası. Kovalar değişmez.

- **Kritik** — maliyet: para, veri, güvenlik, geri döndürülemez işlem, görev tamamlanamıyor.
- **Yüksek** — karar bağımlılığı veya ana iş bozuluyor.
- **Orta** — tutarlılık, zayıf hiyerarşi, şablon estetik, eksik durum.
- **Düşük** — cilâ, imza öğesi, copy inceliği.

Copy, hiyerarşi, imza otomatik Düşük değildir. İş kayıt, indirme veya güven ise onu bozan bulgu Yüksek olabilir. Yapısal erişilebilirlik görev bitemiyorsa Yüksek veya Kritik'tir; yalnız semantik sıraysa Orta.

Şiddeti başlığa yaz: `Kritik [DOM]: Ödeme geri alınamıyor`.

**Önce bunlar** şiddetten türer. Aynı kovada yürüyüşü kesen, yavaşlatandan önce gelir. Üç–beş madde. Gerisi bulguda kalır, önceliğe çıkmaz. Implementasyon eforu sıralamaz.

## Hüküm

Raporun başında tek cümle hüküm vardır.

Ortak tema adım 1'deki işe veya tek bir adım 5 maliyetine bağlanabiliyorsa tek anlatı yaz. Bağlanamıyorsa tema uydurma. O zaman hüküm:

> N bağımsız bulgu var, en pahalısı: …

"N bulgu var" tek başına hüküm değildir. En pahalısı şarttır; şiddet kilidinden gelir. "Önce bunlar" o cümledeki en pahalıdan başlar.

Görsel eksen yoksa hükmün yanında söyle: "Bu rapor yapısal; görsel eksen yok."

## Bitme

İçerde: adım 1–17'nin her biri söylenebilir, ya da atlandı ve nedeni var. Atlananlar "İncelenemedi"de durur.

Dışarıda: hüküm, kapsam, şiddetli bulgular, uydurulmamış "ne duruyor", incelenemedi, kısa öncelik.

Bulgu `references/06-core-principle.md` review cümlesine iner. İnemezse rapora yazılmaz.

## Rapor iskeleti

```text
# [Sayfa, akış veya eleman] review

[Tek cümle hüküm. Ortak tema yoksa: N bağımsız bulgu var, en pahalısı: …]
[Görsel eksen yoksa: Bu rapor yapısal; görsel eksen yok.]

**Kapsam:** Ne incelendi. Ekran/akış mı, dar eleman mı. Hangi iş. Hangi viewport. Hangi veri durumları.

## [Şiddet] [DOM|Görsel]: [Bulgu başlığı]
[Tek satır özet — iddia.]
[Kanıt.]
[Anlam.]
[İş.]

## Ne duruyor
[Aynı formatta, kısa. Yoksa bu bölümü uydurma.]

## İncelenemedi
[Yapılamayan kontroller. Atlanan adımlar + neden. Yoksa bu bölümü uydurma.]

## Önce bunlar
1. [En pahalı düzeltme]
2. ...
```

İddia sırası `references/07-writing.md` içindeki iddia iskeletidir.

## Review sonrası implementasyon

Yalnız incele istendiyse raporu bırak.

Aynı mesajda düzeltme de istendiyse (`review et ve düzelt`) "Önce bunlar" listesinden tasarım moduna geç. Varsayılan eşik: Kritik ve Yüksek. Orta yalnız yürüyüşü kesiyorsa girer. Düşük, kullanıcı demedikçe yok.

Her düzeltme kendi adım gerekçesini ve adım 16 doğrulamasını taşır. Tam raporu baştan yazma. İstenirse "düzeltildi / duruyor" üç satır.

Tek başına "düzelt" bu dosyayı açmaz.
