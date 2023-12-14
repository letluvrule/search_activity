import 'package:flutter/material.dart';
import 'package:search_activity/screens/main_navigation_screen.dart';

void main() {
  runApp(const XScreen());
}

class XScreen extends StatelessWidget {
  const XScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red.shade100,
        scaffoldBackgroundColor: Colors.white,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        // scrollbarTheme: ScrollbarThemeData는 iOS에서 안정적 X
        // 따라서 RawScrollbar를 사용해야 함
        // scrollbarTheme: ScrollbarThemeData(
        //   mainAxisMargin: 150,
        //   thumbVisibility: MaterialStateProperty.all(true),
        //   thumbColor: MaterialStateProperty.all(
        //     const Color.fromRGBO(0, 0, 0, 0.3),
        //   ),
        // ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          surfaceTintColor: Colors.transparent,
        ),
      ),
      home: const MainNavigationScreen(),
    );
  }
}
