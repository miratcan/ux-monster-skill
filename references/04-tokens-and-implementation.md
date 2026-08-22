# 10. Erişilebilirlik

Accessibility sonradan eklenen bir polish aşaması değildir, tasarım kararlarının parçasıdır. En azından şunları düşün: keyboard navigation, focus visibility, semantic interaction primitives, screen reader semantics, accessible names, contrast, touch target size, reduced motion, error communication, form labeling.

## Native interaction primitives

Platformun semantik ve erişilebilir primitive'lerini tercih et. Web: gerçek button, gerçek link, gerçek form control. Mobile: platformun native interactive controls. Amaç, görsel olarak istediğin şeyi üretirken platformun erişilebilirlik modelini kaybetmemektir.

## İkon-only kontroller

Sadece ikonla gösterilen kontroller erişilebilir bir isim taşımalıdır — örneğin "Close" anlamı kullanıcıya programatik olarak da aktarılmalıdır.

## Kontrast

Genel WCAG referansları: normal metin en az 4.5:1, büyük metin en az 3:1. Kontrastı yalnızca metin için düşünme — focus indicators, controls, icons, meaningful graphical elements için de değerlendir.

---

# 11. Motion

Hareket yalnızca süs değildir. Her animasyon şu soruya cevap verebilmelidir: *"Bu hareket kullanıcıya hangi değişimi veya sonucu anlatıyor?"*

Geçerli kullanım örnekleri: durum değişimini göstermek, yeni bir elemanın geldiğini belirtmek, interaction sonucunu göstermek, spatial relationship'i açıklamak. Amaçsız animasyon kaldırılmalıdır.

## Reduced motion

Kullanıcı hareketi azaltmayı tercih ediyorsa animasyon kaldırılabilir, kısaltılabilir veya opacity gibi düşük hareketli bir feedback ile değiştirilebilir.

---

# 12. Design Tokens

Design tokenlar implementasyon detayından önce tasarım sisteminin anlam katmanıdır. Bir token seçerken "bu değerin ne olduğunu" değil, "bu değerin sistem içinde ne anlama geldiğini" tanımla.

## Semantic tokens

Tokenlar kullanım anlamını ifade etmelidir: `background`, `on-background`, `surface`, `on-surface`, `surface-muted`, `primary`, `on-primary` gibi. Yalnızca `blue-500`, `gray-700` gibi görsel değer isimlerine bağımlı bir sistem kurma. Primitive/color scale gerekiyorsa semantic tokenların altında kullanılabilir.

## Color pairing

Her önemli surface/background için uygun foreground ilişkisi tanımla: `background → on-background`, `surface → on-surface`, `primary → on-primary`. Bir `on-*` tokenı ait olmadığı surface üzerinde kullanılmamalıdır — bu isimlendirme yanlış kullanımı engelleyen bir contract görevi görür.

Renk yalnızca estetik değil, anlam taşımalıdır. Benzer anlam seviyesindeki elemanlar benzer görsel ağırlığa sahip olmalıdır — bu ilkenin sistem genelinde nasıl korunacağı `references/05-consistency-and-validation.md` (Visual consistency) içinde ele alınır.

## Opacity ile renk anlamı değiştirme

Metin ve semantik renkleri opacity ile "muted" hale getirme; bunun yerine `on-surface-muted` gibi bir semantic token oluştur. Opacity; shadow, backdrop, overlay, transparan dekoratif efektler için kullanılabilir. Interactive disabled/loading gibi durumlarda opacity kullanılabilir, ancak erişilebilirlik etkisi ayrıca değerlendirilmelidir.

## Typography scale

Tipografik ölçeği küçük ve anlamlı tut: `sm`, `md`, `lg`, `xl` gibi. `md`, platformun anlamlı body/default text anchor'ına karşılık gelmelidir. Yeni bir font size gerektiğinde önce "gerçekten yeni bir semantic level gerekiyor mu?" diye sor — her component için yeni bir sayı üretme.

## Spacing scale

Spacing için de sınırlı bir ölçek kullan (`sm`, `md`, `lg`, `xl`). Tasarımda sürekli `13`, `19`, `27`, `37` gibi özel değerler ortaya çıkıyorsa önce scale'in yetersizliğini değil, tasarım kararını sorgula.

## Motion tokens

Animasyon süresi ve easing de sistematik bir token seti olmalı, her component kendi rastgele değerini seçmemeli. Küçük ve anlamlı bir ölçek yeterlidir: örneğin `duration-fast` (mikro-etkileşimler — hover, focus), `duration-base` (standart geçişler), `duration-slow` (büyük layout değişimleri, modal giriş/çıkışı); benzer şekilde `easing-standard`, `easing-decelerate`, `easing-accelerate` gibi birkaç semantic easing eğrisi. Bölüm 11'deki "her animasyon bir değişimi anlatmalı" ilkesi burada da geçerlidir — yeni bir duration/easing değeri gerektiğinde önce gerçekten yeni bir semantic durum mu, yoksa mevcut ölçeğin bir varyasyonu mu olduğu sorgulanmalıdır.

## Tokenların ömrü

Kullanılmayan token kaldırılmalı, yeni UI ekleniyorsa gerektiğinde token oluşturulmalı, component siliniyorsa yalnızca o component için kullanılan tokenlar temizlenmelidir. "İleride lazım olur" diye token üretme.

---

# 13. Implementation

Tasarım kararları implementasyon sırasında yeniden yorumlanmamalıdır. Implementasyonun görevi, tasarım kararlarını kullanılan platformun doğal primitive'leriyle doğru biçimde gerçekleştirmektir.

## Platform semantiği

Her platformun doğal primitive'lerini kullan. Web: semantic HTML, native form controls, CSS, accessible interaction semantics. React/Vue/Svelte: framework abstraction'ları kullanılabilir, ancak abstraction'ın altında platformun doğru primitive'i bulunmalıdır. Mobile: platformun native semantics ve interaction modelleri. Amaç teknolojiye bağımlı bir syntax standardı değil, doğru semantic primitive kullanmaktır.

## Görünüş ile semantiği ayır

Bir element yalnızca görünüşü nedeniyle yanlış primitive ile implement edilmemelidir. Bir eleman link button gibi görünmek istiyorsa önce "gerçekten button mu, gerçekten navigation mı?" sorusuna karar ver, sonra görsel görünüşünü uygula. "Her şeyi div yapıp CSS ile düzeltme" yaklaşımı kullanılmamalıdır.

## Layout

Layout abstraction'ları görsel görünüşe göre değil yapısal role göre adlandır. İyi: `SidebarLayout`, `Stack`, `Cluster`, `Grid`, `PageShell`, `ContentWrapper`. Kötü: `BlueBox`, `ProfileLeftThing`, `HomepageContainer`, `BigCardWrapper`. Component veya class adı sayfanın tesadüfi görünüşüne değil, tekrar kullanılabilir yapısına işaret etmelidir.

## Wrapper pattern

Full-width semantic bölgeler kendi dış yüzeylerini korumalıdır. `Header → ContentWrapper` yapısı genellikle `ContentWrapper → Header` yapısından daha doğrudur — böylece semantic/full-width bölge background, border, shadow gibi özellikleri viewport genişliğinde taşıyabilir.

## Styling

Style implementasyonu design token sistemine bağlanmalıdır. `padding = 16` gibi ham değerleri gereksiz yere component içinde tekrar etme; semantic spacing tokenı kullanılmalıdır. Renk, typography, radius, elevation, spacing, motion duration gibi sistematik değerler mümkün olduğunca tokenlardan gelmelidir. Platform bu tokenları farklı biçimde implement edebilir (Web → CSS custom properties, React Native → theme/token object, SwiftUI → environment/theme abstraction) — temel kural değişmez: component doğrudan rastgele değer seçmez, tasarım sistemindeki anlamlı tokenı kullanır.

## Component sınırları ve scope

Component sınırları sorumluluk, yeniden kullanım, state ve semantic yapı üzerinden belirlenmelidir. Bir component'in stil veya davranış kuralları başka componentleri istemeden etkilememelidir — platformun sağladığı encapsulation yöntemini (CSS Modules, scoped styles, framework-specific encapsulation) kullan. Global stiller yalnızca gerçekten global olan kurallar için kullanılmalıdır.

## Dead implementation

Kullanılmayan style, token, component, layout class, variant veya asset bırakma. Bir UI değiştirildiğinde implementasyonun ilgili parçaları aynı değişiklik kapsamında temizlenmelidir.
