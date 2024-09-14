import 'package:flutter/material.dart';
import 'package:minimal_shop_flutter/components/my_drawer.dart';
import 'package:minimal_shop_flutter/components/my_product_tile.dart';
import 'package:minimal_shop_flutter/main.dart';
import 'package:minimal_shop_flutter/models/shop_model.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products= context.watch<Shop>().shop;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        elevation: 0,
        title: Text('Shop Page'),
        actions: [
          IconButton(onPressed: ()=>Navigator.pushNamed(context,'/cart_page'),
              icon: const Icon(Icons.shopping_cart_outlined))
        ],
      ),
      drawer: MyDrawer(),
      body: ListView(
        children: [
          const SizedBox(height: 25,),
          //title for the shop
          Center(child: Text('Choose from a Wide Range of Various Premium Products',
          style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary,
          ),),
          ),
          SizedBox(
            height: 600,
            child: ListView.builder(
                padding: EdgeInsets.all(15),
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  final product=products[index];

                  return MyProductTile(product: product);

                }),
          ),
        ],
      )
    );
  }
}

