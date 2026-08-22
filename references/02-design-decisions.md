# 3. Varlık Gerekçesi

Hiyerarşi kurmadan önce ekrana girecek her elemanın gerçekten orada bulunması gerekip gerekmediğini sorgula.

Her elemanın beş bağlam ekseninden (kullanıcı, amaç, zaman/dikkat, kullanım koşulu, medyum) en az biriyle ilişkisi olmalıdır. Sor: *"Bu eleman hangi kullanıcı ihtiyacına hizmet ediyor?"* veya *"Bu eleman hangi ürün amacını destekliyor?"*

Gerekçe bulunamıyorsa eleman muhtemelen alışkanlıktan, başka ürünlerden kopyalanarak, "dashboard'da böyle olur" düşüncesiyle veya dekoratif amaçla eklenmiştir. Bu durumda ya kaldır, ya da gerekçesini netleştir.

## Brief'te istenmiş olması yeterli değildir

Kullanıcının brief'i de hatalı veya şablonlaşmış olabilir. Örneğin *"Dashboard'a 6 tane metric card ekle"* talebi, 6 kartın gerçekten gerekli olduğunu kanıtlamaz. Talep edilen elemanın varlığı, hiyerarşisi, görsel ağırlığı ve konumu ayrı ayrı değerlendirilmelidir — talep edilmiş olmak varlık gerekçesi değildir.

## Varsayılan karar ve ispat yükü

Gerekçe bulunamayan bir eleman için varsayılan karar çıkarılmasıdır. İspat yükü elemanı savunan taraftadır; asistan, kullanıcının veya ürünün hiç belirtmediği varsayımları üreterek ("belki mevsimsel satışları vardır" gibi) elemanı kurtaramaz.

Kullanıcı tarafından açıkça talep edilmiş olsa bile: çıkar, alternatifini sun, kararı implementasyondan önce kullanıcıya açıkça sor. Elemanı tasarıma dahil edip "kaldırılabilir" dipnotu düşmek, kararı kullanıcıya bırakmak sayılmaz.

---

# 4. Veri Durumları

Tasarım yalnızca dolu ve başarılı veri durumuna göre yapılmaz. Veri kullanan her önemli UI elemanı için en az şu durumları düşün:

## Empty

Veri hiç yok. Boş ekran kullanıcıyı çıkmaza sokmamalıdır. Mümkünse durumu açıkla, neden boş olduğunu belirt, bir sonraki anlamlı aksiyonu öner. *"Henüz veri yok"* yerine gerektiğinde *"Henüz siparişiniz yok. İlk siparişinizi almak için mağazanızı yayınlayın"* gibi bağlama uygun yönlendirme kullanılabilir.

## Loading

Veri yükleniyor. Loading davranışı verinin beklenen hızına göre belirlenir. Uzun süren yüklemelerde skeleton, progressive rendering veya placeholder kullanılabilir. Çok hızlı işlemlerde gereksiz skeleton görsel titreşim yaratabilir — her yerde skeleton kullanmak zorunlu değildir.

## Error

Veri alınamadı. Hata mesajı kullanıcıyı suçlamamalı, mümkün olduğunca spesifik olmalı, mümkünse çözüm sunmalıdır. *"Veriler alınamadı. Tekrar dene"* gibi bir mesaj, yalnızca *"Bir hata oluştu"* mesajından daha kullanışlıdır.

## Diğer önemli durumlar

Ürünün doğasına göre ayrıca düşün: partial data, stale data, offline, permission denied, disabled, success, optimistic update, validation error, destructive confirmation. Veri kullanan bir bileşenin yalnızca happy path'i tasarlanmışsa tasarım tamamlanmış sayılmaz.

---

# 5. Hiyerarşi

Varlık gerekçesinden geçen elemanların önem sırasını belirle. Elemanları tek tek değil, fonksiyonel kümeler halinde değerlendir — örneğin notification header, search controls, form fields, result list, pagination. Birlikte anlam kazanan elemanlar fiziksel olarak birbirinden koparılmamalıdır.

**Küme bütünlüğü, eşit görsel ağırlık anlamına gelmez.** Aynı kümedeki elemanlar sayfada birbirinden uzaklaştırılmaz, ama kümenin kendi içinde bir iç hiyerarşi olabilir. Örneğin bir login formunda e-posta/şifre alanları ile "şifremi unuttum" bağlantısı aynı kümededir ve koparılmaz, ama aynı görsel ağırlığı taşımaz.

## Hiyerarşi öncelik sırası

Çatışma olduğunda şu sırayı kullan — bunlar eşit ağırlıklı bir puanlama değil, üstteki sorunun alttakini domine ettiği bir sıralamadır:

**1. Maliyet.** Kaçırılması veya yanlış kullanılması ne kadar pahalı? Geri döndürülemez işlemler, güvenlik, para, veri kaybı, kritik uyarılar yüksek maliyetlidir. Yüksek maliyet her zaman "büyük ve parlak" anlamına gelmez — çoğu zaman ayrıştırma, mesafe, confirmation veya uygun interaction daha doğru çözümdür.

**2. Karar bağımlılığı.** Kullanıcı bir sonraki adıma geçmeden önce bunu bilmek zorunda mı?

**3. Görev bağıntısı.** Ekranın ana işiyle ne kadar ilişkili?

**4. Sıklık.** Kullanıcı bunu ne kadar sık kullanıyor?

**5. Yenilik.** Kullanıcının bunu zaten bilmesi mi bekleniyor, yoksa yeni bir bilgi mi? Beklenmedik bilgiler biraz daha fazla görsel destek gerektirebilir.

Bir eleman birden fazla eksende çatışan sinyaller veriyorsa (örn. düşük sıklık ama yüksek maliyet), üstteki soru kazanır. "Önemli görünüyor" hissi tek başına yeterli gerekçe değildir; hangi sorunun hangi kararı tetiklediği söylenebilmelidir.

---

# 6. Odak

Hiyerarşi "ne önemli?" sorusunu cevaplar. Odak ise "kullanıcının gözü oraya nasıl gidecek?" sorusunu cevaplar. Hiyerarşi şu araçlarla fiziksel hale getirilir: boyut, kontrast, konum, boşluk, tipografi, density, grouping. Renk tek başına hiyerarşiyi taşımamalıdır.

## Tarama desenleri

Sayfanın türünü dikkate al. İçerik ağırlıklı sayfalarda (makaleler, arama sonuçları, uzun listeler) F-benzeri tarama görülebilir: göz üstte geniş bir yatay tarama yapar, altta daha kısa bir yatay tarama yapar, sonra sol kenar boyunca dikey iner — sağ taraf ve alt kısımlar çok daha az görülür.

Aksiyon ağırlıklı sayfalarda (landing page, hero, basit form) Z-benzeri tarama kullanılabilir: sol üstten sağ üste, çapraz olarak sağ üstten sol alta, sonra sol alttan sağ alta — bu son nokta genelde primary action için en doğal yerdir.

Bunları mekanik kurallar olarak kullanma. Kullanıcı araştırması, içerik yapısı ve gerçek kullanım davranışı daha güçlü kanıtlardır.

## Karma sayfalar ve çoklu persona

Dashboard gibi karma ekranlarda veya "Kim kullanıyor?" ekseninde birden fazla persona farklı derinlikte hizmet bekliyorsa, tek bir tarama desenini bütün sayfaya mekanik olarak zorla uygulama. Sayfayı dikey katmanlara ayır: üst katman en hızlı/en sık ihtiyacı (genelde Z-benzeri bir özet — durum, uyarı, ana trend) karşılar, alt katman derinlemesine inceleme ihtiyacını (genelde F-benzeri bir tarama — tablolar, detaylı listeler) karşılar. Her katmanın kendi iç deseni olur; hızlı bakan kullanıcı üst katmanda işini bitirip çıkabilir, derinlemesine inceleyen kullanıcı aşağı inmeye devam eder — biri diğerinin akışını bozmaz.

---

# 7. Konum Farkındalığı

Odak, göz sayfanın *içinde* nereye gider sorusunu cevaplar. Bu bölüm daha geniş bir soruyu cevaplar: kullanıcı, ekranın daha büyük bir sistemin neresinde olduğunu biliyor mu — nereden geldi, şu an nerede, buradan nereye gidebilir?

**Bu, her ürün için aynı ağırlıkta değildir — "Ne başarmak istiyor?" ekseninden türer.**

Görev-odaklı, çok adımlı ürünlerde (form akışı, admin panel, checkout, onboarding) konum farkındalığı kritiktir. Kullanıcı bir hedefe doğru ilerliyor; nerede olduğunu bilmezse hedefe ulaşamaz, yanlış adımda kaybolur veya geri dönmesi gerektiğinde nasıl döneceğini bulamaz. Bu durumda: persistan navigasyon her ekranda aynı yerde durmalı, aktif durum (breadcrumb, sekme vurgusu, adım göstergesi — "3/5") görsel olarak belirgin olmalı, sayfa başlığı kullanıcının hiyerarşideki konumunu bir bakışta söylemeli.

Akış/tüketim-odaklı ürünlerde (sosyal medya feed'i, story, reels, sürekli scroll) konum farkındalığı kasıtlı olarak minimize edilir. Bu bir eksiklik değildir — kullanıcının amacı "sistemde nerede olduğunu bilmek" değil, "bir sonraki içeriği görmek"tir; gezinme hedefe doğru lineer bir ilerleme değil, sürekli bir akıştır. Böyle bir üründe zorla breadcrumb, başlık veya "neredesin" göstergesi eklemek gereksiz bilişsel yük ve görsel gürültü yaratır, Odak bölümündeki hiyerarşiyi de zayıflatır çünkü ekranın asıl işi (içeriği göstermek) ikinci plana düşer.

**Karar kuralı:** Ekran çok adımlı bir akışın parçasıysa veya kullanıcı birden fazla bölüm arasında amaçlı şekilde gezmesi gerekiyorsa, konum farkındalığı uygulanır. Ekran tek amaçlı ve izole ise (bir login formu, bir onay modalı) veya ürünün doğası akış/tüketim temelliyse, zorla eklenmez.

---

# 8. Aksiyon Netliği

Bir aksiyonun yalnızca görünmesi yeterli değildir. Kullanıcı şunları anlamalıdır: Bu bir aksiyon mu? Ne yapacak? Şimdi yapmak doğru mu? Sonucu ne olacak?

## Primary action zorunlu değildir

Her ekranın primary button'a ihtiyacı yoktur. Bilgi ağırlıklı ekranlarda (dashboard, rapor, salt okunur liste görünümü) ekranın işi bir eylem tetiklemek değil, bilgi sunmaktır — böyle bir ekranda zorla bir "primary button" yaratmaya çalışmak yapay bir hiyerarşi icat eder. Önce şunu sor: bu ekranın gerçek bir birincil aksiyonu var mı? Varsa aşağıdaki kurallar uygulanır. Yoksa yardımcı kontroller (export, filtre gibi) "belirgin ama ölçülü" tutulur, ekranın asıl görsel ağırlığı içeriğin/verinin kendisinde kalır.

Gerçek bir primary action varsa, aynı bağlam içinde birden fazla elemanı primary gibi gösterme. Diğer aksiyonları secondary, tertiary veya text action olarak ayrıştır. Bu aynı zamanda tutarlılık meselesidir — bir sayfada tek primary varken başka bir sayfada üç tane "primary görünümlü" buton olması, kullanıcının öğrendiği görsel dili geçersiz kılar.

## Affordance

Interaktif eleman interaktif görünmelidir. Platformun doğal interaction affordance'larını kullan. Kullanıcı "buna tıklanıyor mu?" diye düşünmemelidir.

## Aksiyon metni

Belirsiz ifadeleri azalt: "Devam Et" yerine "Ödemeye Geç", "Onayla" yerine "Siparişi Onayla" — kullanıcıya daha fazla bağlam sağlar.

## Destructive actions

Yıkıcı aksiyonlar normal primary action ile aynı görsel dilde olmamalıdır. Gerektiğinde fiziksel ayrıştırma, farklı görsel ton, confirmation veya undo kullan.
