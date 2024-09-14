import 'package:flutter/material.dart';
import 'package:minimal_shop_flutter/main.dart';
import 'package:minimal_shop_flutter/models/products.dart';
import 'package:minimal_shop_flutter/models/shop_model.dart';
import 'package:provider/provider.dart';

class MyProductTile extends StatelessWidget {
  final Product product;
  const MyProductTile({super.key,
  required this.product});

  //add to cart
  void addToCart(BuildContext context){
    showDialog(
        context: context,
        builder: (context)=>AlertDialog(
          content: Text('Add this item in your cart?'),
          actions: [
            MaterialButton(
                onPressed: ()=>Navigator.pop(context),
              child: Text('Cancel'),
            ),
            MaterialButton(
                onPressed: (){
                  Navigator.pop(context);

                  //now add to cart as well
                  context.read<Shop>().addItem(product);
                },
            child: Text('Yes'),)
          ],
        ),);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(12)
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(25),
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //here we will need every details needed to display our product
          //firstly image
          Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(12)),
                width: double.infinity,
                padding: const EdgeInsets.all(25),
                child: Image.asset(product.imagePath,),
              ),
            ),

            const SizedBox(height: 25,),
            //now name
            Text(
              product.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 10,),
            Text(
              product.description,
              style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
            ),
          ],
          ),
          const SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  '\$'+product.price,
              ),
              //add to cart button
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: IconButton(
                    onPressed: ()=>addToCart(context),
                    icon: Icon(Icons.add)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
