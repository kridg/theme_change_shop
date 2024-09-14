import 'package:flutter/material.dart';
import 'package:minimal_shop_flutter/components/button.dart';
import 'package:minimal_shop_flutter/components/my_product_tile.dart';
import 'package:minimal_shop_flutter/models/products.dart';
import 'package:minimal_shop_flutter/models/shop_model.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  // removal of item
  void removeItemFromCart(BuildContext context,Product product){
    showDialog(
      context: context,
      builder: (context)=>AlertDialog(
        content: Text('Remove this item from your cart?'),
        actions: [
          MaterialButton(
            onPressed: ()=>Navigator.pop(context),
            child: Text('Cancel'),
          ),
          MaterialButton(
            onPressed: (){
              Navigator.pop(context);

              //now add to cart as well
              context.read<Shop>().removeFromCart(product);
            },
            child: Text('Yes'),)
        ],
      ),);
  }
  void payButtonPressed(BuildContext context){
    showDialog(context: context, builder: (context)=>const AlertDialog(
      content: Text('User wants to pay! Connect this app to payment app'),
    ),);
  }

  @override
  Widget build(BuildContext context) {
    final cart=context.watch<Shop>().cart;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        elevation: 0,
        title: Text("Cart Page"),
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        children: [
          //list of the cart
          Expanded(
              child: cart.isEmpty ? const Center(
                  child: Text('Your cart is empty')):
              ListView.builder(
              itemCount: cart.length,
              itemBuilder: (context,index){
            final item=cart[index];

            return ListTile(
              title: Text(item.name),
              subtitle: Text(item.price),
              trailing: IconButton(
                  onPressed: ()=>removeItemFromCart(context,item),
                  icon: const Icon(Icons.remove)),
            );
          })),
          //payment button
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: MyButton(
                onTap: ()=>payButtonPressed(context),
                child: Text('Pay Now')),
          )
        ],
      ),
    );
  }
}
