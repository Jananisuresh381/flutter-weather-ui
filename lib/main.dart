import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 13, 14, 49),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 13, 14, 49),
          title: Text('Bengaluru',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25),),
          actions: [
            IconButton(onPressed: () {},
             icon: Icon(Icons.bookmark,color: Colors.white,size: 30,)),
             IconButton(onPressed: () {},
             icon: Icon(Icons.more_vert, color: Colors.white,size: 30,))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 90),
              Text('24°C',style: TextStyle(fontSize: 70, color: Colors.white, fontWeight: FontWeight.bold),),
              Text('Cloudy',style: TextStyle(fontSize: 28,color: Colors.white),),
              Text('19 ~ 27°C Feels like 23°C',style: TextStyle(fontSize: 18,color: Colors.white),),  
              SizedBox(height: 150),
              Divider(height: 6,
              thickness: 2.0,
              color: Colors.white12,),
              SizedBox(height: 70),
              SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  padding: const EdgeInsets.symmetric(horizontal: 8),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.start, // use start so items flow naturally
    children: [
      const SizedBox(width: 8),
      condition(Icons.nights_stay, 'Now'),
      const SizedBox(width: 18),
      condition(Icons.nights_stay, '23:00'),
      const SizedBox(width: 18),
      condition(Icons.nights_stay, '11/24'),
      const SizedBox(width: 18),
      condition(Icons.nights_stay, '01:00'),
      const SizedBox(width: 18),
      condition(Icons.nights_stay, '02:00'),
      const SizedBox(width: 18),
      condition(Icons.nights_stay, '03:00'),
      const SizedBox(width: 18),
      condition(Icons.nights_stay, '09:00'),
      const SizedBox(width: 18),
      condition(Icons.nights_stay, 'Now'),
      const SizedBox(width: 18),
      condition(Icons.nights_stay, '23:00'),
      const SizedBox(width: 8),
      const SizedBox(width: 8),
      condition(Icons.nights_stay, 'Now'),
      const SizedBox(width: 18),
      condition(Icons.nights_stay, '23:00'),
      const SizedBox(width: 18),
      condition(Icons.nights_stay, '11/24'),
      const SizedBox(width: 18),
      condition(Icons.nights_stay, '01:00'),
      const SizedBox(width: 18),
      condition(Icons.nights_stay, '02:00'),
      const SizedBox(width: 18),
      condition(Icons.nights_stay, '03:00'),
      const SizedBox(width: 8),
      condition(Icons.nights_stay, 'Now'),
      const SizedBox(width: 18),
      condition(Icons.nights_stay, '23:00'),
      const SizedBox(width: 18),
      condition(Icons.nights_stay, '11/24'),
      const SizedBox(width: 18),
      condition(Icons.nights_stay, '01:00'),
      const SizedBox(width: 18),
      condition(Icons.nights_stay, '02:00'),
      const SizedBox(width: 18),
      condition(Icons.nights_stay, '03:00'),
      const SizedBox(width: 8),
      condition(Icons.nights_stay, 'Now'),
      const SizedBox(width: 18),
      condition(Icons.nights_stay, '23:00'),
      const SizedBox(width: 18),
      condition(Icons.nights_stay, '11/24'),
      const SizedBox(width: 18),
      condition(Icons.nights_stay, '01:00'),
      const SizedBox(width: 18),
      condition(Icons.nights_stay, '02:00'),
      const SizedBox(width: 18),
      condition(Icons.nights_stay, '03:00'),
    ],
  ),
),

              Container(margin: EdgeInsets.all(20),
                height: 2,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white10,
                ),
              ),
              Row( 
                spacing: 40,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 time('11/22', '11/23', '11/24', '11/25', '11/26', '11/27'),
                 day('Yesterday', 'Today', 'Tomorrow', 'Tue', 'Wed', 'Thurs'),
                 ticon( Icons.cloudy_snowing, 
                  Icons.cloudy_snowing,
                   Icons.cloudy_snowing, 
                   Icons.cloud, 
                   Icons.line_style, 
                   Icons.line_style,),
                   rate('20', '23', '17', '16', '18', '16'),
                   rate2('26', '27', '24', '27', '23', '26'),
                ],
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white24,
                ),
                onPressed: () {}, 
                child: Text('View more',
                style: TextStyle(
                  fontWeight:FontWeight.bold, 
                  color: Colors.white),)),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white24,
                    ),
                    height: 250,
                    width: 350,
                    child: Row(
                      spacing: 20,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                       weatherdata(
                        Icons.dew_point, 'Feels like', '25 C', 
                        Icons.wb_sunny, 'UV', 'Weak',),
                        
                        weatherdata(
                        Icons.air, 'E', 'Force 3', 
                        Icons.visibility, 'Visibility', '8 km',),
                        
                        weatherdata(
                        Icons.water_drop, 'Humidity', '78 %', 
                        Icons.speed, 'Pressure', '1,020 hPa',),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                   Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white24,
                    ),
                    height: 250,
                    width: 350,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                          children: [
                            TextSpan(
                              text: '50 ',
                              style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 35,
                              color: Colors.white)
                            ),
                            TextSpan(
                              text: 'Poor',
                              style: TextStyle(
                              fontSize: 20,
                              color: Colors.white54)
                            ),
                          ]
                        )),
                        SizedBox(height: 25,),
                        Container(
                           height: 10,
                           decoration: BoxDecoration(
                            borderRadius: 
                            BorderRadius.circular(8),
                            gradient: LinearGradient(
                              colors: [
                                Colors.green,
                                Colors.yellow,
                                Colors.orange,
                                Colors.redAccent,
                                Colors.pinkAccent,
                                Colors.pink
                              ])
                           ),
                        ),
                       SizedBox(height: 55,),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         condition2('PM2.5', '50', Colors.orange,),
                         condition2('PM10', '68', Colors.orange,),                                  
                         condition2('Co', '2', Colors.green,),
                         condition2('So2', '3', Colors.green,), 
                                    
                        ],
                       )
                       
                      ],
                    ),
                  ),
                  SizedBox(height: 80,)
            ],
          )
          ),
        ),
    );
  }
  Widget condition (IconData cicon, String ctext) {
  return  Column(
                    children: [
                      Icon(cicon,color: Colors.white,size: 35,),
                      Text(ctext,style: TextStyle( color: Colors.white)),
                      
                    ],
  );
  }
  Widget condition2(
    String wtext,
    String wtext2,
    Color wcolor,
   
  ) {
    return Column( 
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(wtext, 
                              style: TextStyle(
                                color: Colors.white38,
                                 fontSize: 19),),
                              Text(wtext2,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                 fontSize: 20),),
                              Container(
                                height: 6,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade600,
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    width: 20,
                                decoration: BoxDecoration(
                                  color: wcolor,
                                  borderRadius: BorderRadius.circular(5)
                                  ),
                                ),
                              ),
                              )
                            ],
                          );
}



  Widget time (
    String text1,
    String text2,
    String text3,
    String text4,
    String text5,
    String text6,) {
    
    return Column(
      spacing: 15,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(text1,style: TextStyle(color: Colors.white)),
        Text(text2,style: TextStyle(color: Colors.white)),
        Text(text3,style: TextStyle(color: Colors.white)),
        Text(text4,style: TextStyle(color: Colors.white)),
        Text(text5,style: TextStyle(color: Colors.white)),
        Text(text6,style: TextStyle(color: Colors.white)),
      ],
    );
  }

  Widget day (
    String text1,
    String text2,
    String text3,
    String text4,
    String text5,
    String text6,) {
    
    return Column(
      spacing: 15,mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text1,style: TextStyle(color: Colors.white)),
        Text(text2,style: TextStyle(color: Colors.white)),
        Text(text3,style: TextStyle(color: Colors.white)),
        Text(text4,style: TextStyle(color: Colors.white)),
        Text(text5,style: TextStyle(color: Colors.white)),
        Text(text6,style: TextStyle(color: Colors.white)),
      ],
    );
  }

   Widget ticon (
    IconData icon1,
    IconData icon2,
    IconData icon3,
    IconData icon4,
    IconData icon5,
    IconData icon6,
    ) {
    
    return Column(spacing: 10,mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(icon1,color: Colors.white,),
         Icon(icon2,color: Colors.white,),
          Icon(icon3,color: Colors.white,),
           Icon(icon4,color: Colors.white,),
            Icon(icon5,color: Colors.white,),
             Icon(icon6,color: Colors.white,),
      ],
    );
  }
  
  Widget rate (
    String text1,
    String text2,
    String text3,
    String text4,
    String text5,
    String text6,) {
    
    return Column(spacing: 15,mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(text1,style: TextStyle(color: Colors.white)),
        Text(text2,style: TextStyle(color: Colors.white)),
        Text(text3,style: TextStyle(color: Colors.white)),
        Text(text4,style: TextStyle(color: Colors.white)),
        Text(text5,style: TextStyle(color: Colors.white)),
        Text(text6,style: TextStyle(color: Colors.white)),
      ],
    );
  }

Widget rate2 (
    String text1,
    String text2,
    String text3,
    String text4,
    String text5,
    String text6,) {
    
    return Column(spacing: 15,mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(text1,style: TextStyle(color: Colors.white)),
        Text(text2,style: TextStyle(color: Colors.white)),
        Text(text3,style: TextStyle(color: Colors.white)),
        Text(text4,style: TextStyle(color: Colors.white)),
        Text(text5,style: TextStyle(color: Colors.white)),
        Text(text6,style: TextStyle(color: Colors.white)),
      ],
    );
  }

  Widget weatherdata (
    IconData wicon, 
    String wtext, 
    String wtext2,
    IconData wicon2, 
    String wtext3, 
    String wtext4)
  {
    return  Column(
                      children: [
                        Column(
                          children: [
                            Icon(wicon, color: Colors.blue,size: 40,),
                            Text(wtext, style: TextStyle(color: Colors.white54),),
                            Text(wtext2, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),),
                            SizedBox(height: 20,),
                            Icon(wicon2, color: Colors.blue,size: 40,),
                            Text(wtext3, style: TextStyle(color: Colors.white54),),
                            Text(wtext4, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),)                     
                            ],
                        )
                      ]
    );
  }

}
 
