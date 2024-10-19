import 'package:coffeeapp/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier{
  //coffee for sale list
  final List<Coffee> _shop = [
    // black coffee
    Coffee(
      name: "Long Black",
      price: "Rs: 200",
      imagePath: "assets/images/black.png",
    ),
    // latte
    Coffee(
      name: "Latte",
      price: "Rs: 550",
      imagePath: "assets/images/coffee.png",
    ),
    //espresso
    Coffee(
      name: "Espresso",
      price: "Rs: 499",
      imagePath: "assets/images/coffee-cup.png",
    ),
    //iced coffee
    Coffee(
      name: "Iced Coffee",
      price: "Rs: 200",
      imagePath: "assets/images/ice-coffee.png",
    ),
  ];

// user cart
  List<Coffee> _userCart = [];

//get coffee list
  List<Coffee> get coffeeShop => _shop;

// get user cart
  List<Coffee> get userCart => _userCart;

// add item to cart
 void addItemToCart(Coffee coffee){
   _userCart.add(coffee);
   notifyListeners();
 }

//remove item from cart
  void removeItemToCart(Coffee coffee){
    _userCart.remove(coffee);
    notifyListeners();
  }
}
