# Troubleshooting

Error → solution mappings for quick reference. This file grows over time as new error cases are discovered.

---

## Error: Gerekçesiz brief elemanı tasarıma girdi

**Symptom**: Brief'te istenen widget/kart mockup'ta duruyor. Footer'da "kaldırılabilir" notu var. Ya da "belki X senaryosu vardır" diye savunuluyor.

**Cause**: İspat yükü ters çevrilmiş. Brief varlık gerekçesi sanılmış. Estetik muafiyeti layout elemanına uygulanmış.

**Solution**: Varsayılan karar çıkarmaktır. Uydurma senaryo üretme. Çıkar, alternatifi söyle, implementasyondan önce sor. Kural: `references/02-design-decisions.md` (Varlık Gerekçesi) ve `references/06-core-principle.md`.

---

## Error: Çelişki iddiası eksene bağlanamıyor

**Symptom**: "Bu iyi bir fikir değil", "genelde böyle yapılmaz", "daha modern olur" ile kullanıcı durduruluyor.

**Cause**: Zevk farkı çelişki sanılmış. Over-policing.

**Solution**: Beş eksenden birine somut bağ kur. Kurulamıyorsa kullanıcının kararına saygı duy. Kural: `references/01-context-and-conflict.md`.

---

## Error: Palet kategoriden gelmiş

**Symptom**: Koyu zemin + indigo vurgu. Ya da krem zemin + serif başlık. Brief'te gece kullanımı, marka, medyum yok.

**Cause**: Estetik kimlik brief'ten değil "bu bir SaaS" şablonundan seçilmiş. Jeneriklik kontrolü atlanmış.

**Solution**: `references/03-aesthetic-identity.md`. Palet, tipografi, bir imza öğesi. Her renk bir eksene bağlanır. "Bu paleti yalnız ürün türüyle de üretir miydim?" sorusu evetse seçimi bilinçli teyit et veya değiştir.

---

## Error: Doğrulama yapılmadan yapılmış yazıldı

**Symptom**: "Hiyerarşi duruyor", "kontrast tamam", "mobile'da da çalışır" — render yok, screenshot yok, viewport yok.

**Cause**: Karar doğrulama sanılmış. "Kontrol ettim" cümlesi boş bırakılmış kontrolden daha zararlı.

**Solution**: Render et. Yapılamıyorsa açıkça söyle. Kural: `references/05-consistency-and-validation.md`. Review'da da aynı dürüstlük: `references/08-review.md`.

---

## Error: Review 17 bölüm olarak yazıldı

**Symptom**: Rapor başlıkları Bağlam, Varlık, Hiyerarşi, Odak… Sonuç cümleleri bölüm sonunda. Cümleler 40 kelime, iç içe parantez.

**Cause**: Analiz iskeleti rapor iskeleti sanılmış. Yazım kuralları okunmamış.

**Solution**: Yazım `references/07-writing.md`. Rapor `references/08-review.md`. Hüküm başta. Başlık bulguyu adlandırır. Altına tek satır özet. Cümle tek nefes. Şiddet başlıkta. Zincir adı başlık olmaz.

---

## Error: Çıplak başlık, skor tablosu, açıklamasız jargon

**Symptom**: `## Erişilebilirlik` altında puan tablosu. Özet cümle yok. "Z-taraması zayıf", "WCAG fail" diye geçiliyor. Tablonun altında hüküm yok.

**Cause**: Başlık kategori sanılmış. Tablo hüküm sanılmış. Framework dili okuyucu dili sanılmış.

**Solution**: `references/07-writing.md`. Başlığın altında tek satır iddia. Sonra kanıt, anlam, iş. Terimi yazmadan söyle. Tablo varsa altına "bu tablodan çıkan" cümlesi. Skor cetveli yazma.

---

## Error: Küçük yamada 17 adım işletildi

**Symptom**: "Error rengini token'a bağla" işine persona, palet planı ve 5 eksen çıktısı üretilmiş.

**Cause**: Skip kuralı yok sayılmış. Framework her UI dokunuşunda baştan işletilmesi gereken bir süreç sanılmış.

**Solution**: SKILL.md "Ne zaman durur". Karar değişmiyorsa ilgili dosyayı oku, zinciri baştan kurma.

---

## Error: Review istenmeden kod silindi

**Symptom**: Kullanıcı "incele" dedi. Agent gerekçesiz widget'ı ve CSS'ini sildi.

**Cause**: Tasarım modu ile incele karışmış. Varlık gerekçesinin "çıkar" varsayılanı rapora değil koda uygulanmış.

**Solution**: İncele = rapor. Silme kararı maddedir. SKILL.md mod kuralı.

---

## Error: Düzelt deyince yalnız rapor yazıldı

**Symptom**: Kullanıcı "bu ekranı düzelt" dedi. Agent review raporu yazdı. Kod yok.

**Cause**: "Düzelt" incele sanıldı.

**Solution**: SKILL.md mod. Düzelt = kod. Rapor ancak "incele" veya "review et ve düzelt" ile yazılır.

---

## Error: URL varken yalnız koda bakıldı

**Symptom**: Canlı sayfa var. Rapor DOM ve kaynak dosyadan. Ekran görüntüsü yok. Kalabalık, ferahlık, gerçek hiyerarşi iddia ediliyor.

**Cause**: Adım 16 atlandı. Yapısal gözlem görsel sonuç sanıldı.

**Solution**: Render'a bak. Görsel iddia render'sız yazılmaz. Yapılamadıysa hüküm yanında "görsel eksen yok" de; yalnız kapsama gömme. Kural: `references/08-review.md`.

---

## Error: Happy-path karesiyle adım 4 atlandı

**Symptom**: Dolu, başarılı ekran incelendi. Empty, error, izin yok yok. Form "durum eksik" diye spekülasyon.

**Cause**: Yürüyüş tek karede bitti. Kırık yol denenmedi.

**Solution**: Ekran/akış incelemesinde en az bir kırık yol dene. URL vermiyorsa "durum görülmedi" yaz. Koddan uydurma. Kural: `references/08-review.md` işlem.

---

## Error: Copy veya hiyerarşi işe bakılmadan Düşük yazıldı

**Symptom**: Primary kayboluyor veya kayıt metni belirsiz. Şiddet Düşük çünkü kova "cilâ / copy".

**Cause**: Adım 5 kovası, adım 1 kilidi olmadan seçildi.

**Solution**: Önce ekranın işi. İş kayıt, indirme veya güven ise onu bozan copy/hiyerarşi Yüksek olabilir. Kural: `references/08-review.md` şiddet.

---

## Error: İncelemede yalnız 08 okundu, adım 1–17 taranmadı

**Symptom**: Rapor iskeleti doğru. Hüküm, kapsam, madde var. Analiz yok: iş söylenmemiş, yürüyüş yok, atlanan adım yok.

**Cause**: `08` rapor sözleşmesi analiz sanıldı.

**Solution**: Analiz adım 1–17. `08` nasıl yazılacağıdır. SKILL.md incele satırı. Uymayan adım atlanır, nedeni "İncelenemedi"de durur.

---

## Error: Ortak tema yokken tek anlatı uyduruldu

**Symptom**: Biri checkout kırığı, biri şablon palet. Hüküm "ürün güvensiz" gibi tek hikâye.

**Cause**: Tek cümle hüküm, tek tema sanıldı.

**Solution**: Tema adım 1 işine veya tek bir adım 5 maliyetine bağlanamıyorsa: "N bağımsız bulgu var, en pahalısı: …" Kural: `references/06-core-principle.md`, `references/08-review.md`.

---

## Error: Dar istek tam yürüyüşe çevrildi

**Symptom**: "Bu butonun rengini incele" deyince 5 saniye testi, empty state, mobile kırılım üretildi.

**Cause**: Ekran/akış yürüyüşü her review'a uygulandı.

**Solution**: Kapsam kadar yürüyüş. Elemanda adım 17 atlanır, nedeni kapsamda. Kural: `references/08-review.md` işlem.
