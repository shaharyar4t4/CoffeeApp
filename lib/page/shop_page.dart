import 'package:coffeeapp/components/coffee_tile.dart';
import 'package:coffeeapp/models/coffee.dart';
import 'package:coffeeapp/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  //add coffee to cart
  void addToCart(Coffee coffee){
    Provider.of<CoffeeShop>(context, listen: false).addItemToCart(coffee);
    // showDialog(context: context, builder: (context)=> AlertDialog(
    //   title: Text("Successfully added to cart"),
    // ),);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Text(
                "How would like your Coffee?",
                style: TextStyle(fontSize: 19),
              ),
              SizedBox(
                height: 20,
              ),
              // List of Coffee
              Expanded(
                child: ListView.builder(
                    itemCount: value.coffeeShop.length,
                    itemBuilder: (context, index) {
                      // get individual coffee
                      Coffee eachCoffee = value.coffeeShop[index];

                      // return the title for this coffee
                      return CoffeeTile(
                          coffee: eachCoffee,
                          icon: Icon(Icons.add),
                          onPressed: () => addToCart(eachCoffee),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
