import 'package:ui_clone/data/models/language_model.dart';

import '../../data/models/navigation_rail_items.dart';
import '../app_imports/app_imports.dart';

class AppConstants {
  /// Language list data
  static final List<LanguageItem> languageData = [
    const LanguageItem(
      nativeName: 'हिंदी',
      englishName: 'Hindi',
      imageUrl: 'assets/monuments/taj.png',
    ),
    const LanguageItem(
        nativeName: 'తెలుగు',
        englishName: 'Telugu',
        imageUrl: 'assets/monuments/charminar.png'),
    const LanguageItem(
      nativeName: 'தமிழ்',
      englishName: 'Tamil',
      imageUrl: 'assets/monuments/tamil.png',
    ),
    const LanguageItem(
      nativeName: 'English',
      englishName: 'English',
      imageUrl: 'assets/monuments/english.png',
    ),
    const LanguageItem(
      nativeName: 'বাংলা',
      englishName: 'Bengali',
      imageUrl: 'assets/monuments/bangladesh.png',
    ),
    const LanguageItem(
      nativeName: 'मराठी',
      englishName: 'Marathi',
      imageUrl: 'assets/monuments/indiaGate.png',
    ),
  ];

  /// slider images list
  static final List<String> sliderData = [
    'assets/slider/1.png',
    'assets/slider/2.png',
    'assets/slider/3.png',
    'assets/slider/4.png',
    'assets/slider/5.png',
  ];

  static final List<Map<String, dynamic>> categoriesData = [
    {
      'Image':
          'https://www.iconpacks.net/icons/3/free-offer-icon-9678-thumb.png',
      'name': 'Top Offer'
    },
    {
      'Image':
          'https://static.vecteezy.com/system/resources/previews/011/026/519/non_2x/scan-me-phone-tag-qrcode-scan-to-pay-with-mobile-app-qr-code-for-smartphone-isolated-illustration-on-a-white-background-illustration-vector.jpg',
      'name': 'Scan & Pay'
    },
    {
      'Image':
          'https://www.pngitem.com/pimgs/m/248-2483874_shopping-portfolio-categories-designshop-fashion-model-clipart-png.png',
      'name': 'Fashion'
    },
    {
      'Image':
          'https://m.economictimes.com/thumb/msid-98897778,width-1200,height-1200,resizemode-4,imgsize-35708/6-latest-mobile-phones-with-12gb-ram-in-india.jpg',
      'name': 'Mobiles'
    },
    {
      'Image': 'https://static.toiimg.com/photo/61980327.cms',
      'name': 'Flights & Hotels'
    },
    {
      'Image':
          'https://contentstatic.techgig.com/thumb/msid-83033273,width-1200,height-900,resizemode-4/83033273.jpg',
      'name': 'Smart Gadgets'
    },
    {
      'Image':
          'https://5.imimg.com/data5/SELLER/Default/2022/6/GC/RF/YT/155120286/beauty-cosmetic-products.jpg',
      'name': 'Beauty Products'
    },
    {
      'Image':
          'https://wiproappliances.com/cdn/shop/articles/home-appliances-min.jpg?v=1713851586',
      'name': 'Home appliances'
    },
    {
      'Image':
          'https://images.livspace-cdn.com/plain/https://jumanji.livspace-cdn.com/magazine/wp-content/uploads/sites/2/2019/05/19175257/Living-Room-Furniture-cover.png',
      'name': 'Furniture'
    },
    {
      'Image':
          'https://5.imimg.com/data5/MG/FQ/SA/SELLER-283756/all-fmcg-grocery-products.jpg',
      'name': 'Grocery'
    },
  ];

  ///categories bottom data
  static final List<Map<String, dynamic>> catBottomData = [
    {
      'image': 'https://static.toiimg.com/photo/61980327.cms',
      'title': 'AirIndia Flights',
      'price': 'From \$1,299',
    },
    {
      'image':
          'https://contentstatic.techgig.com/thumb/msid-83033273,width-1200,height-900,resizemode-4/83033273.jpg',
      'title': '6 mic Hybrid ANC',
      'price': 'Launch 1st Aug',
    },
    {
      'image':
          'https://www.pngitem.com/pimgs/m/248-2483874_shopping-portfolio-categories-designshop-fashion-model-clipart-png.png',
      'title': 'Lightweight Shoes',
      'price': 'Min. 50% Off',
    },
  ];

  ///recent viewed items
  static final List<Map<String, dynamic>> recentlyViewedItems = [
    {
      'image': 'https://www.sathya.store/img/product/qHJEAZBF05Drv6iC.png',
      'title': 'Samsung S24 Ultra',
    },
    {
      'image':
          'https://media-ik.croma.com/prod/https://media.croma.com/image/upload/v1681413735/Croma%20Assets/Computers%20Peripherals/Computer%20Accessories%20and%20Tablets%20Accessories/Images/241702_0_dwmg3p.png',
      'title': 'KeyBoard & Mouse Combo',
    },
    {
      'image':
          'https://www.bigbasket.com/media/uploads/p/xxl/40324585-2_1-mattel-games-uno-original-card-game.jpg',
      'title': 'Card Games',
    },
    {
      'image':
          'https://thetimberguy.com/cdn/shop/collections/jali_range_furniture_wooden_jali_range_furniture_suppliers_india_2048x.jpg?v=1562491678',
      'title': 'Furniture',
    },
  ];

  static final List<NavigationItem> navigationItems = [
    NavigationItem(
      icon: Icon(Icons.favorite_border),
      selectedIcon: Icon(Icons.favorite),
      label: 'For You',
    ),
    NavigationItem(
      icon: Icon(Icons.favorite_border),
      selectedIcon: Icon(Icons.favorite),
      label: 'Fashion',
    ),
    // Add more NavigationItems for each destination.
    NavigationItem(
      icon: Icon(Icons.favorite_border),
      selectedIcon: Icon(Icons.favorite),
      label: 'Appliances',
    ),
    NavigationItem(
      icon: Icon(Icons.favorite_border),
      selectedIcon: Icon(Icons.favorite),
      label: 'Mobiles',
    ),
    NavigationItem(
      icon: Icon(Icons.favorite_border),
      selectedIcon: Icon(Icons.favorite),
      label: 'Electronics',
    ),
    NavigationItem(
      icon: Icon(Icons.favorite_border),
      selectedIcon: Icon(Icons.favorite),
      label: 'Home',
    ),
    NavigationItem(
      icon: Icon(Icons.favorite_border),
      selectedIcon: Icon(Icons.favorite),
      label: 'Furniture',
    ),
    NavigationItem(
      icon: Icon(Icons.favorite_border),
      selectedIcon: Icon(Icons.favorite),
      label: 'Beauty & Wellness',
    ),
    NavigationItem(
      icon: Icon(Icons.favorite_border),
      selectedIcon: Icon(Icons.favorite),
      label: 'Toys, Baby, Books',
    ),
    NavigationItem(
      icon: Icon(Icons.favorite_border),
      selectedIcon: Icon(Icons.favorite),
      label: 'Food & More',
    ),
    NavigationItem(
      icon: Icon(Icons.favorite_border),
      selectedIcon: Icon(Icons.favorite),
      label: 'Sports Hub',
    ),
    NavigationItem(
      icon: Icon(Icons.favorite_border),
      selectedIcon: Icon(Icons.favorite),
      label: 'Auto Accessories',
    ),
    NavigationItem(
      icon: Icon(Icons.favorite_border),
      selectedIcon: Icon(Icons.favorite),
      label: 'Travel',
    ),
  ];
}
