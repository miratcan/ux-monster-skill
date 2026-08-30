# Yazım kuralları

Kullanıcıya yazılan her çıktı bu dosyaya uyar. Tasarım gerekçesi de, review raporu da.

Okuyucu tek geçişte sonucu alsın. Yazarın kafasındaki bağlantıyı çözmek zorunda kalmasın.

Review raporunun iskeleti burada değildir. O `references/08-review.md` içindedir.

## Cümle uzunluğu

Bir cümle tek nefeste, tek seferde okunup anlaşılmalı. Kabaca 20–25 kelimeyi geçen veya içinde iki-üç yan cümle taşıyan cümleyi ikiye böl.

Parantez içinde parantez kullanma. Tire ile üç fikri birbirine bağlama. Virgülle dört gözlemi tek cümleye dizme. Bunlar yazarın kendi bağlantılarıdır. Okuyucu bunları tek geçişte çözemez.

Tek kısa açıklama parantezi serbesttir. Kural Jargon bölümündedir.

Kötü: "Site iki (aslında üç) kimlik taşıyor, biri waitlist'in koyu sahnesi, diğeri Product/Security'nin açık SaaS zemini, üçüncüsü de Pricing'in ikisinin karışımı olan teal enerjisi."

İyi: "Site üç farklı görsel kimlik taşıyor. Waitlist koyu ve sinematik. Product/Security açık ve şablon-SaaS. Pricing ikisinin karışımı, kendine ait bir teal rengiyle."

## Başlık + tek satır özet

Her bölüm başlığının hemen altına, detaya girmeden önce, o bölümün sonucunu tek cümlede söyle. Okuyucu başlığı görüp devamını okumasa bile o cümleyi almış olsun.

Bu cümle tablo, liste veya kod bloğundan önce de durur. Başlığı bırakıp doğrudan tabloya geçmek yasaktır.

Kötü:

```text
## Erişilebilirlik
| Kontrol | Durum |
| Kontrast | Fail |
```

İyi:

```text
## Site üç görsel kimlik taşıyor
Waitlist, Product ve Pricing aynı ürün gibi durmuyor.
Waitlist koyu ve sinematik. Product açık ve şablon-SaaS. Pricing ikisinin karışımı.
```

Bütün metnin de en başında tek cümlelik bir hüküm vardır. Review'da bu hüküm raporu özetler. Tasarım gerekçesinde bu hüküm alınan kararı özetler. Hüküm tek cümledir; tek tema zorunlu değildir. Ortak bağ yoksa kaçış `references/08-review.md` ve `references/06-core-principle.md` içindedir.

## Bir cümle, bir fikir

Bir cümle iki iddia taşıyorsa böl. Problem ve çözümü aynı cümlede yapıştırma.

Kötü: "Hiyerarşi zayıf, bu yüzden primary'yi büyütüp kontrastı artırıp diğer butonları text action yapmak lazım."

İyi: "Hiyerarşi zayıf. Primary diğer aksiyonlardan ayrışmıyor. Primary'yi tek bırak. Diğerlerini text action yap."

## Başlık bulguyu adlandırır

Başlık bölüm türü değil, iddiadır.

Kötü: `Görsel kimlik`, `Hiyerarşi`, `Erişilebilirlik`.
İyi: `Site üç kimlik taşıyor`, `Asıl iş sağ kolonda kayboluyor`, `Gönder butonunun erişilebilir adı yok`.

## İddia iskeleti

Kullanıcıya yazılan her iddia şu sırayı geçer. Her adım ayrı cümledir.

1. **İddia** — ne yanlış, eksik veya karar. Bu, başlık artı tek satır özettir. Paragrafta tekrar etme.
2. **Kanıt** — nereden biliyoruz: ölçüm, ekran gözlemi, tıklama, bağlam ekseni.
3. **Anlam** — kullanıcının işi nasıl etkileniyor.
4. **İş** — ne yapılmalı.

Kanıtsız iddia bırakma. Anlamsız kanıt bırakma. İddiayı paragrafta yeniden yazıp sonra kanıta geçme.

## Kanıt somuttur

Sıfat tek başına kanıt değildir. "Modern değil", "karmaşık", "premium durmuyor" yazılmaz. Gördüğün şeyi yaz: renk, yerleşim, metin, boşluk, durum.

Kötü: "Sayfa generic AI estetiğinde."
İyi: "Zemin neredeyse siyah. Tek vurgu indigo `#6366F1`. Başlık Inter 600. Brief'ten gelen bir imza yok."

## Jargon

Framework veya tasarım literatürü terimini ancak gündelik dille söyleyemiyorsan kullan. Kullanmak zorunda değilsen yazma.

Kötü: "Z-taraması (gözün sayfada Z şeklinde gezinme eğilimi) zayıf."
İyi: "Göz sol üstten sağ alta gitmiyor. Primary sağ altta değil."

Terimi kullanmak zorundaysan ilk geçişte 4–8 kelimelik parantez koy. Sonraki geçişler serbesttir.

Link yedektir. Gloss yetmiyorsa genel, güvenilir bir kaynağa bağla. Linki açıklamanın yerine koyma. Çıktı ortasında ansiklopedi okutma.

Okuyucunun teknik seviyesini `01` içindeki "Kim kullanıyor?" ekseninden al. Şüpheye düşünce açıkla. "Bu genel bilgidir" diye atlama.

## Tablo

Tablo yalnızca gerçekten paralel, karşılaştırılabilir satırlar içindir. Sayfa × durum. Önce / sonra. Palet çatışması.

Skor cetveli bulgu değildir. `Anlaşılabilirlik 7/10` satırları yazma.

Tabloyu okuyucunun yorumlamasını bekleme. Hemen altına "bu tablodan çıkan" diye bir-iki cümle koy.

## Eksen bağı olmayan eleştiri yazılmaz

Bir iddia beş bağlam ekseninden veya zincirdeki bir adımdan birine bağlanamıyorsa zevk farkıdır. Rapora da gerekçe metnine de girmez. Çelişki kuralı `references/01-context-and-conflict.md` içindedir. Karar formu `references/06-core-principle.md` içindedir.

## Okuyucu zinciri bilmek zorunda değil

Analizi adım 1–17 ile yap. Dosya adı yalnız hangi metnin okunacağını gösterir. Metni 17 bölüm halinde yazma. "5. Hiyerarşi" diye başlık açma. Okuyucu ürünü konuşuyor, framework'ü değil.
