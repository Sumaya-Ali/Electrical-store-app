import 'package:electrical_store_app/constants.dart';
import 'package:electrical_store_app/widgets/details/color_dot.dart';
import 'package:electrical_store_app/widgets/details/details_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: eDefaultPadding),
          decoration: BoxDecoration(
            color: eBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            children: [
              DetailsImage(size: size,image: "assets/Laptop.png",),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: eDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColorDot(fillColor: eTextLightColor,isSelected: true,),
                    ColorDot(fillColor: Color.fromRGBO(108, 231, 132, 1.0),),
                    ColorDot(fillColor: Color.fromRGBO(235, 108, 93, 1.0),),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}



