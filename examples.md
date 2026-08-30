# Examples

Real examples demonstrating this skill. This file grows over time as new sessions contribute examples.

---

## Example: Gerekçesiz brief elemanı — hava durumu widget'ı tuzağı

**Context**: B2B e-ticaret analytics dashboard tasarımı. Brief'te açıkça talep edilmiş bir "hava durumu widget'ı" vardı; ürün bağlamının (satış takibi) bu elemanla hiçbir ilişkisi yoktu. Talep, framework'ü test etmek için kasıtlı yerleştirilmişti.

### Problem

İlk denemede widget üç hatayla tasarıma sızdı:

1. **Yanlış muafiyet:** `references/01-context-and-conflict.md` içindeki zevk/çelişki ayrımı, layout alanı tüketen bir içerik elemanına uygulandı.
2. **İspat yükünün ters çevrilmesi:** Eleman mockup'a dahil edilip footer'a "kaldırılabilir" dipnotu düştü. Varsayılan karar varlık oldu; çıkarma kararı kullanıcıya bırakıldı.
3. **Uydurma gerekçe:** "Belki hava duyarlı satışları vardır" varsayımı koruma bahanesi olarak kullanıldı.

### Solution

Kuralın evi:

- Çelişki yalnız beş eksenden birine bağlanınca meşrudur. Eleman varlığı zevk muafiyeti değildir. `references/01-context-and-conflict.md`
- Gerekçesiz elemanın varsayılanı çıkarmaktır. Uydurma senaryo yok. "Kaldırılabilir" dipnotu yetmez. `references/02-design-decisions.md`
- "Brief'te istendi" geçersiz gerekçedir. `references/06-core-principle.md`

Doğru davranış: widget'ı tamamen çıkar + ilişkili CSS'i temizle (dead implementation) + kullanıcıya gerçek kullanım senaryosu sorusu bırak.

### Why This Works

Brief'te istenmiş olmak bir elemanın varlık gerekçesi değildir. Framework'ün çıktısı üzerindeki ispat yükü her zaman elemandadır; asistanın görevi elemanı savunmak değil, beş bağlam eksenine karşı test etmektir. Karar sahipliği de netleşir: çıkarır, alternatifini sunar, onaylanmış tasarım dışına çıkmadan kararı kullanıcıya açıkça sorar.

---

## Example: Dönem sonu muhasebe girişi — tasarım yürüyüşü

**Context**: Desktop web. Muhasebeci, fatura döneminin son günü, panele hızlı girmek istiyor. Yeni ekran. Kullanıcı "login tasarla" dedi.

### Problem

Adım çıktısı tablosu teoriydi. Agent 5 eksen, in/out listesi, palet planı ve doğrulama cümlesinin doldurulmuş halini görmüyordu.

### Solution

**Bağlam**

- Kim: muhasebeci. Bu işi her gün yapıyor. Klavye.
- Amaç: panele girmek. Keşif değil.
- Zaman: acele. Düşük bilişsel yük.
- Koşul: ofis, büyük ekran, klavye.
- Medyum: desktop web.

**Varlık**

- in: e-posta, şifre, Giriş yap, Şifremi unuttum
- out: sosyal login, hoş geldin hero, süs illüstrasyonu, dashboard metrikleri
- Sosyal login brief'te yok. Muhasebe SSO'su da değil. Default: out.

**Estetik**

- `paper` `#F4EFE6` — ofis kağıdı
- `ink` `#1C1917` — body
- `accent` `#0F766E` — tek vurgu, submit
- Display: Source Serif 4. Body: IBM Plex Sans.
- İmza: formun sol kenarında 4px accent bar. Başka yerde yok.

**Doğrulama**

Desktop 1280'de render edildi. Enter ile submit çalışıyor. Empty: alanlar boş, hata yok. Error: "E-posta veya şifre yanlış" ilgili input'un altında. Mobile bakılmadı. Medyum desktop.

### Why This Works

Adım bitti demek, bu dört bloğun söylenebilmesidir. Dosyayı okumak yetmez.

---

## Example: Review raporu zincir iskeletiyle yazılmadı

**Context**: Canlı bir pazarlama sitesi. Kullanıcı "bu siteyi review et" dedi. Agent analizi adım 1–17 ile yaptı. Raporu da 17 başlık halinde döktü: Bağlam, Varlık, Hiyerarşi, Odak, Estetik…

### Problem

Okuyucu ürün sahibidir. Framework'ü bilmez. "5. Hiyerarşi" başlığı bir bulgu söylemez. Sonuç cümleleri bölüm sonuna gömülmüştü. Tek nefeste okunmayan cümleler üç kimliği bir arada anlatıyordu.

### Solution

Rapor `references/08-review.md` iskeletine çekildi. Yazım `references/07-writing.md`. Hüküm en başa alındı. Her bölüm başlık + tek satır özet. Şiddet ve kanıt türü başlıkta. Adım 1–17 içeride kaldı.

```text
# Marketing site review

Site üç görsel kimlik taşıyor. Waitlist, Product ve Pricing aynı ürün gibi durmuyor.

**Kapsam:** İş: waitlist'e kaydolmak. Desktop 1280 landing, Product, Security, Pricing. Mobile 390. Kayıt formu boş ve hata denendi.

## Yüksek [Görsel]: Site üç görsel kimlik taşıyor
Waitlist, Product ve Pricing aynı ürün gibi durmuyor.
Waitlist koyu ve sinematik. Product açık ve şablon-SaaS. Pricing ikisinin karışımı, kendine ait bir teal rengiyle.
[kare: waitlist hero / product hero]
Waitlist neredeyse siyah, tek indigo vurgu. Product açık gri zemin, kart ızgarası.
Aynı ürün üç ayrı yere ait gibi duruyor. Güven dağılır.
Paleti bir kimliğe indir.

## Orta [DOM]: Gönder butonu gerçek button değil
Kayıt, klavye ve ekran okuyucu için kırılıyor.
Waitlist formu `<span class="submit">` ile gönderiliyor. `href` yok, `role` yok.
İş kayıt. Görev klavyeyle bitemiyor.
Gerçek `<button type="submit">` yap.

## Ne duruyor
H1 tek cümle: "Your website has SEO problems you can't see." Form tek e-posta alanı. Honeypot `aria-hidden` ve `tabindex="-1"`.

## İncelenemedi
Hover ve canlı animasyon. Token dosyası ayrı, açılmadı. Konum (adım 7) atlandı: tek amaçlı landing, çok adımlı akış değil.

## Önce bunlar
1. Gönder'i gerçek button yap.
2. Paleti bir kimliğe indir.
3. Pricing teal'ini vurgu olmaktan çıkar.
```

### Why This Works

Zincir analiz yöntemidir. Rapor okuyucu belgesidir. Yazım kuralları hükmü başa koyar. Okuyucu geri kalanını okumasa da sonucu alır.

---

## Example: Ortak tema yokken hüküm uydurulmadı

**Context**: Checkout ve ayarlar aynı oturumda incelendi. Biri ödeme onayı, biri şablon palet.

### Problem

Agent tek hüküm yazdı: "Ürün güvensiz duruyor." Ödeme kırığı ile teal vurgu aynı hikâyeye sıkıştı. Uydurma senaryo hükme sızdı.

### Solution

Ortak tema adım 1 işine veya tek bir adım 5 maliyetine bağlanamadı. Hüküm:

```text
2 bağımsız bulgu var, en pahalısı: ödeme geri alınamıyor.
```

"Önce bunlar" o cümledeki en pahalıdan başlar.

### Why This Works

`06` ve `08` tek cümle ister, tek tema zorlamaz. Bağ yoksa sayı ve en pahalısı yeter.

---

## Example: Dar inceleme tam yürüyüşe çevrilmedi

**Context**: Kullanıcı "bu butonun rengini incele" dedi. Ekran bir dashboard.

### Problem

Agent adım 17'yi ekran görevi olarak açtı. 5 saniye testi, empty state, mobile kırılım. İstek renk idi.

### Solution

Kapsam: `dar: primary buton. Adım 17 atlandı çünkü iş ekran değil.` Kontrast, vurgu tekliği, token adı. Rapor `08`. Tam yürüyüş yok.

### Why This Works

Yürüyüş kapsam kadar genişler. Eleman isteği küçük yama skip'i değildir; review durur, 17 daralır.

---

## Example: Gözlem bulgu yazılmadı

**Context**: Hero'da beş eşit ağırlıklı buton. Kullanıcı "sayfayı incele" dedi.

### Problem

Agent "beş buton var"ı Yüksek bulgu yaptı. Zevk cümlesi: "kalabalık duruyor." Kanıt render, iş etkisi yok. İlk çözüm: "butonları sil."

### Solution

Gözlem içeride kaldı. Adversarial: iş indirme; üç buton ikincil, biri primary, biri yasal dipnot. Alternatif açıklama B kazandı: ikincil aksiyon kasıtlı. Aday düştü. Rapora girmedi.

### Why This Works

Gözlem → aday → bulgu. Zevk ve rakip açıklama süzgeci finding sayısını keser. Efor burada harcanır.

---

## Example: Beş semptom bir kök nedene indi

**Context**: Aynı hero. Turuncu, yeşil, mor, teal, sarı yan yana. Primary küçük. Kartlar pencerede. Bölüm etiketleri de turuncu.

### Problem

Dört Orta madde: vurgu rengi, primary ölçeği, yüzen kartlar, bölüm rengi. Hepsi aynı kök: ilk ekranda vurgu tek işe hizmet etmiyor.

### Solution

Tek Yüksek [Görsel]: ilk ekranda vurgu dağınık. Semptomlar kanıt cümlesinde. "Önce bunlar" tek madde. Çözüm dahilde üç adaydı; seçilen: turuncuyu tek vurgu bırak, kartları nötrle.

### Why This Works

Kök neden rapordadır. Semptom ayrı başlık değildir. Çözüm A/B/C rapora dizilmez.

---

## Example: Dahili arama rapora yazılmadı

**Context**: Yüksek efor. Rakip açıklamalar, iki geçerli çözüm.

### Problem

Rapor "önce hiyerarşi sandım, sonra ikincil aksiyon, sonra mobil uyarlama, çözüm A ve B'yi kıyasladım" diye yürüdü.

### Solution

Rapor iskeleti. Tanı, kanıt, anlam, seçilmiş iş. Güven orta ise bir satır. Süzgeç dökümü yok.

### Why This Works

Efor dahili aramadır. Rapor uzunluğu eforu göstermez. `07` ve `08`.

---

## Example: Düzeltme başka problem açtı

**Context**: "Review et ve düzelt." Primary büyütüldü. Render'da form alanını eziyor.

### Problem

Agent "düzeltildi" yazıp bitti. Yeni ezme yargılanmadı.

### Solution

Değişen yüzeye ikinci geçiş. Yeni doğrulanmış bulgu: primary komşu alanı eziyor. "Düzeltildi / yeni: primary'yi küçültmeden grupla." Tam rapor baştan yok.

### Why This Works

İncele → düzelt → render → yeniden incele. Düzeltme doğrulama değildir.

---

## Example: Küçük yamada tam zincir işletilmedi

**Context**: Mevcut bir ayarlar sayfası. Kullanıcı "error metnini `on-danger` token'ına bağla" dedi. Yeni eleman yok. Yeni hiyerarşi yok.

### Problem

Agent `01`'den başlayıp persona ve palet planı üretti. İş 1 satırlık token bağlamasıyken 17 adımlık gerekçe yazdı.

### Solution

SKILL.md skip kuralı: UI kararı değişmiyorsa zinciri baştan işletme. Burada yalnızca `04` (token) ve `05` (doğrulama) okunur. Çıktı: hangi token'a bağlandı, render'da kontrast duruyor mu.

### Why This Works

Framework her piksel değişiminde baştan işletilmez. Karar yoksa zincir yok. Token yaması token işidir.
