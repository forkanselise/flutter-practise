import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_riqsmobile/process_guide_list.dart';
// import 'package:flutter_riqsmobile/side_drawer.dart';
import 'bottom_drawer.dart';

// 

class Library extends StatelessWidget{
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(

          child: DefaultTabController(
            length: 2,
            child: Scaffold(
              
              body: Column(
                // title: Text("Library"),
                // centerTitle: false,
                // backgroundColor: Color.fromARGB(255, 20, 94, 74),
                // leading: IconButton(
                //   icon: Icon(Icons.menu),
                //   onPressed: () {
                //     // Add your onPressed logic here

                //     // Scaffold.of(context).openDrawer();

                //   },
                // ),

                children: [
                TabBar(
                  // backgroundColor: Colors.red,
                  indicator: BoxDecoration(
                      // color: Colors.grey,
                      border: Border(
                        bottom: BorderSide(
                          color: Color(0xFF155D4A),
                          width: 2.0
                        )
                      )
                      
                     ),
                  
                  labelStyle:TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color:  Colors.black
                  ),
                  unselectedLabelStyle:
                  TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color:  Colors.black
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorWeight: 3,
                  indicatorColor: Color.fromARGB(255, 20, 94, 74),
                  tabs: [
                    Tab(text: 'ALL',),
                    Tab(text: 'FORMS',)
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      FirstScreen(),
                      FirstScreen()
                    ],
                  ),
                ),]
              ),

              // drawer: SideNav(title: 'title'),

              



            ),
          ),
        

    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.0,left: 6,right: 6),
      child: Container(
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.filter), // Icon after the input text
              ),
              // decoration: InputDecoration(
              //   hintText: 'Search...',
              //   border: OutlineInputBorder(),
              // ),
            ),
            SizedBox(height: 8.0), // Add some spacing
            Expanded(
              child: Container(
                height: 300.0,
                child: ListView.builder(
                  itemCount: 50,
                  itemBuilder: (context, index) {
                    return Column(
                      children: <Widget>[
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage("https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                          ),
                          title: Text('Day planning.pdf'),
                          subtitle: Text('Power user'),
                          // trailing: Wrap(
                          //   spacing: 12, // space between two icons
                          //   children: <Widget>[
                          //     Icon(Icons.more_vert), // icon-2
                          //   ],
                          // ),
                          trailing: Padding(
                            padding: EdgeInsets.only(left: 12),
                            child: IconButton(
                              icon: Icon(Icons.more_vert),
                              onPressed: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return SizedBox(
                                        height: 700,
                                        width: MediaQuery.of(context).size.width,
                                        // child: ElevatedButton(
                                        //   child: const Text('Close'),
                                        //   onPressed: (){
                                        //     Navigator.pop(context);
                                        //   },
                                        // ),
                                        child: BottomDrawer()
                                      );
                                    },);
                              },
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                          thickness: 1.0,
                          indent: 10.0,
                          endIndent: 10.0,
                        ),

                      ],

                    );
                  },
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text('It is a second layout tab, which is responsible for taking pictures from your mobile.',
          style: TextStyle(fontSize: 35.0),
        ),
    );
  }
}

