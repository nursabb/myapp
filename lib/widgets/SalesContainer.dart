import 'package:flutter/material.dart';

class SalesContainer extends StatelessWidget {

  final String imageLink;

  const SalesContainer({
    Key? key,
    required this.imageLink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            imageLink,
            height: 150,
            width: 100,
            fit: BoxFit.cover,
          ),
   
         
        ],
      ),
    );
  }
}
