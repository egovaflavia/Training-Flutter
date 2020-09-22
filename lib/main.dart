import 'package:flutter/material.dart';
import './home.dart';
import './popular.dart';
import './news.dart';

void main() {
  runApp(DWTabs());
}

class DWTabs extends StatefulWidget {
  @override
  DwTabState createState() => DwTabState();
}

class DwTabState extends State<DWTabs> with SingleTickerProviderStateMixin {
  // Kode baru
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('DW Tabs'), backgroundColor: Colors.red[800],
        // Code Baru
        bottom: TabBar(controller: controller, tabs: <Tab>[
          Tab(
            icon: Icon(Icons.home),
          ),
          Tab(
            icon: Icon(Icons.note),
          ),
          Tab(
            icon: Icon(Icons.poll),
          ),
        ]),
        // End Code
      ),
      // Code baru
      body: TabBarView(controller: controller, children: <Widget>[
        Home(),
        Popular(),
        News(),
      ]),
      // Encode
    ));
  }
}

// class HomePage extends StatelessWidget {
//   build(context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             backgroundColor: Colors.red[800],
//             leading: Icon(Icons.home),
//             title: Text('Hello Flutter'),
//           ),

//           // For Body
//           body: Container(
//             margin: EdgeInsets.all(10.0),
//             child: Column(
//               children: <Widget>[
//                 Row(children: [
//                   Icon(Icons.archive),
//                   Text('Artikel Terbaru',
//                       style: new TextStyle(fontWeight: FontWeight.bold))
//                 ]),
//                 Card(
//                     child: Column(children: <Widget>[
//                   Image.network(
//                       'https://flutter.io/images/homepage/header-illustration.png'),
//                   Text('Belajar Flutter')
//                 ]))
//               ],
//             ),
//           )
//           // Akhir Body
//           ),
//     );
//   }
// }
