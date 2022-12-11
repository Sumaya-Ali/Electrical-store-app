import 'package:electrical_store_app/constants.dart';
import 'package:flutter/material.dart';

class DetailsImage extends StatelessWidget {
  const DetailsImage({
    Key? key,
    required this.size, required this.image,
  }) : super(key: key);

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: eDefaultPadding),
      height: size.width*0.8,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: size.width*0.7,
            width: size.width*0.7,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Image.asset(
            image,
            height: size.width*0.75,
            width: size.width*0.75,
            fit: BoxFit.contain,),
        ],
      ),
    );
  }
}
