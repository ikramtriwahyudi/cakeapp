import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Deskripsi extends StatefulWidget {
  const Deskripsi({super.key});

  @override
  State<Deskripsi> createState() => _DeskripsiState();
}

class _DeskripsiState extends State<Deskripsi> {
  int count = 0;

  increment() {
    setState(() {
      count++;
    });
  }

  decrement() {
    if (count < 1) {
      return;
    }
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/desk.png",
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: 350,
                color: Colors.white10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 70),
                          child: Text(
                            "Donut",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                        ),
                        Text("Flavoured cupcakes with\nspecial icing"),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        (rating);
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "About this product",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Flavoured cupcakes with special \nicing, Flavoured cupcakes.",
                      style: TextStyle(),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.favorite_border_outlined,
                          size: 65,
                          color: Color(0xffFCB495),
                        ),
                        const SizedBox(
                          width: 140,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: const Color(0xffFCB495)),
                          child: IconButton(
                              onPressed: decrement,
                              icon: const Icon(Icons.remove)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text("$count"),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: const Color(0xffFCB495)),
                            child: IconButton(
                                onPressed: increment,
                                icon: const Icon(Icons.add)))
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: Container(
                        width: 352,
                        height: 75,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff3F3D56)),
                            onPressed: () {},
                            child: const Text(
                              "Buy Now ",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
