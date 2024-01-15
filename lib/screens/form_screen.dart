import 'package:david_carretos/components/form_item.dart';
import 'package:david_carretos/theme/app_colors.dart';
import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGraundColor,
      appBar: AppBar(
        title: Text("DAVID TRANSPORTES",
            style: TextStyle(
                color: AppColors.backGraundColor,
                fontFamily: "InstrumentSerif")),
        backgroundColor: AppColors.primaryColor,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Image.asset(
              'assets/images/david_transportes_logo.jpg',
              alignment: Alignment.center,
              fit: BoxFit.contain,
            ),
          )
        ],
        centerTitle: true,
      ),
      body: const FormItem(),
    );
  }
}
