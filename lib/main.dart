import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:riqs_ui/library.dart';
import 'package:riqs_ui/process-guide-details.dart';
import 'package:riqs_ui/process-guide-list.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // static const appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: appTitle,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  

  const MyHomePage({Key? key}) : super(key: key);

  // final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  late String appTitle;

  @override
  void initState() {
    super.initState();
    appTitle = 'Library';
  }

  bool flag = false;

  void toggleFlag() {
    setState(() {
      flag = !flag;
    });
  }

  // Widget.build(BuildContext context) {
  //   return MyHomePage(toggleFlag: toggleFlag);
  // }

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[
    Library(),
    // Library(),

    MyListView(),

    // DetailsTab(),
    MyDetailsView()
    
    
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        appTitle = 'Library';
      } else if (index == 1) {
        appTitle = 'Process Guide';
      }
      else {
        appTitle = 'Process Guide Details';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appTitle, style: TextStyle(color: Colors.white,),),
        backgroundColor: Color(0xFF155D4A),
        actions: [
          PopupMenuButton(
            onSelected: (item) {
              setState(() {
                print(item);
              });
            },
            itemBuilder: (itemBuilder)=>[
            PopupMenuItem(child: Text("Item 1"),value: 1,),
            PopupMenuItem(child: Text("Item 2"), value: 2,),
            PopupMenuItem(child: Text("Item 3"), value: 3,)
          ])
        ],
      ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF155D4A),
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Library'),
              selected: _selectedIndex == 0,
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Process Guide'),
              selected: _selectedIndex == 1,
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context);
              },
            ),

            ListTile(
              title: const Text('Process Guide Details'),
              selected: _selectedIndex == 2,
              onTap: () {
                _onItemTapped(2);
                Navigator.pop(context);
              },
            ),
            
          ],
        ),
      ),
    );
  }
}




