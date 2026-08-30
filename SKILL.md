---
name: ux-monster
description: |
  UI tasarlamak, implement etmek ve mevcut arayüzü review etmek için bağlam-karar-hiyerarşi-token-doğrulama zinciri.
  Use when: yeni ekran veya akış tasarımı; dashboard, landing, form, settings, onboarding; mevcut UI review/audit; gerekçesiz eleman, jenerik AI estetiği, zayıf hiyerarşi, doğrulanmamış tasarım.
  Example triggers: "ux-monster", "bu ekranı review et", "şu sayfayı incele", "landing page tasarla", "dashboard yap", "bu UI'ı düzelt", "review et ve düzelt", "neden bu widget var", "tasarımı doğrula".
  Skip: UI kararı değişmeyen backend/bugfix; mevcut token'a bağlı 1-2 satırlık stil yaması.
license: Tüm koşullar LICENSE.txt dosyasındadır.
---

# Frontend Tasarımı, Implementasyonu ve Review

İyi bir arayüz yalnızca güzel görünen bir ekran değildir. Doğru kullanıcıya, doğru bağlamda, doğru işi yaptırır. Tüm veri durumlarında ayakta kalır. Hiyerarşisi, kendine ait estetiği ve platform semantiği vardır. Implementasyonda kaybolmaz. Render edilerek doğrulanır.

## Mod

İlk iş modu seçmektir. Zincire ondan sonra gir.

**İncele** — review et, audit, ne yanlış, neden böyle görünüyor. Çıktı rapordur. Kod yok. Analiz adım 1–17'dir; dosya adı yalnız hangi metnin okunacağını gösterir. Rapor: `references/08-review.md`. Yazım: `references/07-writing.md`. Adım çıktısı tablosu iç kontroldür, rapora yazılmaz.

**Düzelt / tasarla / yap / uygula.** Çıktı koddur. Zincir `01` → `05`. Yazım: `references/07-writing.md`. Review raporu yazma.

**Review et ve düzelt.** Önce `08` raporu, sonra "Önce bunlar". Varsayılan eşik Kritik ve Yüksek; Orta yalnız yürüyüşü kesiyorsa. Tek başına "düzelt" bu madde değildir.

Karar veya bulgu `references/06-core-principle.md` formuna inemiyorsa o dosyayı oku. Forma giremeyen şey tasarıma da rapora da girmez.

Kullanıcıya cümle yazmadan `references/07-writing.md` uygula.

## Ne zaman durur

Dur: UI kararı değişmeyen backend, API, şema, bugfix. Mevcut token'a bağlı 1-2 satırlık yama. Böyle işte zinciri baştan işletme. Gerekirse yalnızca ilgili adımı oku (`04` token/implementasyon, `05` doğrulama). İncele bu skip'in dışındadır: "bu ekranı incele" adım 1–17'yi tarar. Dar istek (`bu butonun rengini incele`) review'ı iptal etmez; yürüyüş daralır (`references/08-review.md`).

Bağlam zaten netse `01`'i tekrar sorma. Bilineni kullanıcıya geri sorma.

## Zincir

O adıma gelince o dosya okunur. Hepsi baştan yüklenmez.

| Dosya | Adımlar |
|-------|---------|
| `references/01-context-and-conflict.md` | Bağlam, çelişki |
| `references/02-design-decisions.md` | Varlık, durumlar, hiyerarşi, odak, konum, aksiyon |
| `references/03-aesthetic-identity.md` | Estetik kimlik |
| `references/04-tokens-and-implementation.md` | Erişilebilirlik, motion, token, implementasyon |
| `references/05-consistency-and-validation.md` | Tutarlılık, responsive, doğrulama, test hipotezi |

Bu tablo hangi dosyanın ne zaman okunacağını gösterir. Adım içeriği dosyanın içindedir. Sıra katı bir süreç değildir. Sonraki adım öncekini yok saymaz.

**Her zaman ayakta, sıra numarası değil:**

- `references/06-core-principle.md` — karar ve bulgu formu
- `references/07-writing.md` — yazım kuralları (her mod)
- `references/08-review.md` — inceleme raporu ve hibritin rapor yarısı

## Adım çıktısı

Bir adımı okumak yetmez. O adımın çıktısı söylenebilmelidir. Yoksa adım atlanmış sayılır.

Bu tablo sırayı değil, adımın bitme koşulunu verir. İçerik `01`–`05` içindedir. İncelemede bu çıktılar rapora yazılmaz; her adım içeride söylenebilir veya atlandı + neden. Test hipotezi ekran/akış incelemesinde varsayılan açıktır; eleman incelemesinde atlanır. Ayrıntı `references/08-review.md`.

| Adım | Bitme koşulu |
|------|----------------|
| Bağlam | 5 eksen doldurulmuş, ya da "bilinmiyor; soruyorum çünkü X değişir" |
| Çelişki | Eksen bağlı çelişki listesi, ya da "yok" |
| Varlık | Eleman in/out + gerekçe. Gerekçesiz default: out |
| Veri durumları | Data-driven her eleman için empty / loading / error (+ ürüne özgü) |
| Hiyerarşi | Kümeler + maliyet→yenilik sırasının uygulandığı yer |
| Odak | Tarama deseni. Hiyerarşinin hangi araçla fiziksel olduğu |
| Konum | Uygula veya atla + amaç ekseninden neden |
| Aksiyon | Primary var mı. Metin. Yıkıcı ayrımı |
| Estetik | 4–6 named palet + gerekçe. Display/body. Bir imza öğesi |
| Erişilebilirlik | Keyboard, focus, semantik, isim, kontrast, hedef, reduced motion |
| Motion | Her animasyonun anlattığı değişim. Yoksa çıkar |
| Token | Semantic ad, pairing, ölçek. Ham değer yok |
| Implementasyon | Platform primitive. Token bağlı. Dead implementation yok |
| Tutarlılık | Visual / behavioral / semantic. Mevcut sistemle çakışma |
| Responsive | Ne küçülür, taşınır, gizlenir, yeniden sıralanır |
| Doğrulama | Ne render edilip bakıldı. Yapılamadıysa açıkça söyle |
| Test hipotezi | Gerekiyorsa 5sn / ilk tık / task completion. Yoksa "gerekmedi" |

## Nasıl kullanılır

- Yeni tasarım: `01` ile başla. Bağlam netleşince `02`.
- Bağlam zaten netse `02` ile başla.
- Yapı bitince `03` (palet, tipografi, imza).
- Estetik netleşince `04` (a11y, motion, token, kod).
- Kod yazıldıktan sonra `05`. Doğrulama ve varlık gerekçesi en sık atlanan iki kontroldür. Atlanmaz.
- İncele: analiz adım 1–17, rapor `08`, yazım `07`. Uymayan adım atlanır, nedeni söylenir.
- Gerekçe sorusu: `06`.
