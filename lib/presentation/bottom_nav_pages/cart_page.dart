import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leadingWidth: 100,
          leading: Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: const Text(
              'My Cart',
              style: TextStyle(fontSize: 20),
            ),
          ),
          bottom: TabBar(
            labelStyle: TextStyle(fontSize: 18, color: Colors.blue),
            indicatorColor: Colors.blue,
            tabs: [
              Tab(
                text: 'Flipkart',
              ),
              Tab(
                text: 'Grocery',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
                child: Column(
              children: [
                Lottie.network(
                    'https://lottie.host/1ee0aa5b-caf6-49a8-9ae4-9486b255ca69/UOlzzc2423.json'),
                Text(
                  'Your cart is empty!',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 70,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Shop Now',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: Size(200, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ],
            )),
            Center(
              child: Column(
                children: [
                  Lottie.network(
                      'https://lottie.host/1ee0aa5b-caf6-49a8-9ae4-9486b255ca69/UOlzzc2423.json'),
                  Text(
                    'Your cart is empty!',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Shop Now',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: Size(200, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
