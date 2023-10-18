class Products {
  final double? id;
  final String name;
  final String? description;
  final double price;
  final String imagePath;

  Products({
    this.id,
    required this.name,
    this.description,
    required this.price,
    required this.imagePath,
  });

  static List<Products> getProducts() {
    return [
      // data បែបនឹងគេហៅថា Mock data or Fake data or dummy dat// Mock data គឺជា data ប្រើសម្រាប់ធ្វើការ ​demo ផ្សេងៗ មិនមែនជា real data
      Products(
          id: 1,
          name: 'Apple 11',
          description: 'Good Product',
          price: 20.11,
          imagePath: './lib/images/phone1.png'),
      Products(
          id: 2,
          name: 'Apple 12',
          description: 'Good Product',
          price: 20.22,
          imagePath:
              'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-card-40-iphone15prohero-202309?wid=340&hei=264&fmt=p-jpg&qlt=95&.v=1693086290312'),
      Products(
          id: 3,
          name: 'Apple 13',
          description: 'Good Product',
          price: 20.33,
          imagePath:
              'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-card-40-iphone15hero-202309?wid=340&hei=264&fmt=p-jpg&qlt=95&.v=1693086290559'),
      Products(
          id: 4,
          name: 'Apple 14',
          description: 'Good Product',
          price: 20.44,
          imagePath:
              'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-card-40-iphone14-202209?wid=340&hei=264&fmt=p-jpg&qlt=95&.v=1693086290654'),
      Products(
          id: 5,
          name: 'Apple 15',
          description: 'Good Product',
          price: 20.55,
          imagePath:
              'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-card-40-iphone13hero-202309?wid=340&hei=264&fmt=p-jpg&qlt=95&.v=1692912410963'),
      Products(
          id: 5,
          name: 'Apple 11 Pro',
          description: 'Good Product',
          price: 20.66,
          imagePath:
              'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/refurb-iphone-12-purple-2021?wid=572&hei=572&fmt=jpeg&qlt=95&.v=1635202738000'),
      Products(
          id: 6,
          name: 'Apple 12 Pro',
          description: 'Good Product',
          price: 20.77,
          imagePath:
              'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/refurb-iphone-12-purple-2021?wid=572&hei=572&fmt=jpeg&qlt=95&.v=1635202738000'),
      Products(
          id: 7,
          name: 'Apple 13 Pro',
          description: 'Good Product',
          price: 20.88,
          imagePath:
              'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/refurb-iphone-12-purple-2021?wid=572&hei=572&fmt=jpeg&qlt=95&.v=1635202738000'),
      Products(
          id: 8,
          name: 'Apple 14 Pro',
          description: 'Good Product',
          price: 20.99,
          imagePath:
              'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/refurb-iphone-12-purple-2021?wid=572&hei=572&fmt=jpeg&qlt=95&.v=1635202738000'),
      Products(
          id: 9,
          name: 'Apple 15 Pro',
          description: 'Good Product',
          price: 20.11,
          imagePath:
              'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/refurb-iphone-12-purple-2021?wid=572&hei=572&fmt=jpeg&qlt=95&.v=1635202738000'),
      Products(
          id: 10,
          name: 'Apple 11 Pro Max',
          description: 'Good Product',
          price: 20.61,
          imagePath:
              'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/refurb-iphone-12-purple-2021?wid=572&hei=572&fmt=jpeg&qlt=95&.v=1635202738000'),
      Products(
          id: 11,
          name: 'Apple 12 Pro Max',
          description: 'Good Product',
          price: 20.72,
          imagePath:
              'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/refurb-iphone-12-purple-2021?wid=572&hei=572&fmt=jpeg&qlt=95&.v=1635202738000'),

      Products(
          id: 12,
          name: 'Apple 13 Pro Max',
          description: 'Good Product',
          price: 20.44,
          imagePath:
              'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/refurb-iphone-12-purple-2021?wid=572&hei=572&fmt=jpeg&qlt=95&.v=1635202738000'),
      Products(
          id: 13,
          name: 'Apple 14 Pro Max',
          description: 'Good Product',
          price: 20.72,
          imagePath:
              'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/refurb-iphone-12-purple-2021?wid=572&hei=572&fmt=jpeg&qlt=95&.v=1635202738000'),
    ];
  }
}
