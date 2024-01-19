import 'package:david_carretos/screens/carga_screen.dart';
import 'package:david_carretos/screens/form_screen.dart';
import 'package:david_carretos/theme/app_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 45),
        child: FloatingActionButton(
          elevation: 5,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const FormScreen();
            }));
          },
          backgroundColor: AppColors.backGraundColor,
          child: Text(
            'Continuar',
            style: TextStyle(
                color: AppColors.secondaryColor,
                fontSize: 10,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: const CargaScreen(),
    );
  }
}
