import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roll_dice/expense_tracker/expenses.dart';
// import 'package:roll_dice/fav_place/screens/places.dart';
import 'package:roll_dice/meals/screens/categories.dart';
import 'package:roll_dice/meals/screens/tabs.dart';
import 'package:roll_dice/quiz_app/quiz.dart';
import 'package:roll_dice/roll_dice/gradient_container.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roll_dice/shopping_list/widgets/grocery_list.dart';

// meal app theme
// final theme = ThemeData(
//   colorScheme: ColorScheme.fromSeed(
//     brightness: Brightness.dark,
//     seedColor: const Color.fromARGB(255, 131, 57, 0),
//   ),
//   textTheme: GoogleFonts.latoTextTheme(),
// );

// favorite place app theme
final colorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 102, 6, 247),
  background: const Color.fromARGB(255, 56, 49, 66),
);

final theme = ThemeData().copyWith(
  useMaterial3: true,
  scaffoldBackgroundColor: colorScheme.background,
  colorScheme: colorScheme,
  textTheme: GoogleFonts.ubuntuCondensedTextTheme().copyWith(
    titleSmall: GoogleFonts.ubuntuCondensed(
      fontWeight: FontWeight.bold,
    ),
    titleMedium: GoogleFonts.ubuntuCondensed(
      fontWeight: FontWeight.bold,
    ),
    titleLarge: GoogleFonts.ubuntuCondensed(
      fontWeight: FontWeight.bold,
    ),
  ),
);

// expense tracker theme
var kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 59, 181));

var kDarkColorScheme = ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 5, 95, 125));

void main() async {
  // await dotenv.load(fileName: ".env");
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  // for roll dice
  // @override
  // Widget build(BuildContext context) {
  //   return const MaterialApp(
  //       home: Scaffold(
  //     backgroundColor: Colors.blueGrey,
  //     body: GradientContainer(),
  //   ));
  // }

// for quiz app
  // @override
  // Widget build(BuildContext context) {
  //   return const MaterialApp(home: Quiz());
  // }

// Expense tracker
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        darkTheme: ThemeData.dark().copyWith(
          colorScheme: kDarkColorScheme,
          cardTheme: const CardTheme().copyWith(
            color: kDarkColorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: kDarkColorScheme.primaryContainer,
                foregroundColor: kDarkColorScheme.onPrimaryContainer),
          ),
        ),
        theme: ThemeData().copyWith(
          useMaterial3: true,
          colorScheme: kColorScheme,
          appBarTheme: const AppBarTheme().copyWith(
              backgroundColor: kColorScheme.onPrimaryContainer,
              foregroundColor: kColorScheme.primaryContainer),
          cardTheme: const CardTheme().copyWith(
            color: kColorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kColorScheme.primaryContainer,
            ),
          ),
          textTheme: ThemeData().textTheme.copyWith(
                titleLarge: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kColorScheme.onSecondaryContainer,
                    fontSize: 16),
              ),
        ),
        themeMode: ThemeMode.system,
        home: const Expenses());
  }

// meals app
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(theme: theme, home: const TabsScreen());
  // }

// shooping list app
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Flutter Groceries',
  //     theme: ThemeData.dark().copyWith(
  //       useMaterial3: true,
  //       colorScheme: ColorScheme.fromSeed(
  //         seedColor: const Color.fromARGB(255, 147, 229, 250),
  //         brightness: Brightness.dark,
  //         surface: const Color.fromARGB(255, 42, 51, 59),
  //       ),
  //       scaffoldBackgroundColor: const Color.fromARGB(255, 50, 58, 60),
  //     ),
  //     home: const GroceryList(),
  //   );
  // }

// favorite place app
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Great Places',
  //     theme: theme,
  //     home: const PlacesScreen(),
  //   );
  // }
}
