import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'counter/view.dart';

void main() async{
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.blue,
            colorScheme: ColorScheme.fromSwatch(
                primarySwatch: Colors.orange
            )
        ),
        home: CounterScreen(),
        // home: PageView(
        //   children: [
        //     MoviesScreen(),
        //     GridScreen(),
        //     ReverseScreen(),
        //     MoviesScreen(),
        //     AspectRatioScreen(),
        //     ConfettiScreen(),
        //     FlipPaperScreen(),
        //     NeonButtonScreen(),
        //   ],
        // ),
      ),
    );
  }
}