import 'package:http/http.dart'as http;

class Networking{
  String? cityName;
  double? temperature;
  String apikey='1946714011e8b0a5268be8cec013490f';
  String requestcode='https://api.openweathermap.org/data/2.5/weather?lat={lat}&lon={lon}&appid={API key}';
  

}

// IconData getIconData(String iconCode) {
//   switch (iconCode) {
//     case '01d':
//       return Icons.wb_sunny; // Sunny day
//     case '02d':
//     case '02n':
//       return Icons.cloud; // Cloudy day or night
//     case '03d':
//     case '03n':
//     case '04d':
//     case '04n':
//       return Icons.cloud_queue; // Partly cloudy or overcast
//     // Add more cases as needed based on the OpenWeatherMap icon codes
//     default:
//       return Icons.error; // Default icon for unknown weather
//   }
// }