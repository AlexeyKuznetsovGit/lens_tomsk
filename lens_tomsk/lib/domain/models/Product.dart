class Product {
  final String title, description, category;
  final List<String> images, specificationsName, specificationsInfo;
  final int price, oldPrice;
  bool isRecommended, isDiscounted;

  Product({
    required this.images,
    required this.description,
    required this.title,
    required this.category,
    required this.price,
    required this.oldPrice,
    required this.isRecommended,
    required this.specificationsName,
    required this.specificationsInfo,
    required this.isDiscounted,
  });
}

List<Product> products = [
  Product(
    images: ["assets/images/product_1.png", "assets/images/product_1-1.png"],
    description:
        "AOSEPT® plus HydraGlyde® обеспечивает эффективную очистку и надежную дезинфекцию контактных линз. За счет матрицы HydraGlyde®, которая способствует длительному увлажнению, в линзах комфортно в течении всего дня. Не содержит консервантов! Подходит для чувствительных глаз!",
    title: "ACUVUE OASYS (24 шт.)",
    category: "lens",
    price: 5070,
    oldPrice: 6000,
    isRecommended: false,
    isDiscounted: true,
    specificationsName: [
      "Производитель",
      "Доступность",
      "Кислородопроницаемость"
    ],
    specificationsInfo: ["Johnson&Johnson", "На складе", "147"],
  ),
  Product(
    images: ["assets/images/product_2.png"],
    description:
        "AOSEPT® plus HydraGlyde® обеспечивает эффективную очистку и надежную дезинфекцию контактных линз. За счет матрицы HydraGlyde®, которая способствует длительному увлажнению, в линзах комфортно в течении всего дня. Не содержит консервантов! Подходит для чувствительных глаз!\n \nТройное очищение:\n \u{F784} Запатентованная формула глубоко очищает\n Удаляет загрязнения\n Способствует устранению белковых отложений",
    title: "ReNu MPS, раствор (120мл)",
    category: "solute",
    price: 5090,
    oldPrice: 5550,
    isRecommended: false,
    isDiscounted: true,
    specificationsName: ["Производитель"],
    specificationsInfo: ["Alcon - Ciba Vision"],
  ),
  Product(
    images: ["assets/images/product_3.png"],
    description:
        "AOSEPT® plus HydraGlyde® обеспечивает эффективную очистку и надежную дезинфекцию контактных линз. За счет матрицы HydraGlyde®, которая способствует длительному увлажнению, в линзах комфортно в течении всего дня. Не содержит консервантов! Подходит для чувствительных глаз!",
    title: "Acuvue 1-day TruEye, (90 шт.)",
    category: "lens",
    price: 5170,
    oldPrice: 5890,
    isRecommended: true,
    isDiscounted: true,
    specificationsName: ["Производитель"],
    specificationsInfo: ["Alcon - Ciba Vision"],
  ),
  Product(
    images: ["assets/images/product_4.png"],
    description:
        "AOSEPT® plus HydraGlyde® обеспечивает эффективную очистку и надежную дезинфекцию контактных линз. За счет матрицы HydraGlyde®, которая способствует длительному увлажнению, в линзах комфортно в течении всего дня. Не содержит консервантов! Подходит для чувствительных глаз!",
    title: "Air Optix Aqua (3 шт.)",
    category: "lens",
    price: 980,
    oldPrice: 0,
    isRecommended: true,
    isDiscounted: false,
    specificationsName: ["Производитель"],
    specificationsInfo: ["Alcon - Ciba Vision"],
  ),
  Product(
    images: ["assets/images/product_5.png"],
    description:
        "AOSEPT® plus HydraGlyde® обеспечивает эффективную очистку и надежную дезинфекцию контактных линз. За счет матрицы HydraGlyde®, которая способствует длительному увлажнению, в линзах комфортно в течении всего дня. Не содержит консервантов! Подходит для чувствительных глаз!",
    title: "Air Optix Plus HydraGlyde (6 шт.)",
    category: "lens",
    price: 2025,
    oldPrice: 0,
    isRecommended: true,
    isDiscounted: false,
    specificationsName: ["Производитель"],
    specificationsInfo: ["Alcon - Ciba Vision"],
  ),
  Product(
    images: ["assets/images/product_6.png"],
    description:
        "AOSEPT® plus HydraGlyde® обеспечивает эффективную очистку и надежную дезинфекцию контактных линз. За счет матрицы HydraGlyde®, которая способствует длительному увлажнению, в линзах комфортно в течении всего дня. Не содержит консервантов! Подходит для чувствительных глаз!",
    title: "Biotrue, раствор (120мл)",
    category: "solute",
    price: 339,
    oldPrice: 500,
    isRecommended: false,
    isDiscounted: true,
    specificationsName: ["Производитель"],
    specificationsInfo: ["Alcon - Ciba Vision"],
  ),
];
