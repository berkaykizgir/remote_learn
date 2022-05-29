import 'package:flutter/material.dart';

class ThemeContents {
  final int index;
  bool locked;
  final List<Color> gradientBackgroundColors;
  final Color buttonColor;
  final int price;

  ThemeContents({required this.index, required this.locked, required this.gradientBackgroundColors, required this.buttonColor, required this.price});
}

List<ThemeContents> themeContents = [
  ThemeContents(
    locked: false,
    index: 0,
    price: 0,
    buttonColor: const Color(0xFF4563DB),
    gradientBackgroundColors: [const Color(0xFF041B2D), const Color(0xFF004E9A), const Color(0xFF428CD4), const Color(0xFFFF9CDA), const Color(0xFFEa4492)],
  ),
  ThemeContents(
    locked: true,
    index: 1,
    price: 100,
    buttonColor: const Color(0xFF1c2e4a),
    gradientBackgroundColors: [const Color(0xFFDC8665), const Color(0xFF138086), const Color(0xFF534666), const Color(0xFFCD7672), const Color(0xFFEEB462)],
  ),
  ThemeContents(
    locked: true,
    index: 2,
    price: 150,
    buttonColor: const Color(0xFF1c2e4a),
    gradientBackgroundColors: [const Color(0xFFE8A49C), const Color(0xFF3C4CAD), const Color(0xFF240E8B), const Color(0xFFF04393), const Color(0xFFF9C449)],
  ),
  ThemeContents(
    locked: true,
    index: 3,
    price: 200,
    buttonColor: const Color(0xFF1c2e4a),
    gradientBackgroundColors: [const Color(0xFF7BD5F5), const Color(0xFF787FF6), const Color(0xFF4ADEDE), const Color(0xFF1CA7EC), const Color(0xFF1F2F98)],
  ),
  ThemeContents(
    locked: true,
    index: 4,
    price: 250,
    buttonColor: const Color(0xFF1c2e4a),
    gradientBackgroundColors: [const Color(0xFF0B0742), const Color(0xFF120C6E), const Color(0xFF5E72EB), const Color(0xFFFF9190), const Color(0xFFFDC094)],
  ),
  ThemeContents(
    locked: true,
    index: 5,
    price: 300,
    buttonColor: const Color(0xFF1c2e4a),
    gradientBackgroundColors: [const Color(0xFF205072), const Color(0xFF329D9C), const Color(0xFF56C596), const Color(0xFF7BE495), const Color(0xFFCFF4D2)],
  ),
  ThemeContents(
    locked: true,
    index: 6,
    price: 350,
    buttonColor: const Color(0xFF1c2e4a),
    gradientBackgroundColors: [const Color(0xFFFBEEE6), const Color(0xFFFFE5D8), const Color(0xFFFFCAD4), const Color(0xFFF3ABB6), const Color(0xFF9F8189)],
  ),
  ThemeContents(
    locked: true,
    index: 7,
    price: 400,
    buttonColor: const Color(0xFF1c2e4a),
    gradientBackgroundColors: [const Color(0xFF031B88), const Color(0xFF6096FD), const Color(0xFFAAB6FB), const Color(0xFFFB7B8E), const Color(0xFFFAA7B8)],
  ),
  ThemeContents(
    locked: true,
    index: 8,
    price: 450,
    buttonColor: const Color(0xFF1c2e4a),
    gradientBackgroundColors: [const Color(0xFF2C6975), const Color(0xFF68B2A0), const Color(0xFFCDE0C9), const Color(0xFFE0ECDE), const Color(0xFFFFFFFF)],
  ),
  ThemeContents(
    locked: true,
    index: 9,
    price: 500,
    buttonColor: const Color(0xFF1c2e4a),
    gradientBackgroundColors: [const Color(0xFF6AAB9C), const Color(0xFFFA9284), const Color(0xFFE06C78), const Color(0xFF5874DC), const Color(0xFF384E78)],
  ),
  ThemeContents(
    locked: true,
    index: 10,
    price: 500,
    buttonColor: const Color(0xFF1c2e4a),
    gradientBackgroundColors: [const Color(0xFF4A707A), const Color(0xFF7697A0), const Color(0xFF94B0B7), const Color(0xFFC2C8C5), const Color(0xFFDDDDDA)],
  ),
  ThemeContents(
    locked: true,
    index: 11,
    price: 500,
    buttonColor: const Color(0xFF1c2e4a),
    gradientBackgroundColors: [const Color(0xFF35BBCA), const Color(0xFF0191B4), const Color(0xFFF8D90F), const Color(0xFFD3DD18), const Color(0xFFFE7A15)],
  ),
  ThemeContents(
    locked: true,
    index: 12,
    price: 500,
    buttonColor: const Color(0xFF1c2e4a),
    gradientBackgroundColors: [const Color(0xFF041B2D), const Color(0xFF004E9A), const Color(0xFF428CD4), const Color(0xFFFF9CDA), const Color(0xFFEA4492)],
  ),
  ThemeContents(
    locked: true,
    index: 13,
    price: 500,
    buttonColor: const Color(0xFF1c2e4a),
    gradientBackgroundColors: [const Color(0xFF47CACC), const Color(0xFF63BCC9), const Color(0xFFCDB3D4), const Color(0xFFE7B7C8), const Color(0xFFFFBE88)],
  ),
  ThemeContents(
    locked: true,
    index: 14,
    price: 500,
    buttonColor: const Color(0xFF1c2e4a),
    gradientBackgroundColors: [const Color(0xFFFF7B89), const Color(0xFF8A5082), const Color(0xFF6F5F90), const Color(0xFF758EB7), const Color(0xFFA5CAD2)],
  ),
  ThemeContents(
    locked: true,
    index: 15,
    price: 500,
    buttonColor: const Color(0xFF1c2e4a),
    gradientBackgroundColors: [const Color(0xFF33539E), const Color(0xFF7FACD6), const Color(0xFFBFB8DA), const Color(0xFFE8B7D4), const Color(0xFFA5678E)],
  ),
  ThemeContents(
    locked: true,
    index: 16,
    price: 500,
    buttonColor: const Color(0xFF1c2e4a),
    gradientBackgroundColors: [const Color(0xFFDF825F), const Color(0xFFF8956F), const Color(0xFFDFB15B), const Color(0xFF4D446F), const Color(0xFF706695)],
  ),
  ThemeContents(
    locked: true,
    index: 17,
    price: 500,
    buttonColor: const Color(0xFF1c2e4a),
    gradientBackgroundColors: [const Color(0xFF85CBCC), const Color(0xFFA8DEE0), const Color(0xFFF9E2AE), const Color(0xFFFBC78D), const Color(0xFFA7D676)],
  ),
  ThemeContents(
    locked: true,
    index: 18,
    price: 500,
    buttonColor: const Color(0xFF1c2e4a),
    gradientBackgroundColors: [const Color(0xFF5AA7A7), const Color(0xFF96D7C6), const Color(0xFFBAC94A), const Color(0xFFE2D36B), const Color(0xFF6C8CBF)],
  ),
  ThemeContents(
    locked: true,
    index: 19,
    price: 500,
    buttonColor: const Color(0xFF1c2e4a),
    gradientBackgroundColors: [const Color(0xFFFF7B89), const Color(0xFF8A5082), const Color(0xFF6F5F90), const Color(0xFF758EB7), const Color(0xFFA5CAD2)],
  ),
  ThemeContents(
    locked: true,
    index: 20,
    price: 500,
    buttonColor: const Color(0xFF1c2e4a),
    gradientBackgroundColors: [const Color(0xFF015C92), const Color(0xFF2D82B5), const Color(0xFFFB6602), const Color(0xFF88CDF6), const Color(0xFFBCE6FF)],
  ),
  ThemeContents(
    locked: true,
    index: 21,
    price: 500,
    buttonColor: const Color(0xFF1c2e4a),
    gradientBackgroundColors: [const Color(0xFF522157), const Color(0xFF8B4C70), const Color(0xFFC2649A), const Color(0xFFE4C7B7), const Color(0xFFE4DFD9)],
  ),
  ThemeContents(
    locked: true,
    index: 22,
    price: 500,
    buttonColor: const Color(0xFF1c2e4a),
    gradientBackgroundColors: [const Color(0xFF264D59), const Color(0xFF43978D), const Color(0xFFF9E07F), const Color(0xFFF9AD6A), const Color(0xFFD46C4E)],
  ),
  ThemeContents(
    locked: true,
    index: 23,
    price: 500,
    buttonColor: const Color(0xFF1c2e4a),
    gradientBackgroundColors: [const Color(0xFFC73866), const Color(0xFFFE676E), const Color(0xFFFD8F52), const Color(0xFFFFBD71), const Color(0xFFFFDCA2)],
  ),
  ThemeContents(
    locked: true,
    index: 24,
    price: 500,
    buttonColor: const Color(0xFF1c2e4a),
    gradientBackgroundColors: [const Color(0xFF3B5284), const Color(0xFF5BA8A0), const Color(0xFFCBE54E), const Color(0xFF94B447), const Color(0xFF5D6E1E)],
  ),
  ThemeContents(
    locked: true,
    index: 25,
    price: 500,
    buttonColor: const Color(0xFF1c2e4a),
    gradientBackgroundColors: [const Color(0xFFC6A477), const Color(0xFFECD59F), const Color(0xFFD3E7EE), const Color(0xFFABD1DC), const Color(0xFF7097A8)],
  ),
  ThemeContents(
    locked: true,
    index: 26,
    price: 500,
    buttonColor: const Color(0xFF1c2e4a),
    gradientBackgroundColors: [const Color(0xFF7E9680), const Color(0xFF79616F), const Color(0xFFAE6378), const Color(0xFFD87F81), const Color(0xFFEAB595)],
  ),
  ThemeContents(
    locked: true,
    index: 27,
    price: 500,
    buttonColor: const Color(0xFF1c2e4a),
    gradientBackgroundColors: [const Color(0xFF455054), const Color(0xFF308695), const Color(0xFFD45769), const Color(0xFFE69D45), const Color(0xFFD4CFC9)],
  ),
  ThemeContents(
    locked: true,
    index: 28,
    price: 500,
    buttonColor: const Color(0xFF1c2e4a),
    gradientBackgroundColors: [const Color(0xFF478BA2), const Color(0xFFDE5B6D), const Color(0xFFE9765B), const Color(0xFFF2A490), const Color(0xFFB9D4DB)],
  ),
  ThemeContents(
    locked: true,
    index: 29,
    price: 500,
    buttonColor: const Color(0xFF1c2e4a),
    gradientBackgroundColors: [const Color(0xFFFFFFFF), const Color(0xFFE7E7E7), const Color(0xFFD1D1D1), const Color(0xFFB6B6B6), const Color(0xFF9B9B9B)],
  ),
  ThemeContents(
    locked: true,
    index: 30,
    price: 500,
    buttonColor: const Color(0xFF1c2e4a),
    gradientBackgroundColors: [const Color(0xFFAAC9CE), const Color(0xFFB6B4C2), const Color(0xFFC9BBC8), const Color(0xFFE5C1CD), const Color(0xFFF3DBCF)],
  ),
  ThemeContents(
    locked: true,
    index: 31,
    price: 500,
    buttonColor: const Color(0xFF1c2e4a),
    gradientBackgroundColors: [const Color(0xFFF5CEC7), const Color(0xFFE79796), const Color(0xFFFFC98B), const Color(0xFFFFB284), const Color(0xFFC6C09C)],
  ),
  ThemeContents(
    locked: true,
    index: 32,
    price: 500,
    buttonColor: const Color(0xFF1c2e4a),
    gradientBackgroundColors: [const Color(0xFF86E3CE), const Color(0xFFD0E6A5), const Color(0xFFFFDD94), const Color(0xFFFA897B), const Color(0xFFCCABD8)],
  ),
];
