import 'package:electrical_store_app/constants.dart';
import 'package:electrical_store_app/models/product.dart';
import 'package:electrical_store_app/widgets/details/color_dot.dart';
import 'package:electrical_store_app/widgets/details/details_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: eDefaultPadding *1.5),
          decoration: BoxDecoration(
            color: eBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: DetailsImage(size: size,image: product.image,)),
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: eDefaultPadding/2),
                child: Text(product.title,
                style: Theme.of(context).textTheme.headline6,),
              ),
              Text(
                  'السعر: \$${product.price}',
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.w600,
                    color: eSecondaryColor,
                  ),),
              SizedBox(height: eDefaultPadding,),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: eDefaultPadding/2),
          padding: EdgeInsets.symmetric(horizontal: eDefaultPadding *1.5,vertical: eDefaultPadding/2),
          child: Text(
            product.desc,
            style: TextStyle(
              color: Colors.white,
              fontSize: 19.0,
            ),
          ),
        ),
      ],
    );
  }
}



