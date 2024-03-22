import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final String name;
  final String imageLink;

  const CategoryContainer({
    Key? key,
    required this.name,
    required this.imageLink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
   
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            imageLink,
            height: 80,
            width: 80,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Text(
            name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
