import 'dart:developer';

import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFCB495),
      appBar: AppBar(
        backgroundColor: const Color(0xffFCB495),
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Icon(
            Icons.list_alt,
            size: 35,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                log("fck");
              },
              child: const Icon(
                Icons.shopping_cart,
                size: 35,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.only(left: 25, right: 25),
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
          )
        ],
      ),
    );
  }
}
