import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DetailsTab extends StatefulWidget {
  @override
  _DetailsTab createState() => _DetailsTab(); 
}

class _DetailsTab extends State<DetailsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      // width: 100,
      // color: Colors.amber,
      child: Column(
      
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:24.0, right: 24, top: 24),
                    child: Text("Sub Title", style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:24.0, right: 24, top: 24),
                    child: Row(
                      children: [
                        Text("Due Date 1 may 2024", style: TextStyle(),),
                        SizedBox(width: 15,),
                        Container(
                        height: 20,
                        width: 1,
                        color: Color.fromARGB(255, 139, 138, 138),
                        ),
                        SizedBox(width: 15,),
                        Text("Create Date 1 may 2024", style: TextStyle(),),
                                
                                
                        
                                
                                
                      ],
                    ),
                  ),
                  
                ],
              ),
              // SizedBox(width: 150,),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: CircularPercentIndicator(
                        radius: 30.0,
                        lineWidth: 5.0,
                        percent: 0.1,
                        center: new Text("10%"),
                        progressColor: Colors.green,
                      ),
              )
            ],
          ),
      
          // VerticalDivider(),
          SizedBox(height: 15,),
          Container(
            height: 1,
            width: MediaQuery.of(context).size.width,
            color: Color.fromARGB(255, 139, 138, 138),
          ),
      
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Container(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.,
                children: [
                  Column(
                    children: [
                      Text('Case Id 1', style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 15,),
                      Text('Case Id 1', style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 15,),
                      Text('Case Id 1', style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 15,),
                      Text('Case Id 1', style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 15,),
                      Text('Case Id 1', style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 15,),
                      Text('Case Id 1', style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
              
                  ),
              
                  Column(
                    children: [
                      Text('Case Id 1', style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 15,),
                      Text('Case Id 1', style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 15,),
                      Text('Case Id 1', style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 15,),
                      Text('Case Id 1', style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 15,),
                      Text('Case Id 1', style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 15,),
                      Text('Case Id 1', style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
              
                  )
              
                ],
              ),
            ),
          )
      
      
      
        ],
      ),

      
      
    );
  }
}

class TasksTab extends StatefulWidget {
  @override
  _TasksTab createState() => _TasksTab(); 
}

class _TasksTab extends State<TasksTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Color.fromARGB(255, 209, 209, 209),
    );
  }
}


class MyDetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: DefaultTabController(
        length: 2,
        child:
            Scaffold(
              body: Column(
                children: [
                  TabBar(
                  
                    onTap: (index) {
                      DetailsTab();
                      // DetailsTab();
                      print(index);
                    },
                    
                    tabs: [
                      Tab( child: Text("Details", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),),
                      
                      Tab( child: Text("Tasks", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),),
                    ],
                    
                    labelColor: Color(0xFF155D4A),
                    // unselectedLabelColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorColor: Color(0xFF155D4A),
                    indicatorWeight: 3,
                  ),
                  Expanded(child: TabBarView(
                    children: [
                      DetailsTab(),
                      TasksTab()
                    ],
                  )),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width - 16,
                      child: Center(child: Text("Add Details", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFF155D4A),
                      ),
                    ),
                  )
                ],
              ),

              
              // floatingActionButton: FloatingActionButton(
              //   onPressed: () {
              //     // Action to be performed on FAB tap
              //   },
              //   child: Text("Add Details"),
              //   // focusNode: fabFocusNode,
              //   autofocus: true, // The FAB will receive the initial input focus
              // ),

              // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
            ),



            

        ),
      
    );
  }
}