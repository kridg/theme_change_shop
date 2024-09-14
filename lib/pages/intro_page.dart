import 'package:flutter/material.dart';
import 'package:minimal_shop_flutter/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Image.asset(
                  'lib/images/shop_icon.png',
                  height: 150,),
              ),
              const SizedBox(height: 25,),
              
              const Text(
                'Minimal Shop',
                style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.bold),),

              const SizedBox(height: 10,),

              const Text('Your everyday minimal shop',style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,),

              const SizedBox(height: 25,),
              
              //now button to go to main page
              MyButton(onTap: (){
                Navigator.pushNamed(context, '/shop_page');
              }, child: const Icon(Icons.arrow_forward))

            ],
          ),
        ),
      ),
    );
  }
}
