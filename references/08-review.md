# Review

Review mevcut bir arayüzü zincirle yargılar. Çıktısı rapordur. İstenmedikçe kod değişmez.

Yazım kuralları burada tekrarlanmaz. Rapor yazmadan `references/07-writing.md` oku. Mod seçimi `SKILL.md` içindedir. Bu dosya yalnız **incele** içindir.

## Ne zaman review

Kullanıcı mevcut ekranı, akışı, mockup'ı veya canlı URL'i incelemek istiyorsa. Tetik: "review et", "incele", "ne yanlış", "audit", "neden böyle görünüyor".

Canlı ürün veya render varsa ona bak. Koddan hayal etme. Bakılamadıysa `references/05-consistency-and-validation.md` dürüstlük kuralı geçerlidir: yapılamayan kontrolü yapılmış yazma.

## Analiz ile rapor ayrıdır

Analiz zinciri kullanır: bağlam, varlık, durumlar, hiyerarşi, odak, aksiyon, estetik, a11y, token, tutarlılık, responsive, doğrulama.

Rapor okuyucu sırasını kullanır: hüküm, kapsam, bulgular, ne duruyor, önce bunlar.

Review'da varlık gerekçesi hâlâ geçerlidir. Gerekçesiz elemanın varsayılanı çıkarmaktır. Karar rapordadır. Kullanıcı kod istemeden silme.

## Kanıt türünü ayır

Bulgunun kanıtı ya kod/DOM gözlemidir ya görsel render. Rapor bunları karıştırmaz.

Koddan çıkan bulgu yapısaldır: eleman var, etiket yok, buton span, başlık sırası atlamış. Görsel sonuç — kalabalıklık, renk dengesi, boyut hissi, ferahlık — yalnız render ile doğrulanır. DOM'da 14 görsel olması, ekranın 14 görsel gibi göründüğünü kanıtlamaz. Yapısal bulguyu görsel iddia gibi yazma. Yapısal bulgunun görsel sonucu iddia ediliyorsa ya render ile doğrula ya da "görsel doğrulama gerekli" diye işaretle.

## Canlı sayfa için görsel doğrulama

Canlı URL varsa render'dan ayrılma. Ortam headless tarayıcı sunuyorsa ekran görüntüsü al. İnceleyen model görüntü okuyamıyorsa ve görüş yetenekli bir araç veya ortağa erişim varsa, görsel ekseni ona doğrulat ve raporu birleştir. Görsel doğrulama mümkün değilse estetik, boşluk ve gerçek hiyerarşi iddiaları rapora girmez. Kapsam bölümüne "görsel eksen incelenmedi" yaz, yalnız yapısal bulgularla yetin.

## Şiddet

Bulguya şiddet koy. Şiddet, hiyerarşi sırasından gelir (`references/02-design-decisions.md`).

- **Kritik** — maliyet: para, veri, güvenlik, geri döndürülemez işlem, görev tamamlanamıyor.
- **Yüksek** — karar bağımlılığı veya ana iş bozuluyor.
- **Orta** — tutarlılık, zayıf hiyerarşi, şablon estetik, eksik durum.
- **Düşük** — cilâ, imza öğesi, copy inceliği.

Şiddeti başlığa yaz: `Kritik: Ödeme geri alınamıyor`.

## Rapor iskeleti

```text
# [Sayfa veya akış] review

[Tek cümle hüküm.]

**Kapsam:** Ne incelendi. Hangi viewport. Hangi veri durumları. Ne incelenemedi.

## [Şiddet]: [Bulgu başlığı]
[Tek satır özet — iddia.]
[Kanıt.]
[Anlam.]
[İş.]

## Ne duruyor
[Aynı formatta, kısa. Yoksa bu bölümü uydurma.]

## Önce bunlar
1. [En pahalı düzeltme]
2. ...
```

İddia sırası `references/07-writing.md` içindeki iddia iskeletidir.

## Review sonrası implementasyon

Yalnız incele istendiyse raporu bırak. Aynı mesajda düzeltme de istendiyse (`review et ve düzelt`) öncelik listesinden tasarım moduna geç. Her düzeltme kendi varlık gerekçesini ve `05` doğrulamasını taşır. Tek başına "düzelt" bu dosyayı açmaz.
