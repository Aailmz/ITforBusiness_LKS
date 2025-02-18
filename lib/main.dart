import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menghilangkan banner debug
      title: 'LKS MART',
      theme: ThemeData(
        // Mengatur tema aplikasi
        primaryColor: const Color(0xFF476685),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF476685),
          primary: const Color(0xFF476685),
        ),
        // Mengatur font default
        fontFamily: 'Poppins', // Opsional, jika ingin menggunakan font Poppins
        
        // Mengatur tema input fields
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
        
        // Mengatur tema tombol
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
      home: const LoginPage(), // Menggunakan LoginPage sebagai halaman awal
    );
  }
}