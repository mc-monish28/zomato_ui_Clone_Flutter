import 'package:flutter/material.dart';

class ZomatoUI extends StatefulWidget {
  const ZomatoUI({super.key});

  @override
  State<ZomatoUI> createState() => _ZomatoUIState();
}

class _ZomatoUIState extends State<ZomatoUI> {
  List imagelist = [
    "assets/food1.png",
    "assets/food2.png",
    "assets/food3.png",
    "assets/DhosaImg.png",
    "assets/Mask Group.png",
  ];
  List namelist = ["Healthy", "Home Style", "Pizza", "Chicken", "Fast Food"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 28,
                      child: Icon(
                        Icons.location_on_outlined,
                        size: 24,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: "Home",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: "\nReddiarpalayam, Puducherry",
                          style: TextStyle(
                            color: Colors.black,
                          ))
                    ])),
                    const Spacer(),
                    const Icon(
                      Icons.search,
                      color: Colors.red,
                      size: 24,
                    ),
                    const Spacer(),
                    const CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("assets/Frame 5.jpg"),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Image.asset("assets/Zomato1.png"),
                const SizedBox(height: 10),
                const Text(
                  "Eat What Makes you Happy",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                      itemCount: imagelist.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: Column(
                              children: [
                                Image.asset(
                                  imagelist[index].toString(),
                                  height: 80,
                                ),
                                const Spacer(),
                                Text(namelist[index].toString())
                              ],
                            ),
                          )),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text(
                      "127 restaurants around you",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/MobileData.png",
                            height: 16,
                          ),
                          const Text("Popular")
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Stack(children: [
                  Image.asset("assets/Zomato2.png"),
                  Positioned(
                      child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 30, top: 10, bottom: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(4)),
                              child: const Center(
                                child: Text(
                                  "Promoted",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ),
                            const Spacer(),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white,
                              child: Image.asset(
                                "assets/SaveFood.png",
                                height: 16,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(89, 133, 231, 1),
                                  borderRadius: BorderRadius.circular(4)),
                              child: const Center(
                                child: Text(
                                  "70 % OFF",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              height: 30,
                              width: 72,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(
                                    Icons.pedal_bike_sharp,
                                    size: 12,
                                  ),
                                  Text(
                                    "25 mins",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ))
                ]),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text(
                      "Sultan Kacchi Biryani",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    Container(
                      height: 24,
                      width: 46,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(40)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "4.3",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 12,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Text(
                      "Biryani,Desserts,Kacchi",
                    ),
                    Spacer(),
                    Text(
                      "Price Range 250 -550",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 11,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedFontSize: 11,
          selectedFontSize: 11,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                ),
                label: "Order"),
            BottomNavigationBarItem(
                icon: Icon(Icons.bubble_chart), label: "Go Out"),
            BottomNavigationBarItem(
                icon: Icon(Icons.production_quantity_limits), label: "pro"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket_sharp), label: "Grocery"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline), label: "Nutrition")
          ]),
    );
  }
}
