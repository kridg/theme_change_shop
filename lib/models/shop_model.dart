import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:minimal_shop_flutter/models/products.dart';
import 'package:provider/provider.dart';

class Shop extends ChangeNotifier{
  //first making the list of products
List<Product>_productShop=[
Product(
    name: 'Hoodie',
    price: '50',
    imagePath: 'lib/images/hoodie1.jpg',
    description: 'Best Quality Premium Heavy Hoodie Perfect for Winter'),
  Product(
      name: 'Denim Jacket',
      price: '35',
      imagePath: 'lib/images/denim_img.jpeg',
      description: 'Best Quality Premium Heavy Hoodie Perfect for Winter'),
  Product(
      name: 'Shoes',
      price: '100',
      imagePath: 'lib/images/shoes4.jpg',
      description: 'Best Quality Premium Heavy Hoodie Perfect for Winter'),
  Product(
      name: 'Watch',
      price: '80',
      imagePath: 'lib/images/watch_img.jpg',
      description: 'Best Quality Premium Heavy Hoodie Perfect for Winter'),
];
//now items in user's cart
List<Product> _usercart=[];

//now list for product sale
List<Product> get shop=>_productShop;
//now to access user cart
List<Product> get cart=>_usercart;
//adding product to the cart
void addItem(Product product){
  _usercart.add(product);
  notifyListeners();
}
void removeFromCart(Product product){
  _usercart.remove(product);
  notifyListeners();
}
}