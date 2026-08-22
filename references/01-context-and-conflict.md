# 1. Bağlamı Netleştir

Tasarım kararları alınmadan önce şu beş eksen anlaşılmış olmalıdır. Bunlar katı bir sıra değildir; birbirini besler.

## Kim kullanıyor?

Rol, ihtiyaç, deneyim seviyesi ve kullanım amacı. "Yazılım evleri için araç" yeterli değildir. Muhasebeci mi, CEO mu, mühendis mi, müşteri mi kullanacak?

Bir ekran birden fazla kullanıcı tipine hizmet edebilir. Örneğin: hızlı kontrol yapan yönetici, detaylı analiz yapan uzman. Bu durumda tek bir persona seçmeye çalışma. Her persona için temel amaç, dikkat süresi, bilgi ihtiyacı ve kullanım sıklığı ayrı ayrı çıkarılır. Bu farklı ihtiyaçlar daha sonra Hiyerarşi ve Odak bölümlerinde katmanlı bilgi sunumu ile çözülür.

## Ne başarmak istiyor?

Kullanıcının ekrandaki gerçek işi nedir? Bilgi almak, karar vermek, veri girmek, işlem tamamlamak, bir problemi çözmek, güven kazanmak, bir şeyi keşfetmek, içerik tüketmek. Aynı kullanıcı için bile amaç değiştiğinde tasarım değişebilir.

## Ne kadar zaman ve dikkat ayıracak?

Kullanıcının deneyime ayırabileceği bilişsel yükü düşün. Bazı ürünler kullanıcıyı içeride tutmayı amaçlar; bazılarında en iyi deneyim kullanıcının işi mümkün olduğunca hızlı bitirip çıkmasıdır. Örneğin: sosyal medya → keşif ve devamlılık; muhasebe girişi → hız ve düşük bilişsel yük; acil durum arayüzü → hızlı algılama ve düşük hata toleransı. Mesele yalnızca ekranın ne kadar süre açık kaldığı değil, kullanıcının o anda ne kadar dikkat ayırabileceğidir.

## Hangi fiziksel veya durumsal koşulda kullanıyor?

Küçük ekran, büyük ekran, düşük ışık, parlak ortam, gürültülü ortam, ellerin meşgul olması, hareket halinde kullanım, dokunmatik kullanım, klavye ağırlıklı kullanım, dikkat dağınıklığı. Aynı kullanıcı farklı koşullarda farklı bir arayüze ihtiyaç duyabilir.

## Medyum ve hedef cihaz nedir?

Web, mobile, desktop, native app, cross-platform app, başka bir UI ortamı. Platform belirtilmemişse sessizce varsayma — hangi medyumun seçildiği açıkça belirtilmelidir.

Platform tek başına yeterli değildir. "Desktop web" çok geniş bir tanımdır: küçük laptop, büyük monitör, düşük/yüksek çözünürlük, touch+mouse, keyboard-first kullanım tasarımı etkileyebilir. Gerekliyse hedef viewport veya cihaz sınıfını belirle.

## Mevcut bağlamı önce araştır

Mevcut ürün, kod tabanı, mevcut component library, design system, design tokens, mevcut ekranlar, kullanıcı konuşmaları, ürün dokümantasyonu ve önceki tasarım kararlarından mümkün olduğunca bilgi çıkar. Zaten bilinen bir şeyi tekrar sorma.

## Ne zaman soru sorulur?

Her belirsizlik kullanıcıya soru olarak geri dönmemelidir. Salt görsel tercih seviyesindeki belirsizliklerde makul bir varsayım yap ve bunu belirt.

Ancak belirsizlik şunlardan birini değiştirecekse dur ve sor: bilgi mimarisi, kullanıcı akışı, persona, platform, kritik interaction modeli, veri modeli, güvenlik açısından kritik davranış. Örneğin *"Bu tek ekranlı bir işlem mi, yoksa çok adımlı bir workflow mu?"* gibi bir soru, sonraki tüm tasarımı değiştirebilir.

---

# 2. Çelişki Varsa Söyle

Kullanıcının isteği netleşmiş bağlamla ciddi biçimde çelişiyorsa bunu sessizce uygulama. Şu modeli kullan:

1. Çelişkiyi belirt.
2. Neden problem olduğunu açıkla.
3. Daha uygun alternatifi öner.
4. Kullanıcının kararına bırak.

Örneğin: *"Gece kullanılan bir uyku uygulaması için yüksek parlaklıklı beyaz bir arayüz istiyorsun. Bu, kullanım koşulu ve ürün amacıyla çelişiyor çünkü düşük ışıkta görsel yükü artırabilir. Daha düşük parlaklıklı koyu bir yüzey öneriyorum; beyazı vurgu olarak kullanabiliriz."*

**Bir çelişki iddiası, beş bağlam ekseninden birine somut olarak bağlanabilmelidir.** "Bu iyi bir fikir değil" veya "genelde böyle yapılmaz" bir çelişki gerekçesi değildir — Varlık Gerekçesi bölümündeki aynı disiplin burada da geçerlidir. Hangi eksene (kim, amaç, zaman/dikkat, kullanım koşulu, medyum) hangi şekilde çarptığı gösterilemiyorsa, bu bir çelişki değil, bir zevk farkıdır ve kullanıcının kararına saygı duyulur. Bu ayrım, düşük riskli her stil tercihine itiraz etme eğilimini (over-policing) önler — itiraz yalnızca somut bir eksen çatışması gösterilebildiğinde meşrudur.
