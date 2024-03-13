import 'package:coffee_app/Utils/coffeescard.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(Icons.person),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.orange,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Text(
              "Find the best coffee for You",
              style: GoogleFonts.bebasNeue(fontSize: 60),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: TextField(
              decoration: InputDecoration(
                  fillColor: Colors.grey.shade800,
                  filled: true,
                  prefixIcon: Icon(Icons.search_rounded),
                  hintText: "Find Your Coffee",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide()),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.grey.shade600))),
            ),
          ),
          Container(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Cappucino",
                        style: GoogleFonts.bebasNeue(
                            fontSize: 20, color: Colors.orange),
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Latte",
                        style: GoogleFonts.bebasNeue(
                          fontSize: 20,
                          color: Colors.orange,
                        ),
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Milk Coffee",
                        style: GoogleFonts.bebasNeue(
                            fontSize: 20, color: Colors.orange),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Black",
                        style: GoogleFonts.bebasNeue(
                          fontSize: 20,
                          color: Colors.orange,
                        ),
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Tea",
                        style: GoogleFonts.bebasNeue(
                          fontSize: 20,
                          color: Colors.orange,
                        ),
                      )),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 400,
            // Wrap RenderTransform with Container

            // Set height to match the screen height
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeeCard(
                  CoffeeImagePath: "lib/Coffee/cappucino.jpg",
                  CoffeName1: "With OAT MILK",
                  CoffeeName: "Cappuccino",
                  CoffeePrice: "4.20",
                ),
                CoffeeCard(
                  CoffeeImagePath: "lib/Coffee/latte.jpg",
                  CoffeeName: "Latte",
                  CoffeName1: "With Chocolate",
                  CoffeePrice: "4.00",
                ),
                CoffeeCard(
                  CoffeeImagePath: "lib/Coffee/milkcoffe.jpg",
                  CoffeeName: "Milk Coffee",
                  CoffeName1: "With Oat Milk",
                  CoffeePrice: "4.00",
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
