# Review

Review mevcut bir arayüzü adım 1–17 ile yargılar. Çıktısı rapordur. İstenmedikçe kod değişmez. Bu dosya 18. adım değildir.

Yazım `references/07-writing.md`. Form `references/06-core-principle.md`. Mod `SKILL.md`. Bu dosya inceleme raporu ve hibritin rapor yarısıdır. Kod hâlâ tasarım modudur.

Dahili yargı uzun olabilir. Rapor kısa kalır. "A'yı düşündüm, sonra B'yi" rapora yazılmaz. Daha fazla efor daha uzun rapor demek değildir.

## Ne zaman review

Kullanıcı mevcut ekranı, akışı, mockup'ı, elemanı veya canlı URL'i incelemek istiyorsa. Tetik: "review et", "incele", "ne yanlış", "audit", "neden böyle görünüyor".

Canlı ürün veya render varsa ona bak. Koddan hayal etme. Bakılamadıysa `references/05-consistency-and-validation.md` dürüstlük kuralı geçerlidir: yapılamayan kontrolü yapılmış yazma.

## Analiz ile rapor ayrıdır

Analiz adım 1–17'dir. Dosya adı (`01`–`05`) yalnız hangi metnin okunacağını gösterir.

Rapor okuyucu sırasını kullanır: hüküm, kapsam, doğrulanmış bulgular, ne duruyor, incelenemedi, önce bunlar.

Adım çıktısı tablosu (palet planı, in/out listesi, token adı) incelemede iç kontroldür. Rapora yazılmaz. Metni 17 bölüm halinde yazma.

Adım ürüne veya kapsama uymuyorsa atla, nedeni söyle. "İlgili" bir kısaltma listesi değildir. Küçük yama skip'i review'ı kesmez. "Bu ekranı incele" 17'yi tarar.

Review'da varlık gerekçesi hâlâ geçerlidir. Gerekçesiz elemanın varsayılanı çıkarmaktır. Karar rapordadır. Kullanıcı kod istemeden silme.

## Efor

"Daha çok düşün" deme. Efor, dahili aramadır: üret, sorgula, karşılaştır, ele, doğrula.

- **Düşük** — belirleyici kontroller: semantik eleman, etiket, başlık sırası, kontrast ölçümü, gerçek link/button.
- **Orta** — olağan UX kararı: birincil aksiyon, boş durum, bir ekranın hiyerarşisi.
- **Yüksek** — belirsiz veya çatışan adaylar. Kanıt türleri ayrışıyor. İş etkimesi net değil.
- **Çok yüksek** — rakip açıklamalar, birden fazla geçerli çözüm, çok ekranlı sapma, düzeltme sonrası yeniden inceleme.

Dar eleman isteği düşük veya orta kalır. Ekran/akış orta. Çatışma görünce yükselt. Rapor uzunluğu eforu göstermez.

## İşlem

Kapsam, istenen yüzeye göredir. Yürüyüş o kadar genişler.

**Ekran veya akış.** Adım 17 varsayılan açıktır.

1. Adım 1'den işi tek cümlede söyle. Rapora "Bağlam" başlığı açma.
2. O işi yürü: ilk tık, görev tamamlama, gerekirse 5 saniye. Durduğun yer gözlemdir, henüz bulgu değil.
3. Adım 4'ten en az bir kırık yol dene: hata, boş, izin yok. URL vermiyorsa kapsamda "durum görülmedi" yaz. Koddan uydurma.
4. Viewport: adım 1 medyumu + adım 15'ten bir dar kırılım. Web ise desktop ve bir mobile. Medyum desktop-only ise mobile zorunlu değil; nedeni kapsamda.

**Tek eleman veya tek özellik.** O elemanın işi. Görünür mü, tıklanır mı, kontrast duruyor mu. Ekran seviyesinde görev tamamlama yok. Kapsamda yaz: `dar: [eleman]. Adım 17 atlandı çünkü iş ekran değil.`

Etkileşim minimumu adım 10 ve 16'nın review halidir: primary aksiyon, form varsa gönderim veya doğrulama, klavyeyle o aksiyona varış. Headless'te kare almak adım 16'yı bitirmez. Yapılamadıysa kapsam maddesi; sessiz atlama değil.

**Birden fazla ekran.** Ayrı bir karşılaştırma geçişi yap. Her ekranı tek tek bitirme. Sonra A / B / C'yi yan yana koy. Visual, behavioral, semantic sapma ara. Sapma, adım 14'ün review halidir. Tek ekran sapması değil, örüntü sapması bulgudur.

## İki geçiş

Raporu birinci geçişte yazma.

**Geçiş 1 — keşif.** Gözlem topla. Yürü, bak, ölç. Aday üretme. Çözüm yazma.

**Geçiş 2 — yargı.** Gözlemi adaya çevir. Aşağıdaki süzgeçleri işlet. Yalnız doğrulanmış bulgu rapora girer.

## Gözlem, aday, bulgu

Üç katman karışmaz.

```text
Gözlem → Aday bulgu → Doğrulanmış bulgu
```

Gözlem görülen şeydir. Aday, henüz süzgeçten geçmemiş iddiadır. Doğrulanmış bulgu rapora giren tek katmandır.

```text
Gözlem: Beş buton aynı görsel ağırlıkta.
Aday: Primary diğer aksiyonlardan ayrışmıyor.
Bulgu: (süzgeçler evet dedikten sonra) Primary diğer aksiyonlardan ayrışmıyor.
```

Gözlemi doğrudan UX problemi yazma. "Beş buton var" bulgu değildir.

## Kanıt matrisi

Her adayın iddia türü, kanıt türünü seçer. Tür yoksa aday düşer veya "doğrulama gerekli" olur. Doğrulama gerekli olanlar bulgu başlığı olmaz; "İncelenemedi"ye gider.

| İddia | Kanıt | Rapor etiketi |
|-------|-------|----------------|
| Semantik, yapı | DOM / kod | `[DOM]` |
| Görsel, hiyerarşi, boşluk, renk | Render | `[Görsel]` |
| Davranış, hover, klavye, gönderim | Etkileşim | `[Etkileşim]` |
| Kullanıcı, iş, amaç | Adım 1 bağlamı | etiket değil; cümlede |
| Nicelik | Ölçüm | kanıt cümlesinde |

DOM'da 14 görsel olması ekranın 14 görsel gibi göründüğünü kanıtlamaz. Yapısal gözlemi görsel iddia gibi yazma. Görsel sonuç iddia ediliyorsa render gerekir.

Canlı URL varsa render'dan ayrılma. Ortam headless tarayıcı sunuyorsa ekran görüntüsü al. İnceleyen model görüntü okuyamıyorsa ve görüş yetenekli bir araç veya ortağa erişim varsa, görsel ekseni ona doğrulat ve raporu birleştir. Görsel doğrulama mümkün değilse estetik, boşluk ve gerçek hiyerarşi iddiaları rapora girmez. Bunu hem hüküm yanında hem "İncelenemedi"de söyle.

Rapor yazılmadan örtü kontrolü: her adayın kanıtı var mı. Kanıtsız satır çıkar. Üç bulgudan biri kanıtsızsa o satır yoktur; rapor iki bulgudur.

## Kare raporda

Dahili kare yetmez. `[Görsel]` bulgu, okuyucunun gördüğü rapora kare ile girer. Chat'te bulgunun altında göster. HTML veya PDF'de göm; ayrı klasöre bağlı bırakma.

`[Etkileşim]` bulguda davranış karede görünüyorsa aynı kural: açık menü, native hata balonu, kırık gönderim. `[DOM]` yalnız yapı ise kare yok.

Kare doğrulanmış bulguya bağlıdır. Yürüyüş galerisi rapora dökülmez. Karşılaştırma iki kareyi hak eder: viewport, önce/sonra, A/B. Üçüncü kare aynı iddiayı tekrarlıyorsa düş.

Alt yazı iddiayı tekrar etmez. Karede görülen somut şeyi söyler. Bir kanıt cümlesine bağlıdır; bağlanamıyorsa kare düşer.

```text
Kötü: Hiyerarşi zayıf.
İyi:  Kırk kart aynı boy. Her birinde Ücretsiz rozeti.
```

Kare gösterilemiyorsa bulguyu karesiz `[Görsel]` yazma. Ya kareyi koy, ya iddiayı "İncelenemedi"ye al.

## Adversarial kontrol

Aday rapora girmeden önce bu sorulara ayrı cevap ver. Biri hayırsa düşür veya "İncelenemedi".

- Gerçekten problem mi, yoksa gözlem mi?
- Kanıt matrisi bu iddiayı taşıyor mu?
- Adım 1 bağlamına bağlı mı?
- Kullanıcının işini etkiliyor mu?
- Yalnız estetik tercih mi? (zevk süzgecine git)
- Başka açıklama mümkün mü? (alternatif açıklamaya git)
- Bağımsız bir bulgu mu, yoksa başka bulgunun semptomu mu?

Cevapları rapora yazma.

## Zevk süzgeci

```text
"Bunu beğenmedim"
        ↓
Bağlam / kullanıcı / ürün gerekçesi var mı?
        ↓
    yok → at
    var → aday kalır
```

"Modern değil", "generic", "premium durmuyor" gerekçe değildir. `references/06-core-principle.md` ve `references/07-writing.md` eksen kuralı burada işletilir.

## Alternatif açıklama

Aday için en az bir rakip neden söyle. Elemiyorsan nedenini içeride tut.

```text
"Bu buton neden küçük?"
A — hiyerarşi bozuk
B — ikincil aksiyon, kasıtlı
C — dar viewport uyarlaması
D — mevcut sistem kısıtı
```

İlk açıklama kazanmış sayılmaz. Efor burada harcanır.

## Kök neden ve tekrarsızlaştırma

Gözlem yığınını rapora dökme.

```text
5 gözlem → 1 kök neden → semptomlar
```

Her adaya sor: "Bu başka bir bulgunun semptomu mu?" Semptom ayrı başlık olmaz. Kök neden bulgudur. Semptom kanıt cümlesine girebilir.

Aynı problemin beş kere yazılması rapor hatasıdır.

## Şiddet

Şiddet gözlemden çıkmaz. Sıra:

```text
Doğrulanmış bulgu → kullanıcı / ürün etkisi → şiddet
```

Önce adım 1: bu ekranın veya elemanın işi ne? Sonra adım 5 sırası. Kovalar değişmez.

- **Kritik** — maliyet: para, veri, güvenlik, geri döndürülemez işlem, görev tamamlanamıyor.
- **Yüksek** — karar bağımlılığı veya ana iş bozuluyor.
- **Orta** — tutarlılık, zayıf hiyerarşi, şablon estetik, eksik durum.
- **Düşük** — cilâ, imza öğesi, copy inceliği.

Copy, hiyerarşi, imza, kontrast otomatik Düşük veya Yüksek değildir. "Kontrast düşük" tek başına Yüksek değildir. Etkilenen elemanın rolü ve göreve etkisi kova seçer. İş kayıt, indirme veya güven ise onu bozan bulgu Yüksek olabilir. Yapısal erişilebilirlik görev bitemiyorsa Yüksek veya Kritik'tir; yalnız semantik sıraysa Orta.

Şiddeti başlığa yaz: `Kritik [DOM]: Ödeme geri alınamıyor`.

**Önce bunlar** şiddetten türer. Aynı kovada yürüyüşü kesen, yavaşlatandan önce gelir. Üç–beş madde. Gerisi bulguda kalır, önceliğe çıkmaz. Implementasyon eforu sıralamaz.

## Güven

Şiddet ile güven ayrıdır. Yüksek şiddet, düşük güven mümkün.

Güven yüksekse yazma. Yüksek değilse bulgu bloğunda bir cümle: `Güven: düşük. Görsel doğrulama gerekli.`

Render yokken hiyerarşi iddiası ya düşer ya "İncelenemedi" olur. "Hiyerarşi zayıf görünüyor"u Yüksek + yüksek güven yazma.

## Tanı ve çözüm

Tanı ile iş aynı cümlede yapışmaz. Bu, `references/07-writing.md` iddia iskeletidir.

```text
Tanı: Primary görsel olarak belirsiz.
İş:   Rakip aksiyonları indir, tek baskın aksiyon bırak.
```

Doğrulanmış problemden sonra ilk aklına gelen çözümü yazma.

```text
Problem → çözüm A, B, C → karşılaştır → seç
```

Karşılaştırma dahili kalır. Rapora yalnız seçilen iş girer. Büyük bilgi mimarisi ve hiyerarşi sorununda bu adımı atlama.

Seçilen işin zincir etkisini içeride yürü. Navigasyon değişiyorsa responsive, bileşen, token, doğrulama kapsamı değişir mi? Değişiyorsa hibritte o adımları taşı. İnceleme raporunda zinciri anlatma; iş cümlesi hâlâ tek iştir.

## Hüküm

Raporun başında tek cümle hüküm vardır.

Ortak tema adım 1'deki işe veya tek bir adım 5 maliyetine bağlanabiliyorsa tek anlatı yaz. Bağlanamıyorsa tema uydurma. O zaman hüküm:

> N bağımsız bulgu var, en pahalısı: …

"N bulgu var" tek başına hüküm değildir. En pahalısı şarttır; şiddet kilidinden gelir. "Önce bunlar" o cümledeki en pahalıdan başlar.

Görsel eksen yoksa hükmün yanında söyle: "Bu rapor yapısal; görsel eksen yok."

## Bitme

İçerde: adım 1–17'nin her biri söylenebilir, ya da atlandı ve nedeni var. İki geçiş işledi. Her rapor satırı doğrulanmış bulgudur. Kanıt örtüsü tam. Atlananlar "İncelenemedi"de durur.

Dışarıda: hüküm, kapsam, şiddetli bulgular, kanıtlı "ne duruyor", incelenemedi, kısa öncelik. Dahili arama yok.

Bulgu `references/06-core-principle.md` review cümlesine iner. İnemezse rapora yazılmaz.

## Rapor iskeleti

```text
# [Sayfa, akış veya eleman] review

[Tek cümle hüküm. Ortak tema yoksa: N bağımsız bulgu var, en pahalısı: …]
[Görsel eksen yoksa: Bu rapor yapısal; görsel eksen yok.]

**Kapsam:** Ne incelendi. Ekran/akış mı, dar eleman mı, çok ekran mı. Hangi iş. Hangi viewport. Hangi veri durumları.

## [Şiddet] [DOM|Görsel|Etkileşim]: [Bulgu başlığı]
[Tanı — tek satır.]
[Kanıt.]
[Kare — [Görsel] zorunlu. [Etkileşim] karede görünüyorsa zorunlu. Alt yazı iddiayı tekrar etmez.]
[Anlam — işe etkisi.]
[İş — seçilmiş çözüm.]
[Güven yalnız yüksek değilse.]

## Ne duruyor
[Aynı kanıt zorunluluğu, kısa. Yoksa bu bölümü uydurma.]

## İncelenemedi
[Yapılamayan kontroller. Atlanan adımlar + neden. Kanıtsız kalan adaylar. Yoksa bu bölümü uydurma.]

## Önce bunlar
1. [En pahalı düzeltme]
2. ...
```

İddia sırası `references/07-writing.md` içindeki iddia iskeletidir. Tanı = iddia. İş = çözüm. Karıştırma.

Olumlu satır da kanıt ister. "Değer cümlesi güçlü" yetmez. Hangi metin, nerede, neden duruyor.

## Review sonrası implementasyon

Yalnız incele istendiyse raporu bırak.

Aynı mesajda düzeltme de istendiyse (`review et ve düzelt`) "Önce bunlar" listesinden tasarım moduna geç. Varsayılan eşik: Kritik ve Yüksek. Orta yalnız yürüyüşü kesiyorsa girer. Düşük, kullanıcı demedikçe yok.

```text
İncele → bulgular → düzelt → render → yeniden incele
```

Her düzeltme kendi adım gerekçesini ve adım 16 doğrulamasını taşır. Düzeltme başka problem açmış olabilir. Değişen yüzeye ikinci geçişi işlet. Yeni doğrulanmış bulgu varsa söyle. Tam raporu baştan yazma. "Düzeltildi / duruyor / yeni: …" yeter.

Tek başına "düzelt" bu dosyayı açmaz.
