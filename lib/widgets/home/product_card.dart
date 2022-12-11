import 'package:electrical_store_app/constants.dart';
import 'package:electrical_store_app/models/product.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key, required this.itemIndex,required this.product,required this.press,
  }) : super(key: key);

  final int itemIndex;
  final Product product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Container(
      // color: Colors.green,
      height: 190.0,
      margin: EdgeInsets.symmetric(
        horizontal: eDefaultPadding,
        vertical: eDefaultPadding /2,
      ),
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: eBackgroundColor,
                  boxShadow:[
                    BoxShadow(
                      offset: Offset(0,15),
                      blurRadius: 25,
                      color: Colors.black12,
                    ),
                  ]
              ),
            ),
            Positioned(
              top: 0.0, left: 0.0,
              child: Container(
                // color: Colors.yellow,
                padding: EdgeInsets.symmetric(horizontal: eDefaultPadding),
                height: 160.0,
                width: 200.0,
                child: Image.asset(product.image,fit: BoxFit.contain,),
              ),),
            Positioned(
              bottom: 0,
              right: 0,
              child: SizedBox(
                height: 136.0,
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: eDefaultPadding),
                      child: Text(product.title,style: Theme.of(context).textTheme.bodyText1,),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: eDefaultPadding),
                      child: Text(product.subtitle, style: Theme.of(context).textTheme.caption,),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(eDefaultPadding),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: eDefaultPadding *1.5,
                          vertical: eDefaultPadding/5,
                        ),
                        decoration: BoxDecoration(
                          color: eSecondaryColor,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Text('السعر: \$ ${product.price}'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
