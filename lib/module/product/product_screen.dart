import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shose_shop/shared/componants/components.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({Key? key}) : super(key: key);

  List<String> images = [
    "assets/images/c.jpeg",
    "assets/images/c.jpeg",
    "assets/images/c.jpeg",
    "assets/images/c.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
           elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )
              )
              ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      // padding: EdgeInsets.all(20),
                      // width: double.infinity,
                      height: 300,
                      child: CarouselSlider(
                        items: images
                            .map((e) => Container(
                                  alignment: Alignment.topRight,
                                  margin: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0xffb2adca)
                                              .withOpacity(0.5),
                                          spreadRadius: 3,
                                          blurRadius: 10.0,
                                          offset: -Offset(0, 3),
                                        ),
                                      ],
                                      image: DecorationImage(
                                          image: AssetImage(e),
                                          fit: BoxFit.cover)),
                                ))
                            .toList(),
                        options: CarouselOptions(
                            scrollPhysics: ScrollPhysics(
                              parent: BouncingScrollPhysics(),
                            ),
                            height: double.infinity,
                            enableInfiniteScroll: false,
                            enlargeCenterPage: true,
                            autoPlay: true),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                  child: Text(
                                'Product Name Name Name ',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                ),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              )),
                              Text('\$99.9',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('Discription',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 50),
                              child: Text(
                                'Discription Discription vn Discription Discription v Discription DiscriptionDiscription Discription Discription\nDiscription Discription vn Discription Discription v Discription DiscriptionDiscription Discription Discription\nDiscription Discription vn Discription Discription v Discription DiscriptionDiscription Discription Discription',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                ),
                              ))
                        ],
                      ),
                    ))
                  ],
                ),
              ),
            ),
            Container(
              height: 80,
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              child: defaultButton(function: () {}, text: "Add to cart"),
            )
          ],
        ),
      ),
    );
  }
}
