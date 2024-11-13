import 'package:flutter/material.dart';
import 'package:weather_app2/WeatherApp3/hourly.dart';
import 'package:weather_app2/WeatherApp3/weakly.dart';

class Hourly_Weakly_Forcast extends StatefulWidget {
  const Hourly_Weakly_Forcast({super.key});

  @override
  State<Hourly_Weakly_Forcast> createState() => _Hourly_Weakly_ForcastState();
}

class _Hourly_Weakly_ForcastState extends State<Hourly_Weakly_Forcast>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text('Weather'),
        ),
        bottom: TabBar(
          controller: tabController,
          tabs: <Widget>[
            Tab(
              text: 'Hourly Forecast',
            ),
            Tab(
              text: 'Weekly Forecast',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          Hourly_Forcast(), // Replace with your actual Hourly Forecast widget
          Weakly_Forcast(), // Replace with your actual Weekly Forecast widget
        ],
      ),
    );
  }
}
