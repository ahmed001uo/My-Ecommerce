import 'package:ecommerce_one/utilities/assets.dart';

class Product {
  final String id;
  final String title;
  final int price;
  final String imgUrl;
  final int discountValue;
  final String category;
  final double? rate;

  Product(
      {required this.id,
      required this.title,
      required this.price,
      required this.imgUrl,
      this.discountValue = 0,
      required this.category,
      this.rate});
}

List<Product> dummyPorducts = [
  Product(
      id: "1",
      title: "T-shirt",
      price: 300,
      imgUrl: AppAssets.tempProductAsset1,
      category: "Closthes",
      discountValue: 20),
  Product(
      id: "1",
      title: "T-shirt",
      price: 300,
      imgUrl: AppAssets.tempProductAsset1,
      category: "Closthes",
      discountValue: 20),
  Product(
      id: "1",
      title: "T-shirt",
      price: 300,
      imgUrl: AppAssets.tempProductAsset1,
      category: "Closthes",
      discountValue: 20),
  Product(
      id: "1",
      title: "T-shirt",
      price: 300,
      imgUrl: AppAssets.tempProductAsset1,
      category: "Closthes",
      discountValue: 20),
  Product(
      id: "1",
      title: "T-shirt",
      price: 300,
      imgUrl: AppAssets.tempProductAsset1,
      category: "Closthes",
      discountValue: 20),
];
