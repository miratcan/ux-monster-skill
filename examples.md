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

**Context**: Canlı bir pazarlama sitesi. Kullanıcı "bu siteyi review et" dedi. Agent analizi `01`–`05` ile yaptı. Raporu da 17 başlık halinde döktü: Bağlam, Varlık, Hiyerarşi, Odak, Estetik…

### Problem

Okuyucu ürün sahibidir. Framework'ü bilmez. "5. Hiyerarşi" başlığı bir bulgu söylemez. Sonuç cümleleri bölüm sonuna gömülmüştü. Tek nefeste okunmayan cümleler üç kimliği bir arada anlatıyordu.

### Solution

Rapor `references/08-review.md` iskeletine çekildi. Yazım `references/07-writing.md`. Hüküm en başa alındı. Her bölüm başlık + tek satır özet. Şiddet başlıkta.

```text
# Marketing site review

Site üç görsel kimlik taşıyor. Waitlist, Product ve Pricing aynı ürün gibi durmuyor.

**Kapsam:** Desktop landing, Product, Security, Pricing. Mobile bakılmadı.

## Yüksek: Site üç görsel kimlik taşıyor
Waitlist, Product ve Pricing aynı ürün gibi durmuyor.
Waitlist koyu ve sinematik. Product açık ve şablon-SaaS. Pricing ikisinin karışımı, kendine ait bir teal rengiyle.
Aynı ürün üç ayrı yere ait gibi duruyor. Güven dağılır.
Paleti bir kimliğe indir.
```

### Why This Works

Zincir analiz yöntemidir. Rapor okuyucu belgesidir. Yazım kuralları hükmü başa koyar. Okuyucu geri kalanını okumasa da sonucu alır.

---

## Example: Küçük yamada tam zincir işletilmedi

**Context**: Mevcut bir ayarlar sayfası. Kullanıcı "error metnini `on-danger` token'ına bağla" dedi. Yeni eleman yok. Yeni hiyerarşi yok.

### Problem

Agent `01`'den başlayıp persona ve palet planı üretti. İş 1 satırlık token bağlamasıyken 17 adımlık gerekçe yazdı.

### Solution

SKILL.md skip kuralı: UI kararı değişmiyorsa zinciri baştan işletme. Burada yalnızca `04` (token) ve `05` (doğrulama) okunur. Çıktı: hangi token'a bağlandı, render'da kontrast duruyor mu.

### Why This Works

Framework her piksel değişiminde baştan işletilmez. Karar yoksa zincir yok. Token yaması token işidir.
