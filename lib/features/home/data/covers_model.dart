class CoverModel {
  final String image;
  final String name;
  CoverModel({required this.image, required this.name});

  static List<CoverModel> covers = [
    CoverModel(image: 'assets/images/cover10.jpeg', name: 'mystic silhouette'),
    CoverModel(image: 'assets/images/cover2.jpeg', name: 'veiled gaze'),
    CoverModel(image: 'assets/images/cover3.jpeg', name: 'crimson mystery'),
    CoverModel(image: 'assets/images/cover6.jpeg', name: 'shadow grace'),
    CoverModel(image: 'assets/images/cover5.jpeg', name: 'noir power'),
    CoverModel(image: 'assets/images/cover1.jpeg', name: 'elegant pose'),
    CoverModel(image: 'assets/images/cover7.jpeg', name: 'timeless hat'),
    CoverModel(image: 'assets/images/cover8.jpeg', name: 'urban chic'),
    CoverModel(image: 'assets/images/cover4.jpeg', name: 'runway reflection'),
  ];
}
