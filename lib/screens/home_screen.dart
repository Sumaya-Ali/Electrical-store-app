import 'package:electrical_store_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ePrimaryColor,
      appBar: homeAppBar(),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      elevation: 0,
      title:Text(""
          "مرحبا بكم في متجر الإلكترونيات",
          style: GoogleFonts.getFont('Almarai'),),
      centerTitle: false,
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
      ],
    );
  }
}
