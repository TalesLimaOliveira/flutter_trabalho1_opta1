import 'package:flutter/material.dart';
import 'components/labels.dart';
import 'screen/lista_carro.dart';
import 'components/colors.dart';

void main() { 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      home: const ListaCarro() ,
      title: AppLabels.appName,

      theme: ThemeData(
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: AppColors.containerBG,

        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: AppColors.text),
          bodyMedium: TextStyle(color: AppColors.text),
        ),

        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.primary,
          toolbarHeight: 50,
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(16.0)),
          ),
          titleTextStyle: TextStyle(
            color: AppColors.textButton,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(
            color: AppColors.textButton,
          ),
        ),

        listTileTheme: const ListTileThemeData(
          textColor: AppColors.text,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
          subtitleTextStyle: TextStyle(
            fontSize: 18.0,
          ),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.buttonBG,
            foregroundColor: AppColors.textButton,
            fixedSize: const Size(175, 40),
          ),  
        ),
      ),
    );
  }
}
