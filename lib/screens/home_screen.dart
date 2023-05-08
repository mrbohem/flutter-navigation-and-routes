import 'package:first/screens/main/home_shop_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    const double outerBoxWeight = 270;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 120.0),
                  child: Text(
                    'What would you like to find?',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const HomeShopSlider(outerBoxWeight: outerBoxWeight),

                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 10),
                  child: GridView.builder(
                    // scrollDirection: Axis.vertical,
                    itemCount: 20,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        color: Colors.blueGrey,
                        child: Column(
                          children: [
                            Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRR16GucPxfoMWtiGOXUazxRFfXzX4OZWd3pEJGS-8iJw&usqp=CAU&ec=48665699',
                            ),
                            const Text(
                              "Lenovo Laptop int",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Container(
                              width: outerBoxWeight,
                              color: Colors.green,
                              margin: const EdgeInsets.only(top: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.currency_rupee,
                                        size: 18,
                                      ),
                                      // SizedBox(width: 1.0),
                                      Text(
                                        '180',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.currency_rupee,
                                        size: 18,
                                      ),
                                      // SizedBox(width: 1.0),
                                      Text(
                                        '180',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                // Expanded(

                // ListView.builder(
                //   scrollDirection: Axis.vertical,
                //   itemCount: 200,
                //   shrinkWrap: true,
                //   physics: const BouncingScrollPhysics(),
                //   itemBuilder: (BuildContext context, index) {
                //     return Stack(
                //       children: [
                //         Container(
                //           width: MediaQuery.of(context).size.width / 3,
                //           color: Colors.green,
                //           child: const Text("shiv"),
                //         ),
                //       ],
                //     );
                //   },
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
