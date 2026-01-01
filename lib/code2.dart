import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 8, 43, 71),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 8, 43, 71),
          title: const Text(
            'Bengaluru',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          actions: const [
            Icon(Icons.bookmark, color: Colors.white, size: 30),
            SizedBox(width: 10),
            Icon(Icons.more_vert, color: Colors.white, size: 30),
            SizedBox(width: 10),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 2),

              // Temperature + cloud (no space between them)
              const Text(
                '24°C',
                style: TextStyle(
                    fontSize: 65,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const Text('Cloudy',
                  style: TextStyle(fontSize: 35, color: Colors.white)),
              const SizedBox(height: 5),
              const Text('19 ~ 27°C Feels like 23°C',
                  style: TextStyle(fontSize: 25, color: Colors.white)),

              const SizedBox(height: 60),

              const Divider(color: Colors.white24, thickness: 1),

              const SizedBox(height: 40),

              // Hourly row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  condition(Icons.nights_stay, 'Now'),
                  condition(Icons.nights_stay, '23:00'),
                  condition(Icons.nights_stay, '11/24'),
                  condition(Icons.nights_stay, '01:00'),
                  condition(Icons.nights_stay, '02:00'),
                ],
              ),

              const SizedBox(height: 30),

              const Divider(color: Colors.white24, thickness: 1),

              const SizedBox(height: 20),

              // PERFECT ALIGNMENT TABLE
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Table(
                  columnWidths: const {
                    0: FlexColumnWidth(1.2),
                    1: FlexColumnWidth(2),
                    2: FlexColumnWidth(1.3),
                    3: FlexColumnWidth(1),
                    4: FlexColumnWidth(1),
                  },
                  children: [
                    tableRow('11/22', 'Yesterday',
                        Icons.cloudy_snowing, '20', '26'),
                    tableRow(
                        '11/23', 'Today', Icons.cloudy_snowing, '19', '27'),
                    tableRow('11/24', 'Tomorrow',
                        Icons.cloudy_snowing, '18', '27'),
                    tableRow('11/25', 'Tue', Icons.cloud, '16', '23'),
                    tableRow('11/26', 'Wed', Icons.bolt, '16', '27'),
                    tableRow('11/27', 'Thurs', Icons.air, '17', '27'),
                  ],
                ),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

//-------------------------------------
// Icon + Text vertical column
//-------------------------------------
Widget condition(IconData icon, String text) {
  return Column(
    children: [
      Icon(icon, color: Colors.white, size: 30),
      const SizedBox(height: 5),
      Text(text, style: const TextStyle(color: Colors.white)),
    ],
  );
}

//-------------------------------------
// PERFECTLY ALIGNED TABLE ROW
//-------------------------------------
TableRow tableRow(
    String time, String day, IconData icon, String rate, String max) {
  return TableRow(
    children: [
      tableCell(time),
      tableCell(day),
      tableIcon(icon),
      tableCell(rate),
      tableCell(max),
    ],
  );
}

//-------------------------------------
// Table text cell with equal vertical padding
//-------------------------------------
Widget tableCell(String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 14),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
    ),
  );
}

//-------------------------------------
// Table icon cell (CENTERED PERFECTLY)
//-------------------------------------
Widget tableIcon(IconData icon) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 14),
    child: Center(
      child: Icon(
        icon,
        color: Colors.white,
        size: 26, // adjust size if needed
      ),
    ),
  );
}
