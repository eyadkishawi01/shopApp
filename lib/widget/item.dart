import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shopapp/widget/button.dart';

class Item extends StatelessWidget {
  Item(
      {Key? key,
      required this.disc,
      required this.imglink,
      required this.title})
      : super(key: key);

  String title, disc;
  List<String> imglink;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60.0, bottom: 10),
              child: CarouselSlider(
                options: CarouselOptions(
                    autoPlay: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 700),
                    height: 300.0),
                items: [0, 1, 2].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(.4)),
                          child: Image.network(
                            imglink[i],
                            fit: BoxFit.cover,
                          ));
                    },
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    width: double.infinity,
                    child: Text(disc),
                  ),
                  const SizedBox(height: 70),
                  prplButton(height: 50, ontap: () {}, txt: "Add to cart")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
