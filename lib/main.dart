import 'package:expense_tracker_app/widgets/expenses.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

var kColorScheme = ColorScheme.fromSeed(seedColor: Color(0xFF7f5539));

var kDarkColorScheme = ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 5, 99, 125));

// Color.fromARGB(255, 229, 41, 179)

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    darkTheme: ThemeData.dark().copyWith(
      useMaterial3: true,
      colorScheme: kDarkColorScheme,
      cardTheme: CardTheme().copyWith(
          color: kDarkColorScheme.onTertiary,
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8)),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kDarkColorScheme.primaryContainer,
              foregroundColor: kDarkColorScheme.onSecondaryContainer)),
    ),
    theme: ThemeData().copyWith(
      useMaterial3: true,
      colorScheme: kColorScheme,
      appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer),
      cardTheme: CardTheme().copyWith(
          color: kColorScheme.onTertiary,
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8)),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kColorScheme.primaryContainer)),
    ),
    themeMode: ThemeMode.system,
    home: const Expenses(),
  ));
}


//  textTheme: TextTheme().copyWith(
//             titleLarge: TextStyle().copyWith(
//                 fontWeight: FontWeight.normal,
//                 color: kColorScheme.onSecondaryContainer,
//                 fontSize: 18))
