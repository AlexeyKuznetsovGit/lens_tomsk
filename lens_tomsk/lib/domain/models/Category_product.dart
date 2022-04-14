class CategoryProduct {
  final String title, image, nameCategory;

  CategoryProduct({
    required this.title,
    required this.image,
    required this.nameCategory,
  });
}

List<CategoryProduct> categories = [
  CategoryProduct(
      title: "Контактные линзы", image: "assets/images/category_1.png", nameCategory:"lens"),
  CategoryProduct(title: "Растворы", image: "assets/images/category_2.png", nameCategory:"solute"),
  CategoryProduct(title: "Капли", image: "assets/images/category_3.png", nameCategory:"drops"),
  CategoryProduct(title: "Аксессуары", image: "assets/images/category_4.png", nameCategory:"accessories"),
  CategoryProduct(title: "Оправы", image: "assets/images/category_5.png", nameCategory:"frames"),
];
