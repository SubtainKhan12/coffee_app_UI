import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeCard extends StatelessWidget {
  final String CoffeeImagePath;
  final String CoffeeName;
  final String CoffeName1;
  final String CoffeePrice;
  CoffeeCard({
    required this.CoffeeImagePath,
    required this.CoffeeName,
    required this.CoffeName1,
    required this.CoffeePrice,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 18, bottom: 80),
        child: Container(
            padding: EdgeInsets.all(12),
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.orange),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    CoffeeImagePath,
                    height: 150,
                    width: 170,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  CoffeeName,
                  style:
                      GoogleFonts.bebasNeue(fontSize: 30, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  CoffeName1,
                  style:
                      GoogleFonts.bebasNeue(fontSize: 20, color: Colors.black),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$" + CoffeePrice,
                      style: GoogleFonts.bebasNeue(
                          fontSize: 18, color: Colors.black),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(5)),
                        child: Icon(Icons.add))
                  ],
                ),
              )
            ])));
  }
}
