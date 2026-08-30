# ux-monster

UI tasarımını bağlamdan başlayarak tasarım kararlarına, design tokenlarına, platform-uygun implementasyona ve doğrulamaya taşıyan framework. Mevcut bir arayüzü adım 1–17 ile yargılar. Dahili yargı `08`'de süzülür; rapor aynı iskelete yazılır.

Web, mobile, desktop ve framework-agnostic UI geliştirmelerinde kullanılır.

## Kurulum

Claude Code:

```bash
mkdir -p ~/.claude/skills
cp -r ux-monster ~/.claude/skills/ux-monster
```

Grok:

```bash
mkdir -p ~/.grok/skills
cp -r ux-monster ~/.grok/skills/ux-monster
```

veya repo'yu skill dizininize clone'layın.

## İçerik

- `SKILL.md` — Mod, zincir, adım çıktısı (router)
- `references/01-context-and-conflict.md` — Bağlam (5 eksen) ve çelişki yönetimi
- `references/02-design-decisions.md` — Varlık gerekçesi, veri durumları, hiyerarşi, odak, aksiyon
- `references/03-aesthetic-identity.md` — Estetik kimlik
- `references/04-tokens-and-implementation.md` — Erişilebilirlik, motion, design tokenlar, implementasyon
- `references/05-consistency-and-validation.md` — Tutarlılık, responsive, doğrulama, test hipotezleri
- `references/06-core-principle.md` — Temel ilke ve karar zinciri (her zaman ayakta)
- `references/07-writing.md` — Yazım kuralları (her mod)
- `references/08-review.md` — Dahili yargı, rapor iskeleti, hibritin rapor yarısı
- `examples.md` — Gerçek kullanım örnekleri
- `troubleshooting.md` — Hata ve çözüm eşlemeleri
- `LICENSE.txt` — Lisans koşulları

Skill progressive disclosure ile çalışır: SKILL.md haritayı verir, her adıma gelindiğinde ilgili reference dosyası okunur.

## Kullanım

İncele = adım 1–17 analiz, `08` dahili yargı ve rapor. Düzelt / tasarla = kod. Review et ve düzelt = önce rapor, sonra "Önce bunlar", render, yeniden incele. Tasarım dosyaları `01` → `05`. Yazım `07`. Form `06`.

## Lisans

Tüm koşullar [LICENSE.txt](LICENSE.txt) dosyasındadır.
