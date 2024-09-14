import 'package:flutter/material.dart';
import 'package:minimal_shop_flutter/components/my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [
            DrawerHeader(
              child: Center(
                child: Icon(
                  Icons.shopping_bag,
                  size: 72,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ),

            const SizedBox(height: 25,),

            MyListTile(text: "Shop", icon: Icons.home, onTap: (){
              Navigator.pop(context);
            }),

            MyListTile(text: "Cart", icon: Icons.shopping_cart, onTap: (){
              //here as well we should add a pop first
              Navigator.pop(context);

              Navigator.pushNamed(context, '/cart_page');
            }),
            MyListTile(text: "Settings", icon: Icons.settings, onTap: (){
              Navigator.pop(context);

              Navigator.pushNamed(context, '/settings_page');
            })
          ],),

          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: MyListTile(text: "Exit", icon: Icons.logout, onTap: (){
              Navigator.pushNamed(context, '/intro_page');
            }),
          ),

        ],
      ),
    );
  }
}
