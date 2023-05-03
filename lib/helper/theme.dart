import 'package:flutter/material.dart';

class ThemeClass {
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: ColorScheme.light(),
      primarySwatch: AppColors.primary,
      fontFamily: 'Inter',
      appBarTheme: AppBarTheme(
          centerTitle: true,
          iconTheme: IconThemeData(
            color: AppColors.primary, //change your color here
          ),
          titleTextStyle: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'Inter'),
          backgroundColor: Colors.transparent,
          elevation: 0),
      inputDecorationTheme: InputDecorationTheme(
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.textFieldBorder),
          borderRadius: BorderRadius.circular(5),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: AppColors.textFieldBorder),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.primary),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: AppColors.textFieldBorder),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.red),
        ),
        labelStyle: TextStyle(
          color: Colors.grey,
          fontSize: 14,
        ),
        hintStyle: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      ),
      textSelectionTheme:
          TextSelectionThemeData(cursorColor: AppColors.primary));

  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.black,
      fontFamily: 'Inter',
      colorScheme: ColorScheme.dark(),
      iconTheme: IconThemeData(color: Colors.white),
      appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'Inter'),
          backgroundColor: AppColors.primary));
}

class AppColors {
  // static final MaterialColor primary = Colors.amber;
  static final MaterialColor primary = createSwatch(0, 102, 255, 1);
  // static final MaterialColor pro = createSwatch(162, 0, 255, 1);
  static final MaterialColor grey = createSwatch(134, 134, 134, 1);
  static final MaterialColor lightGrey = createSwatch(190, 190, 190, 1);
  static final MaterialColor lightBlue = createSwatch(222, 232, 255, 1);
  static final MaterialColor heading = createSwatch(6, 44, 128, 1);
  static final MaterialColor textFieldBorder = createSwatch(234, 234, 234, 1);
  static final MaterialColor textHintColor = createSwatch(164, 164, 164, 1);
  static final error = Colors.red.shade200;
}

class AppTextStyle {
  static final TextStyle star = TextStyle(
      fontFamily: 'Inter',
      fontSize: 20,
      color: AppColors.primary,
      fontWeight: FontWeight.w700);
  static final TextStyle linkText = TextStyle(
      fontFamily: 'Inter',
      color: AppColors.primary,
      decoration: TextDecoration.underline);
  static const TextStyle heading = TextStyle(
      fontFamily: 'Inter', color: Colors.black, fontWeight: FontWeight.w700);
  static const TextStyle text =
      TextStyle(fontFamily: 'Inter', fontSize: 12, color: Colors.black);
  static const TextStyle h1 = TextStyle(
    fontFamily: 'Inter',
    fontSize: 30,
    color: Colors.black,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle h2 =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w700);
  // static final TextStyle h2 = TextStyle(fontSize: 20,color: AppColors.primary,fontWeight: FontWeight.w700);
  // static final TextStyle h3 = TextStyle(fontSize: 20,color: AppColors.primary,fontWeight: FontWeight.w700);
  // static final TextStyle subHeading = TextStyle(fontFamily: 'Montserrat',fontSize: 13,color: AppColors.heading,fontWeight: FontWeight.w700,letterSpacing: 1);
  // static final TextStyle text = TextStyle(fontSize: 13,fontFamily: 'Montserrat',color: AppColors.text);
  // static final TextStyle labelTextStyle = TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w600, color: AppColors.heading, letterSpacing: 1, fontSize: 12);
  // static final TextStyle skip = TextStyle(color: AppColors.primary, fontWeight: FontWeight.w400);
  // static final TextStyle listText = TextStyle(color: AppColors.heading,fontWeight: FontWeight.w500);
  // static final TextStyle textField = TextStyle(fontWeight: FontWeight.bold,fontSize: 16, color: AppColors.heading);

  // static final TextStyle hint = TextStyle(fontWeight: FontWeight.w500,color: createSwatch(143, 148, 149, 1));

  // // static final TextStyle pageHeaderTextStyle = TextStyle(fontSize:22,fontWeight: FontWeight.w700,color: Colors.black);
  // // static final TextStyle pageSubHeaderTextStyle = TextStyle(fontSize:18,fontWeight: FontWeight.w700,color: Colors.black);

  // // static final TextStyle normalText = TextStyle(fontWeight: FontWeight.w600, color: Colors.black, letterSpacing: 1, fontSize: 12);
}

class DarkAppTextStyle {
  static final TextStyle star = TextStyle(
      fontSize: 20, color: AppColors.primary, fontWeight: FontWeight.w700);
  static final TextStyle linkText =
      TextStyle(color: AppColors.primary, decoration: TextDecoration.underline);
  static const TextStyle heading =
      TextStyle(color: Colors.white, fontWeight: FontWeight.w700);
  static const TextStyle text = TextStyle(fontSize: 12, color: Colors.white);
  static const TextStyle h1 = TextStyle(
      fontSize: 18, fontWeight: FontWeight.w700, fontFamily: 'Segoe UI');
  static const TextStyle h2 =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w700);
  // static final TextStyle h2 = TextStyle(fontSize: 20,color: AppColors.primary,fontWeight: FontWeight.w700);
  // static final TextStyle h3 = TextStyle(fontSize: 20,color: AppColors.primary,fontWeight: FontWeight.w700);
  // static final TextStyle subHeading = TextStyle(fontFamily: 'Montserrat',fontSize: 13,color: AppColors.heading,fontWeight: FontWeight.w700,letterSpacing: 1);
  // static final TextStyle text = TextStyle(fontSize: 13,fontFamily: 'Montserrat',color: AppColors.text);
  // static final TextStyle labelTextStyle = TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w600, color: AppColors.heading, letterSpacing: 1, fontSize: 12);
  // static final TextStyle skip = TextStyle(color: AppColors.primary, fontWeight: FontWeight.w400);
  // static final TextStyle listText = TextStyle(color: AppColors.heading,fontWeight: FontWeight.w500);
  // static final TextStyle textField = TextStyle(fontWeight: FontWeight.bold,fontSize: 16, color: AppColors.heading);

  // static final TextStyle hint = TextStyle(fontWeight: FontWeight.w500,color: createSwatch(143, 148, 149, 1));

  // // static final TextStyle pageHeaderTextStyle = TextStyle(fontSize:22,fontWeight: FontWeight.w700,color: Colors.black);
  // // static final TextStyle pageSubHeaderTextStyle = TextStyle(fontSize:18,fontWeight: FontWeight.w700,color: Colors.black);

  // // static final TextStyle normalText = TextStyle(fontWeight: FontWeight.w600, color: Colors.black, letterSpacing: 1, fontSize: 12);
}

MaterialColor createSwatch(int r, int g, int b, double o) {
  Map<int, Color> swatch = {};
  List<int> opacities = [50, 100, 200, 300, 400, 500, 600, 700, 800, 900];
  for (int opacity in opacities) {
    swatch[opacity] = Color.fromRGBO(r, g, b, opacity / 1000);
  }
  return MaterialColor(Color.fromRGBO(r, g, b, o).value, swatch);
}
