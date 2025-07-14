class ProductModel {
  final String id;
  final String image;
  final String name;
  final int price;
  final String description;
  ProductModel({
    required this.id,
    required this.image,
    required this.name,
    required this.price,
    required this.description,
  });

  static List<ProductModel> products = [
    ProductModel(
      id: '1',
      image: 'assets/product/prod16.jpeg',
      name: 'Velvet Evening Dress',
      price: 600,
      description: 'featuring a sleek silhouette and modern detailing',
    ),
    ProductModel(
      id: '2',
      image: 'assets/product/prod8.jpeg',
      name: 'Black Combat Boots',
      price: 800,
      description: 'crafted with a blend of comfort and style',
    ),
    ProductModel(
      id: '3',
      image: 'assets/product/prod9.jpeg',
      name: 'Women\'s Accessories Set',
      price: 400,
      description: 'timeless piece that never goes out of style',
    ),
    ProductModel(
      id: '4',
      image: 'assets/product/prod10.jpeg',
      name: 'V-Neck Maxi Dress',
      price: 500,
      description: 'designed for everyday wear with a touch of elegance',
    ),
    ProductModel(
      id: '5',
      image: 'assets/product/prod14.jpeg',
      name: 'Quilted Clutch Bag',
      price: 1200,
      description: 'perfect for special occasions with its luxurious fabric',
    ),
    ProductModel(
      id: '6',
      image: 'assets/product/prod1.png',
      name: 'Pleated Long Dress',
      price: 700,
      description: 'combining functionality with a trendy look',
    ),
    ProductModel(
      id: '7',
      image: 'assets/product/prod11.jpeg',
      name: 'Ankle Leather Boots',
      price: 290,
      description: 'combining functionality with a trendy look',
    ),
    ProductModel(
      id: '8',
      image: 'assets/product/prod17.jpeg',
      name: 'Black Crop Top',
      price: 520, 
      description: 'combining functionality with a trendy look',
    ),
  ];
}
