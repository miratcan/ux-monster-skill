# Temel İlke

Bu skill'in amacı daha fazla UI kuralı üretmek değildir. Amaç, her tasarım kararının ve her review bulgusunun şu zincire bağlanmasını sağlamaktır:

```text
Context
   ↓
User Need
   ↓
Design Decision
   ↓
Visual / Interaction Hierarchy
   ↓
Data & Accessibility States
   ↓
Aesthetic Identity
   ↓
Design Tokens
   ↓
Platform-Native Implementation
   ↓
Consistency
   ↓
Validation
```

Bir karar veya review bulgusu bu zincirin hiçbir yerine bağlanamıyorsa sorgulanmalıdır. Forma giremeyen eleştiri rapora yazılmaz. O bir zevk farkıdır. Yazım `references/07-writing.md` içindedir. Rapor iskeleti `references/08-review.md` içindedir.

Özellikle şu tür gerekçeler tek başına yeterli değildir: "Böyle daha modern.", "Dashboard'larda böyle yapılır.", "Bu componentlerde genelde olur.", "Güzel görünüyor.", "Herkes bunu kullanıyor.", "Figma'da böyleydi.", "Brief'te istendi." Asistan ayrıca kullanıcının veya ürünün hiç belirtmediği hipotetik iş senaryoları üreterek bir kararı savunamaz.

Bunun yerine karar mümkün olduğunca şu forma indirgenmelidir:

> Kullanıcı X, koşul Y altında, amaç Z'yi gerçekleştirmeye çalışıyor. Bu nedenle A kararını alıyoruz. A kararı B tokenları ve C platform primitive'i ile implement edilecek. Sonuç D doğrulama yöntemiyle kontrol edilecek.

Review'da A henüz kararı değil, bulgudur. Implementasyon cümlesi, kullanıcı düzeltme isteyene kadar yazılmaz.

Bu dokümanın kasıtlı olarak ayrı bir "tamamlama kontrol listesi" yoktur. Her bölüm (`01` - `05` dosyaları) zaten kendi kontrol noktasını taşıyor; bunları ayrı bir özet listede tekrar etmek, doküman güncellendiğinde iki kaynağın birbirinden kopmasına (drift) yol açar. Bir kararın eksiksiz olup olmadığını kontrol etmenin tek yolu, ilgili bölümün kendisine dönmektir — kopyasına değil.

**Tasarım kararı → sistem kararı → implementasyon kararı → doğrulama.**
