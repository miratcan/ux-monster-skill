---
name: ux-monster
description: UI tasarımını bağlamdan başlayarak tasarım kararlarına, estetik kimliğe, design tokenlarına, platform-uygun implementasyona ve doğrulamaya taşıyan framework. Web, mobile, desktop ve framework-agnostic UI geliştirmelerinde kullanılır.
license: Tüm koşullar LICENSE.txt dosyasındadır.
---

# Frontend Tasarımı ve Implementasyonu

İyi bir arayüz yalnızca güzel görünen bir ekran değildir.

İyi bir arayüz:

1. doğru kullanıcıya,
2. doğru bağlamda,
3. doğru işi yaptırır,
4. tüm veri durumlarında ayakta kalır,
5. doğru görsel hiyerarşiyi kurar,
6. kendine ait, jenerik olmayan bir estetik kimliğe sahiptir,
7. erişilebilir ve anlaşılırdır,
8. kullanılan platformun doğal kurallarına uyar,
9. tutarlı bir görsel sistem içinde kalır,
10. gerçek implementasyonda tasarım kararlarını kaybetmez,
11. ve render edilerek doğrulanabilir.

## Zincir

Bu skill, UI üretimini şu zincir üzerinden ele alır. Zincirdeki her adım ayrı bir referans dosyasına karşılık gelir ve **o adıma gelindiğinde ilgili dosya okunur** — hepsi baştan tek seferde yüklenmez:

| # | Adım | Dosya |
|---|------|-------|
| 1 | Bağlamı Netleştir (5 eksen) | `references/01-context-and-conflict.md` |
| 2 | Çelişki Varsa Söyle | `references/01-context-and-conflict.md` |
| 3 | Varlık Gerekçesi | `references/02-design-decisions.md` |
| 4 | Veri Durumları | `references/02-design-decisions.md` |
| 5 | Hiyerarşi | `references/02-design-decisions.md` |
| 6 | Odak | `references/02-design-decisions.md` |
| 7 | Konum Farkındalığı | `references/02-design-decisions.md` |
| 8 | Aksiyon Netliği | `references/02-design-decisions.md` |
| 9 | Estetik Kimlik | `references/03-aesthetic-identity.md` |
| 10 | Erişilebilirlik | `references/04-tokens-and-implementation.md` |
| 11 | Motion | `references/04-tokens-and-implementation.md` |
| 12 | Design Tokens | `references/04-tokens-and-implementation.md` |
| 13 | Implementation | `references/04-tokens-and-implementation.md` |
| 14 | Tutarlılık | `references/05-consistency-and-validation.md` |
| 15 | Responsive/Adaptive | `references/05-consistency-and-validation.md` |
| 16 | Doğrulama | `references/05-consistency-and-validation.md` |
| 17 | Kullanıcı Testi Hipotezi | `references/05-consistency-and-validation.md` |
| 18 | Temel İlke | `references/06-core-principle.md` |

Bu sıralama katı bir süreç değildir; eksenler birbirini besler. Ancak bir sonraki aşama, önceki aşamadaki önemli kararları yok saymamalıdır.

## Nasıl kullanılır

Bir UI görevine başlarken önce bu dosyayı (SKILL.md) oku — bu sana tüm haritayı ve sırayı verir. Sonra göreve göre ilerle:

- Yeni bir tasarım kararına başlıyorsan `references/01-context-and-conflict.md` ile başla, bağlam netleşince `references/02-design-decisions.md`'ye geç.
- Bağlam zaten netse (kullanıcı önceki mesajda vermişse veya mevcut projeden çıkarılabiliyorsa) doğrudan `references/02-design-decisions.md`'den başlayabilirsin.
- Yapısal kararlar (hiyerarşi, odak, aksiyon) bitince `references/03-aesthetic-identity.md`'ye geç — palet/tipografi/imza öğesi kararını burada ver.
- Estetik kimlik netleşince `references/04-tokens-and-implementation.md`'ye geç — erişilebilirlik, motion, token sistemi ve kod implementasyonu burada.
- Kod yazıldıktan sonra `references/05-consistency-and-validation.md`'ye geç — tutarlılık kontrolü, responsive davranış, render/grayscale doğrulaması burada zorunlu adımlardır.
- Zincirin bütününe dair bir gerekçelendirme sorusu ("bu karar neden bu şekilde") ortaya çıkarsa `references/06-core-principle.md`'ye bak.

Bir dosyayı okumadan o dosyanın kapsamındaki adımı atlama — özellikle Doğrulama (`references/05-consistency-and-validation.md`) ve Varlık Gerekçesi (`references/02-design-decisions.md`) adımları, sık atlanan ama framework'ün en kritik iki kontrol noktasıdır.
