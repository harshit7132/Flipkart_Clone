import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.only(left: 10, top: 10),
            child: Text(
              'Explore',
              style: TextStyle(fontSize: 20),
            ),
          ),
          leadingWidth: 100,
          actions: const [
            SizedBox(
              width: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    CupertinoIcons.search,
                    size: 20,
                  ),
                  Icon(
                    CupertinoIcons.mic,
                    size: 20,
                  ),
                  Icon(
                    CupertinoIcons.camera,
                    size: 20,
                  ),
                  Icon(
                    CupertinoIcons.cart,
                    size: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),

        ///body
        body: ListView(
          children: List.generate(
            3,
            (index) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Card(
                child: SizedBox(
                  height: 270,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 250,
                            width: 150,
                            child: Column(
                              children: [
                                Container(
                                  height: 170,
                                  width: double.infinity,
                                  color: Colors.green,
                                ),

                                ///text
                                Text(
                                  'DEPORTIS',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'UNO hard cardboard',
                                  style: TextStyle(fontSize: 12),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      '449',
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough),
                                    ),
                                    Text(
                                      '₹95',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '70% off',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 18,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      size: 18,
                                    ),
                                    Text(
                                      'Assured',
                                      style: TextStyle(color: Colors.blue),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),

                          ///second
                          SizedBox(
                            height: 250,
                            width: 150,
                            child: Column(
                              children: [
                                Container(
                                  height: 170,
                                  width: double.infinity,
                                  color: Colors.blue,
                                ),

                                ///text
                                Text(
                                  'Granic Farms',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Dried Bluebarry',
                                  style: TextStyle(fontSize: 12),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      '499',
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough),
                                    ),
                                    Text(
                                      '₹250',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '69% off',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 18,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      size: 18,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      size: 18,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
