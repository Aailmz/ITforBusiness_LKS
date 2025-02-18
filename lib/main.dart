import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'login.dart';
import 'provider/invoiceprovider.dart';  // Import CartProvider

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(  // Add Provider wrapper
      create: (ctx) => CartProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'LKS MART',
        theme: ThemeData(
          primaryColor: const Color(0xFF476685),
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF476685),
            primary: const Color(0xFF476685),
          ),
          fontFamily: 'Poppins',
          
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: Colors.grey[100],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
          ),
          
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF476685),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
          ),
        ),
        home: const LoginPage(),
      ),
    );
  }
}