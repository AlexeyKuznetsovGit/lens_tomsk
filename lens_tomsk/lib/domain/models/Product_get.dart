import 'package:lens_tomsk/domain/models/Categories.dart';
import 'package:lens_tomsk/domain/models/Discount.dart';
import 'package:lens_tomsk/domain/models/Options.dart';

class Product {
  int? id;
  String? name;
  String? price;
  String? description;
  int? quantity;
  String? manufacture;
  List<Categories>? categories;
  List<Options>? options;
  List<Discount>? discount;
  bool? isRecommended;

  Product(
      {this.id,
      this.name,
      this.price,
      this.description,
      this.quantity,
      this.manufacture,
      this.categories,
      this.options,
      this.discount,
      this.isRecommended});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    description = json['description'];
    quantity = json['quantity'];
    manufacture = json['manufacture'];
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(new Categories.fromJson(v));
      });
    }
    if (json['options'] != null) {
      options = <Options>[];
      json['options'].forEach((v) {
        options!.add(new Options.fromJson(v));
      });
    }
    if (json['discount'] != null) {
      discount = <Discount>[];
      json['discount'].forEach((v) {
        discount!.add(new Discount.fromJson(v));
      });
    }
    isRecommended = json['is_recommended'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['price'] = this.price;
    data['description'] = this.description;
    data['quantity'] = this.quantity;
    data['manufacture'] = this.manufacture;
    if (this.categories != null) {
      data['categories'] = this.categories!.map((v) => v.toJson()).toList();
    }
    if (this.options != null) {
      data['options'] = this.options!.map((v) => v.toJson()).toList();
    }
    if (this.discount != null) {
      data['discount'] = this.discount!.map((v) => v.toJson()).toList();
    }
    data['is_recommended'] = this.isRecommended;
    return data;
  }
}