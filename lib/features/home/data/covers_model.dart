class CoverModel {
  final String image;
  final String name;
  CoverModel({required this.image, required this.name});

  static List<CoverModel> covers = [
    CoverModel(image: 'assets/cover/cover6.jpeg', name: 'mystic silhouette'),
    CoverModel(image: 'assets/cover/cover2.jpeg', name: 'veiled gaze'),
    CoverModel(image: 'assets/cover/cover3.jpeg', name: 'crimson mystery'),
    CoverModel(image: 'assets/cover/cover4.jpeg', name: 'shadow grace'),
    CoverModel(image: 'assets/cover/cover5.jpeg', name: 'noir power'),
    CoverModel(image: 'assets/cover/cover1.jpeg', name: 'elegant pose'),
    CoverModel(image: 'assets/cover/cover7.jpeg', name: 'timeless hat'),
    CoverModel(image: 'assets/cover/cover8.jpeg', name: 'urban chic'),
    CoverModel(image: 'assets/cover/cover9.jpeg', name: 'runway reflection'),
  ];
}
