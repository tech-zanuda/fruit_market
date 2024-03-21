import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/components/colors.dart';
import 'package:fruit_market/presentation/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFF6961)),
        primaryColor: primaryColor,
        primaryColorLight: primaryColorLight,
        disabledColor: disabledColor,
        highlightColor: highlightColor,
        filledButtonTheme: FilledButtonThemeData(
            style: ButtonStyle(
                shadowColor:
                    MaterialStatePropertyAll(Colors.black.withOpacity(0.05)),
                elevation: const MaterialStatePropertyAll(15),
                shape: MaterialStatePropertyAll(SmoothRectangleBorder(
                    borderRadius: SmoothBorderRadius(
                        cornerRadius: 20, cornerSmoothing: 0.6))),
                backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    return primaryColor.withOpacity(0.5);
                  } else if (states.contains(MaterialState.disabled)) {
                    return greyColor;
                  }
                  return primaryColor;
                }))),
        navigationBarTheme: NavigationBarThemeData(
            backgroundColor: Theme.of(context).primaryColor),
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
                bodyLarge: TextStyle(),
                bodyMedium: TextStyle(),
                bodySmall: TextStyle())
            .apply(displayColor: allTextColor, bodyColor: allTextColor),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
