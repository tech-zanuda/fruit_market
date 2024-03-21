class Product {
  int id;
  String name;
  String type;
  String description;
  String image;
  double price;
  Product(
      this.id, this.name, this.type, this.description, this.image, this.price);
}

final List<Product> productList = [
  Product(
      1,
      'Rambutan',
      'Fruit',
      'Rambutan is a medium-sized tropical tree in the family , also refers to the edible fruit produced by this tree. The rambutan is native to Southeast Asia. It is closely related to several other edible tropical fruits, including the lychee, longan, pulasan, and quenepa.',
      'assets/images/rambutan.png',
      22.99),
  Product(
      2,
      'Durian Monty',
      'Fruit',
      'The durian is the edible fruit of several tree species belonging to the genus Durio. There are 30 recognized Durio species, at least nine of which produce edible fruit.',
      'assets/images/durian.png',
      32.99),
  Product(
      3,
      'Strawberry',
      'Fruit',
      'The garden strawberry is a widely grown hybrid species of the genus Fragaria, collectively known as the strawberries, which are cultivated worldwide for their fruit. The fruit is widely appreciated for its characteristic aroma, bright red color, juicy texture, and sweetness.',
      'assets/images/strawberry.png',
      18.99),
];
