import 'package:flutter/cupertino.dart';

class Product {
  int? _totalSize;
  int? _typeId;
  int? _offSet;

 late List <ProductModel> _products;

 //Get All Products
   List <ProductModel> get products => _products;


 Product({required totalSize,required typeId, required offset,required products}){
   this._totalSize = totalSize;
   this._offSet = offset;
   this._typeId = typeId;
   this._products = products;

 }

  // Product({
  //  required this.offSet,
  //  required this.totalSize,
  //  required this.products,
  //  required this.typeId

  // });

   Product.fromJson(Map<String, dynamic> json) {
    _offSet = json['offSet'];
    _totalSize = json['totalSize'];
    _typeId = json['typeId'];

    if(  json['products'] != null){
      _products = <ProductModel> [];
      json['products'].forEach((v){
         _products.add(ProductModel.fromJson(json));
      });
    }
    
  }
}

class ProductModel {
  int? id;
  String? name;
  String? description;
  int? price;
  int? stars;
  String? img;
  String? location;
  String? createdAt;
  String? updatedAt;
  int? typeId;

  ProductModel({
    this.id,
    this.name,
    this.description,
    this.price,
    this.stars,
    this.img,
    this.location,
    this.createdAt,
    this.updatedAt,
    this.typeId,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    stars = json['stars'];
    img = json['img'];
    location = json['location'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    typeId = json['typeId'];
  }
}
