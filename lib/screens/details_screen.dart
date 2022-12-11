import 'package:electrical_store_app/constants.dart';
import 'package:electrical_store_app/widgets/details/details_body.dart';
import 'package:flutter/material.dart';
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ePrimaryColor,
      appBar: DetailsAppBar(context),
      body: DetailsBody(),
    );
  }

  AppBar DetailsAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: eBackgroundColor,
      leading: IconButton(
        padding: EdgeInsets.only(right: eDefaultPadding),
        icon: Icon(
            Icons.arrow_back,
            color:ePrimaryColor,
            ),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      centerTitle: false,
      title: Text(
        'رجوع',
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}
