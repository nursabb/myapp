import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
          actions: [
            IconButton(
              icon: Icon(Icons.message),
              onPressed: () {
                // Add your messaging functionality here
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Add your search functionality here
              },
            ),
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {
                // Add your wishlist functionality here
              },
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Categories',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryWidget(title: 'Category 1'),
                  CategoryWidget(title: 'Category 2'),
                  CategoryWidget(title: 'Category 3'),
                  CategoryWidget(title: 'Category 4'),
                  // Add more CategoryWidget as needed
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Image Slider',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: CarouselSlider(
                items: [
                  Image.network('https://via.placeholder.com/200'),
                  Image.network('https://via.placeholder.com/200'),
                  Image.network('https://via.placeholder.com/200'),
                  // Add more images as needed
                ],
                options: CarouselOptions(
                  height: 200,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  final String title;

  CategoryWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Chip(
        label: Text(title),
      ),
    );
  }
}
