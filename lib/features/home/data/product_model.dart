class ProductModel {
  final String image;
  final String name;
  final String price;
  final String description;
  ProductModel({
    required this.image,
    required this.name,
    required this.price,
    required this.description,
  });

   static List<ProductModel> products = [
    ProductModel(
      image: 'assets/product/prod1.png',
      name: 'Midnight Muse Dress',
      price: '600',
      description: 'featuring a sleek silhouette and modern detailing',
    ),
    ProductModel(
      image: 'assets/product/prod2.png',
      name: 'Urban Chic Boot',
      price: '800',
      description: 'crafted with a blend of comfort and style',
    ),
    ProductModel(
      image: 'assets/product/prod3.png',
      name: 'Vintage Vibes Rings',
      price: '400',
      description: 'timeless piece that never goes out of style',
    ),
    ProductModel(
      image: 'assets/product/prod4.png',
      name: 'Casual Comfort Eearrings',
      price: '500',
      description: 'designed for everyday wear with a touch of elegance',
    ),
    ProductModel(
      image: 'assets/product/prod5.png',
      name: 'Elegant Evening Ring',
      price: '1200',
      description: 'perfect for special occasions with its luxurious fabric',
    ),
    ProductModel(
      image: 'assets/product/prod6.png',
      name: 'Starlight Trio Ring',
      price: '700',
      description: 'combining functionality with a trendy look',
    ),
  ];
  
}
