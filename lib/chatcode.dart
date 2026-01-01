import 'package:flutter/material.dart';

void main() {
  runApp(const MyWeatherApp());
}

class MyWeatherApp extends StatelessWidget {
  const MyWeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WeatherPage(),
    );
  }
}

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F1A2B),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // CITY NAME
                const Text(
                  "Bengaluru",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
        
                const SizedBox(height: 20),
        
                // BIG TEMPERATURE
                const Text(
                  "24°C",
                  style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
        
                const SizedBox(height: 10),
        
                // WEATHER STATUS
                const Text(
                  "Cloudy",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white70,
                  ),
                ),
        
                const SizedBox(height: 5),
        
                const Text(
                  "19° ~ 27°   Feels like 23°",
                  style: TextStyle(fontSize: 16, color: Colors.white60),
                ),
        
                const SizedBox(height: 25),
        
                // HOURLY FORECAST (very simple)
                SizedBox(
                  height: 90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      HourItem(time: "Now", temp: "24", icon: Icons.cloud),
                      HourItem(time: "20:00", temp: "24", icon: Icons.cloud),
                      HourItem(time: "21:00", temp: "23", icon: Icons.cloud),
                      HourItem(time: "22:00", temp: "23", icon: Icons.cloud),
                      HourItem(time: "23:00", temp: "22", icon: Icons.cloud),
                    ],
                  ),
                ),
        
                const SizedBox(height: 20),
        
                const Text(
                  "Daily Forecast",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        
                const SizedBox(height: 10),
        
                // DAILY FORECAST LIST (simple)
                const ForecastRow(
                  day: "Yesterday",
                  icon: Icons.cloud,
                  low: "20",
                  high: "26",
                ),
                const ForecastRow(
                  day: "Today",
                  icon: Icons.cloud,
                  low: "19",
                  high: "27",
                ),
                const ForecastRow(
                  day: "Tomorrow",
                  icon: Icons.cloud_queue,
                  low: "18",
                  high: "27",
                ),
                const ForecastRow(
                  day: "Tue",
                  icon: Icons.wb_sunny,
                  low: "16",
                  high: "27",
                ),
                const ForecastRow(
                  day: "Wed",
                  icon: Icons.waves_rounded,
                  low: "16",
                  high: "27",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ----------------- SMALL WIDGETS ------------------

class HourItem extends StatelessWidget {
  final String time;
  final String temp;
  final IconData icon;

  const HourItem({
    super.key,
    required this.time,
    required this.temp,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.white, size: 26),
        const SizedBox(height: 5),
        Text(
          temp,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
        const SizedBox(height: 5),
        Text(
          time,
          style: const TextStyle(color: Colors.white60, fontSize: 13),
        ),
      ],
    );
  }
}

class ForecastRow extends StatelessWidget {
  final String day;
  final IconData icon;
  final String low;
  final String high;

  const ForecastRow({
    super.key,
    required this.day,
    required this.icon,
    required this.low,
    required this.high,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              day,
              style: const TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          Icon(icon, color: Colors.white70, size: 22),
          const SizedBox(width: 20),
          Text(low, style: const TextStyle(color: Colors.white60)),
          const SizedBox(width: 10),
          Text(
            high,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}