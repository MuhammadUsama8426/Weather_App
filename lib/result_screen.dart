// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
// import 'networking.dart';
// import 'package:http/http.dart';

// class ResultScreen extends StatefulWidget {
//   const ResultScreen({super.key});

//   @override
//   State<ResultScreen> createState() => _ResultScreenState();
// }

// class _ResultScreenState extends State<ResultScreen> {
//   Position? position;
//   var longitude;
//   var latitude;
//  void getCurrentPosition() async {

// LocationPermission asked = await Geolocator.requestPermission();

//       Position currentPosition = await Geolocator.getCurrentPosition(
//           desiredAccuracy: LocationAccuracy.best);
     
//       print('latitude'+ currentPosition.latitude.toString());
//       print('lagitude' + currentPosition.longitude.toString());
//       Networking networking = Networking();
//       networking.getWeatherdata(
//           longitude: currentPosition.longitude,
//           latitude: currentPosition.latitude);


//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('result page'),
//       ),
//       body: Column(
//         children: [
//           Center(
//             child: InkWell(
//               onTap: () async {
//                 getCurrentPosition();
//               },
//               child: Container(
//                 color: Colors.green,
//                 margin: EdgeInsets.all(20),
//                 padding: EdgeInsets.all(20),
//                 child: Text('get location'),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
