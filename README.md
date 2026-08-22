# ux-monster

UI tasarımını bağlamdan başlayarak tasarım kararlarına, design tokenlarına, platform-uygun implementasyona ve doğrulamaya taşıyan framework.

Web, mobile, desktop ve framework-agnostic UI geliştirmelerinde kullanılır.

## Kurulum

Bu skill'i Claude Code ortamına eklemek için:

```bash
mkdir -p ~/.claude/skills
cp -r ux-monster ~/.claude/skills/ux-monster
```

veya repo'yu skill dizininize clone'layın.

## İçerik

- `SKILL.md` — Harita ve kullanım sırası (router)
- `references/01-context-and-conflict.md` — Bağlam (5 eksen) ve çelişki yönetimi
- `references/02-design-decisions.md` — Varlık gerekçesi, veri durumları, hiyerarşi, odak, aksiyon
- `references/03-aesthetic-identity.md` — Estetik kimlik
- `references/04-tokens-and-implementation.md` — Erişilebilirlik, motion, design tokenlar, implementasyon
- `references/05-consistency-and-validation.md` — Tutarlılık, responsive, doğrulama, test hipotezleri
- `references/06-core-principle.md` — Temel ilke ve karar zinciri
- `examples.md` — Gerçek kullanım örnekleri
- `troubleshooting.md` — Hata ve çözüm eşlemeleri
- `LICENSE.txt` — Lisans koşulları

Skill progressive disclosure ile çalışır: SKILL.md haritayı verir, her adıma gelindiğinde ilgili reference dosyası okunur.

## Kullanım

Skill yüklendikten sonra Claude Code, UI tasarım/implementasyon görevlerinde
`ux-monster` framework'ünü otomatik olarak kullanır.

## Lisans

Tüm koşullar [LICENSE.txt](LICENSE.txt) dosyasındadır.
