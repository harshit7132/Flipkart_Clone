class Category {
  final String id;
  final String name;
  final String imageUrl;
  final List<SubCategory> subCategories;

  Category({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.subCategories,
  });
}

class SubCategory {
  final String id;
  final String name;
  final String imageUrl;

  SubCategory({
    required this.id,
    required this.name,
    required this.imageUrl,
  });
}

// Example Data
final List<Category> categories = [
  Category(
    id: '1',
    name: 'Electronics',
    imageUrl: 'https://example.com/electronics.jpg',
    subCategories: [
      SubCategory(
          id: '1a',
          name: 'Mobiles',
          imageUrl: 'https://example.com/mobiles.jpg'),
      SubCategory(
          id: '1b',
          name: 'Laptops',
          imageUrl: 'https://example.com/laptops.jpg'),
      SubCategory(
          id: '1c',
          name: 'Televisions',
          imageUrl: 'https://example.com/televisions.jpg'),
      SubCategory(
          id: '1d',
          name: 'Cameras',
          imageUrl: 'https://example.com/cameras.jpg'),
    ],
  ),
  Category(
    id: '2',
    name: 'Fashion',
    imageUrl: 'https://example.com/fashion.jpg',
    subCategories: [
      SubCategory(
          id: '2a',
          name: 'Men\'s Clothing',
          imageUrl: 'https://example.com/mens_clothing.jpg'),
      SubCategory(
          id: '2b',
          name: 'Women\'s Clothing',
          imageUrl: 'https://example.com/womens_clothing.jpg'),
      SubCategory(
          id: '2c',
          name: 'Footwear',
          imageUrl: 'https://example.com/footwear.jpg'),
      SubCategory(
          id: '2d',
          name: 'Accessories',
          imageUrl: 'https://example.com/accessories.jpg'),
    ],
  ),
  Category(
    id: '3',
    name: 'Home & Furniture',
    imageUrl: 'https://example.com/home_furniture.jpg',
    subCategories: [
      SubCategory(
          id: '3a',
          name: 'Furniture',
          imageUrl: 'https://example.com/furniture.jpg'),
      SubCategory(
          id: '3b',
          name: 'Home Decor',
          imageUrl: 'https://example.com/home_decor.jpg'),
      SubCategory(
          id: '3c',
          name: 'Kitchen & Dining',
          imageUrl: 'https://example.com/kitchen_dining.jpg'),
      SubCategory(
          id: '3d',
          name: 'Lighting',
          imageUrl: 'https://example.com/lighting.jpg'),
    ],
  ),
  Category(
    id: '4',
    name: 'Sports & Fitness',
    imageUrl: 'https://example.com/sports_fitness.jpg',
    subCategories: [
      SubCategory(
          id: '4a',
          name: 'Fitness Equipment',
          imageUrl: 'https://example.com/fitness_equipment.jpg'),
      SubCategory(
          id: '4b',
          name: 'Sportswear',
          imageUrl: 'https://example.com/sportswear.jpg'),
      SubCategory(
          id: '4c',
          name: 'Footwear',
          imageUrl: 'https://example.com/footwear_sports.jpg'),
      SubCategory(
          id: '4d',
          name: 'Outdoor & Adventure',
          imageUrl: 'https://example.com/outdoor_adventure.jpg'),
    ],
  ),
];
