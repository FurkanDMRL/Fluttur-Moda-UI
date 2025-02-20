// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Detay extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  var imagePath;

  Detay({
    super.key,
    this.imagePath,
  });

  @override
  State<Detay> createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  String yaziTipi = 'Montserrat';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.imagePath,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(widget.imagePath), fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              borderRadius: BorderRadius.circular(15),
              elevation: 4,
              child: Container(
                height: 245,
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        //image
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            width: 100,
                            height: 125,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey),
                              image: DecorationImage(image: AssetImage('assets/images/dress.jpg'), fit: BoxFit.contain),
                            ),
                          ),
                        ),
                        //text
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Laminated',
                              style: TextStyle(fontSize: 22, fontFamily: yaziTipi, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Louis viuttom',
                              style: TextStyle(fontSize: 16, fontFamily: yaziTipi, color: Colors.grey),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: MediaQuery.of(context).size.width - 170,
                              child: Text(
                                'Lorem Ipsum, 500 yıl boyunca varlığını sürdürmekle kalmamış .',
                                style: TextStyle(fontSize: 12, fontFamily: yaziTipi, color: Colors.grey.shade400),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(),
                    //text and elevaten bottum
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$630',
                            style: TextStyle(fontFamily: yaziTipi, fontSize: 22, color: Colors.brown.withOpacity(.8)),
                          ),
                          FloatingActionButton(
                            backgroundColor: Colors.brown,
                            onPressed: () {},
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
