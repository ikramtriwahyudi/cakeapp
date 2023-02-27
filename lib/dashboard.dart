import 'package:cakeapp/deskripsi.dart';
import 'package:cakeapp/listtile.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

List menu = [
  {
    "nama": "Cup Cake",
    "desc": 'Flavoured cupcakes with \n special icing',
    "harga": '\$ 5',
    "image": 'assets/original 1.png',
  },
  {
    "nama": "Donut",
    "desc": 'Flavoured cupcakes with \n special icing',
    "harga": '\$ 3',
    "image": 'assets/original 2.png',
  },
  {
    "nama": "Macaron",
    "desc": 'Flavoured cupcakes with \n special icing',
    "harga": '\$ 6',
    "image": 'assets/original 3.png',
  }
];

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFCB495),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color.fromARGB(116, 255, 255, 255),
              ),
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: "Search",
                  hintStyle: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  suffixIcon: const Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Listtile(),
                    ),
                  );
                },
                child: const Text(
                  "All",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xffA75A39)),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Sweets",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xffA75A39)),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Cakes",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xffA75A39)),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Candey",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xffA75A39)),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Deskripsi(),
                  ));
            },
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 100),
                  height: 557,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(80),
                        topRight: Radius.circular(80),
                      ),
                      color: Colors.white),
                ),
                Positioned(
                  top: 35,
                  left: 35,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 363,
                        height: 152,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 15),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Cup Cake",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Flavoured cupcakes with \n special icing",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "\$ 5",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Color(0xff5AA72B)),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/original 1.png",
                                    scale: 1.5,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.only(bottom: 90, left: 10),
                                    child: Icon(
                                      Icons.favorite_border_outlined,
                                      color: Color(0xffFCB495),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
