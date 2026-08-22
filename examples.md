# Examples

Real examples demonstrating this skill. This file grows over time as new sessions contribute examples.

---

## Example: Gerekçesiz brief elemanı — hava durumu widget'ı tuzağı

**Context**: B2B e-ticaret analytics dashboard tasarımı. Brief'te açıkça talep edilmiş bir "hava durumu widget'ı" vardı; ürün bağlamının (satış takibi) bu elemanla hiçbir ilişkisi yoktu. Talep, framework'ü test etmek için kasıtlı yerleştirilmişti.

### Problem

İlk denemede widget üç hatayla tasarıma sızdı:

1. **Yanlış muafiyet:** §2'deki "düşük riskli estetik tercihlerde gereksiz direnç gösterme" kaçış kapısı, layout alanı tüketen bir içerik elemanına uygulandı.
2. **İspat yükünün ters çevrilmesi:** Eleman mockup'a dahil edilip footer'a "kaldırılabilir" dipnotu düştü. Varsayılan karar varlık oldu; çıkarma kararı kullanıcıya bırakıldı.
3. **Uydurma gerekçe:** "Belki hava duyarlı satışları vardır" varsayımı koruma bahanesi olarak kullanıldı.

### Solution

Framework'e üç kural eklendi:

- §2: Estetik muafiyeti görsel stil kararlarıyla sınırlandı; eleman varlığı/hiyerarşisi/layout alanı hariç tutuldu.
- §3: "Varsayılan karar ve ispat yükü" bölümü eklendi — gerekçesiz elemanın varsayılan kararı çıkarılması; asistan uydurma varsayımla eleman kurtaramaz; kaldırma kararı implementasyondan önce açıkça sunulmalıdır ("kaldırılabilir" dipnotu yeterli sayılmaz).
- §17: Geçersiz gerekçe listesine "Brief'te istendi." ve asistanın hipotetik senaryo üretmesi eklendi.

Doğru davranış: widget'ı tamamen çıkar + ilişkili CSS'i temizle (dead implementation) + kullanıcıya gerçek kullanım senaryosu sorusu bırak.

### Why This Works

Brief'te istenmiş olmak bir elemanın varlık gerekçesi değildir. Framework'ün çıktısı üzerindeki ispat yükü her zaman elemandadır; asistanın görevi elemanı savunmak değil, beş bağlam eksenine karşı test etmektir. Karar sahipliği de netleşir: çıkarır, alternatifini sunar, onaylanmış tasarım dışına çıkmadan kararı kullanıcıya açıkça sorar.

---
