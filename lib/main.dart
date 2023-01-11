import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Team Group")),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Card(
            //ค่าที่ต้องการเพิ่ม
            context: context,
            color: Colors.blue,
            blocktext: "อาริสา ปัทมา",
            imgPath:
                "lib/asset/images/309709715_1995352400668023_6089646356288759188_n (1).jpg",
            nickname: "ก้อย",
            ID: "ID: 633410041-1",
            fack: "Fackbook: Arisa Patthama",
          ),
          Card(
            //ค่าที่ต้องการเพิ่ม
            context: context,
            color: Colors.blue,
            blocktext: "คเชนทร์ จันทเกษ",
            imgPath:
                "lib/asset/images/318557955_481888987376494_5262025353269801702_n.jpg",
            nickname: "เม่น",
            ID: "ID: 633410006-3",
            fack: "Fackbook: Kachen Jantaket",
          ),
          Card(
            context: context,
            color: Colors.blue,
            blocktext: "รพีพัฒน์ กลางบุญเรือง",
            imgPath:
                "lib/asset/images/289401256_157797553443947_2621292567872361384_n.jpg",
            nickname: "บูช",
            ID: "ID: 633410027-5",
            fack: "Fackbook : Boot Rapeepat",
          ),
          Card(
            context: context,
            color: Colors.blue,
            blocktext: "วรกัญญา สุเนตร",
            imgPath:
                "lib/asset/images/253622355_1753162534883454_4441215792035617119_n.jpg",
            nickname: "เปียโน",
            ID: "ID: 633410028-3",
            fack: "Fackbook : Piano Worakanya Sunet",
          ),
          Card(
            context: context,
            color: Colors.blue,
            blocktext: "สุปัญญา อุ่นอุดม",
            imgPath:
                "lib/asset/images/240384855_3027349577545022_643268768170506179_n.jpg",
            nickname: "บิว",
            ID: "ID: 633410033-0",
            fack: "Fackbook : Bew Nakrap",
          ),
        ],
      ),
    );
  }

  Widget Card(
      //กำหนดค่าที่ใช้รับในการส่ง
      {
    required BuildContext context,
    required Color color,
    required String blocktext,
    required String imgPath,
    required String nickname,
    required String ID,
    required String fack,
  }) {
    return Container(
      width: 250,
      color: Colors.black12,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailScreen(
                        //กำหนดค่าที่ใช้ส่ง
                        name: blocktext,
                        imPath: imgPath,
                        Nickname: nickname,
                        id: ID,
                        Fackbook: fack,
                      )));
        },
        child: Column(
          children: [
            CircleAvatar(radius: 60, backgroundImage: NetworkImage(imgPath)),
            Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                //margin: EdgeInsets.all(10),
                color: color,
                child: Text(blocktext)),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  DetailScreen({
    required this.name,
    required this.Nickname,
    required this.imPath,
    required this.id,
    required this.Fackbook,
  });
  String name;
  String Nickname;
  String imPath;
  String id;
  String Fackbook;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My First Flutter App"),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(10.0)),
              CircleAvatar(radius: 120, backgroundImage: NetworkImage(imPath)),
              Padding(padding: EdgeInsets.all(10.0)),
              Text(name),
              Text(id),
              Text(Nickname),
              Text(Fackbook),
            ],
          ),
        ));
  }
}
