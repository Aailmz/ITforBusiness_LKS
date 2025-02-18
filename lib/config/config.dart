class ApiConfig {
  static const String baseUrl = 'https://1ffd-2404-c0-2020-00-712-d2e0.ngrok-free.app/api';// Your Ngrok/whatever URL
  static String get loginUrl => '$baseUrl/auth/login';
  static String get registerUrl => '$baseUrl/auth/register';
  static String get productsUrl => '$baseUrl/produk';
}