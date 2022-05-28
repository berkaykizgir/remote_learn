class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({required this.title, required this.image, required this.desc});
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Geleneksel çalışma methodlarından sıkıldın mı ?",
    image: "assets/images/morning.png",
    desc:
        "remoteLearn() fonksiyonunu çağırarak yepyeni bir çalışma deneyimine hazır mısın ? Dijitalleştirilmiş ve oyunlaştırılmış yeni öğrenim methodlarıyla remoteLearn() her zaman yanında ! Bu arada, eğer gündüz çalışmayı sevmiyorsan, yukarıda bulunan arkadaşımıza dokunarak zamanı ileri sarmasını isteyebilirsin.",
  ),
  OnboardingContents(
    title: "İlerlemeni her zaman takip edebilirsin",
    image: "assets/images/track.png",
    desc:
        "Gözlemlediğin kurslar ve içeriklerin yüzde kaçını tamamladığını gözlemyebilir ve kaldığın yerden devam edebilirsin. Dökümantasyonda bulunan kod blokları ve sorular paylaşıma her zaman açık. Arkadaşlarınla bir araya gelip paylaşabilir ve bulduğun hatalarda bizlere bir geri dönüş mektubu yollayabilirsin. ",
  ),
  OnboardingContents(
    title: "Kodlamayı ve tekrarlamayı unutma",
    image: "assets/images/code.png",
    desc:
        "Her gün düzenli olarak pratik yaparak kodlama seviyeni ve kaliteni geliştirebilir, yeni methodlar keşfedebilirsin. Düzenli kodlama egzersizi yapmak öğrenme yolculuğunu hızlandırarak sana motivasyon sağlar. Hadi başlayalım !",
  ),
  OnboardingContents(
    title: "",
    image: "assets/images/logo.png",
    desc: "",
  ),
];
