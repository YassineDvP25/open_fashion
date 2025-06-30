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
      name: 'Velvet Evening Dress',
      price: '600',
      description: 'featuring a sleek silhouette and modern detailing',
    ),
    ProductModel(
      image: 'assets/product/prod9.jpeg',
      name: 'Women\'s Accessories Set' ,
      price: '800',
      description: 'crafted with a blend of comfort and style',
    ),
    ProductModel(
      image: 'assets/product/prod16.jpeg',
      name: 'V-Neck Maxi Dress',
      price: '400',
      description: 'timeless piece that never goes out of style',
    ),
    ProductModel(
      image: 'assets/product/prod8.jpeg',
      name: 'Black Crop Top',
      price: '500',
      description: 'designed for everyday wear with a touch of elegance',
    ),
    ProductModel(
      image: 'assets/product/prod17.jpeg',
      name: 'Black Combat Boots',
      price: '1200',
      description: 'perfect for special occasions with its luxurious fabric',
    ),
    ProductModel(
      image: 'assets/product/prod10.jpeg',
      name: 'Pleated Long Dress',
      price: '700',
      description: 'combining functionality with a trendy look',
    ),
    ProductModel(
      image: 'assets/product/prod11.jpeg',
      name: 'Ankle Leather Boots',
      price: '700',
      description: 'combining functionality with a trendy look',
    ),
    ProductModel(
      image: 'assets/product/prod14.jpeg',
      name: 'Quilted Clutch Bag',
      price: '700',
      description: 'combining functionality with a trendy look',
    ),
  ];
  
}
