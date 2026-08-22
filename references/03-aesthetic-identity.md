# 9. Estetik Kimlik

Buraya kadarki bölümler bilgi mimarisini yönetir — hangi eleman var, ne kadar önemli, göz nereye gider. Bu bölüm farklı bir soruyu cevaplar: **bu arayüz neden başka bir arayüz gibi görünmüyor?**

Yapısal olarak doğru kurulmuş bir ekran hâlâ jenerik görünebilir. AI ile üretilen arayüzler sık sık birkaç tanıdık kalıba düşer — örneğin neredeyse siyah bir arka plan üzerine tek bir parlak vurgu rengi (indigo, mor), ya da sıcak krem bir zemin üzerine yüksek kontrastlı serif başlık ve toprak tonu vurgu, ya da köşesiz, ince çizgili gazete-grid düzeni. Bunların hiçbiri kendi başına yanlış değildir — sorun, bu paletlerin **brief'ten değil, alışkanlıktan** seçilmiş olmasıdır. Bir login ekranı, bir dashboard, bir landing page — hepsi aynı üç kalıptan birine düşüyorsa, estetik kimlik değil, şablon vardır.

## Estetik karar da bir gerekçe ister

Varlık Gerekçesi bölümündeki mantık palete ve tipografiye de uygulanır. Palet seçimi beş bağlam ekseninden (kullanıcı, amaç, zaman/dikkat, kullanım koşulu, medyum) en az birine bağlanabilmelidir. "Modern görünüyor" veya "SaaS ürünlerinde böyle olur" bir gerekçe değildir. Örneğin bir gece kullanılan uyku uygulamasında koyu, düşük parlaklıklı bir palet kullanım koşulundan gelir — bu meşrudur. Ama aynı koyu+indigo palet bir muhasebe aracına da otomatik uygulanıyorsa, bu bağlamdan değil, "SaaS böyle görünür" şablonundan gelmiştir.

## Somutlaştırma: token seçmeden önce bir palet/tipografi planı çıkar

Design Tokens bölümüne (`references/04-tokens-and-implementation.md`) geçmeden önce kısa bir plan kurulmalı:

- **Palet:** 4-6 adlandırılmış renk (hex ile), her biri için kısa bir gerekçe.
- **Tipografi:** En az iki rol için yazı tipi karakteri (display ve body; gerekirse veri/caption için üçüncü bir utility yazı tipi) — aynı iki fontu her projede tekrar etme, brief'in karakterine göre seçim yap.
- **Bir imza öğesi:** Bu ekranın akılda kalacağı tek özgün detay (bir grafik tarzı, bir mikro-etkileşim, bir tipografik vurgu). Boldluğu bir yerde harcayıp gerisini sakin tutmak, her yeri eşit derecede "ilginç" yapmaya çalışmaktan daha güçlü sonuç verir.

## Jeneriklik kontrolü

Plan çıktıktan sonra kendine şunu sor: *"Bu paleti/tipografiyi, brief'i hiç okumadan, sadece 'bu bir [ürün türü]' bilgisiyle de üretir miydim?"* Cevap evetse, seçim brief'ten değil kategoriden geliyor demektir — bu bir uyarı işaretidir, zorunlu olarak değiştirilmesi gerekmez ama bilinçli bir seçim olduğu teyit edilmelidir.

## Estetik özgürlük, yapısal disiplinle çelişmez

Bu bölüm belirli bir stile (minimalist, brutalist, glassmorphism, Material, vb.) zorlamaz. Herhangi bir estetik yön seçilebilir. Ama seçilen estetik, bağlamdan bağımsız bir varsayılan başlangıç noktası olmamalıdır — Hiyerarşi ve Odak bölümlerindeki yapısal kararlar estetik seçimden bağımsız çalışır; palet değişse de hiyerarşi ayakta kalmalıdır (bkz. `references/05-consistency-and-validation.md`, Grayscale validation).
