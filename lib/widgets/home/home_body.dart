import 'package:electrical_store_app/constants.dart';
import 'package:electrical_store_app/models/product.dart';
import 'package:electrical_store_app/screens/details_screen.dart';
import 'package:electrical_store_app/widgets/home/product_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
        child: Column(
          children: [
            SizedBox(height: eDefaultPadding / 2,),
            Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: eBackgroundColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      margin: EdgeInsets.only(
                        top: 70.0,
                      ),
                    ),
                    ListView.builder(
                      itemCount: products.length,
                      itemBuilder: (context,index) => ProductCard(
                        itemIndex: index,
                        product: products[index],
                        press: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context)=> DetailsScreen(product: products[index],))
                          );
                        },),
                    )
                  ],
                ))
          ],
    ));
  }
}

