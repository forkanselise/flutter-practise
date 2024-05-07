import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomDrawer extends StatefulWidget {
  @override
  _BottomDrawerState createState() => _BottomDrawerState();
}

class _BottomDrawerState extends State<BottomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.all(24) ,
      child: Container(
        // child: const Text('Employee.pdf',
        //   style: TextStyle(
        //     color: Colors.black,
        //     fontSize: 20,
        //   ),
        // ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Employee.pdf',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              padding:const EdgeInsets.all(14) ,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 200, 200, 200),
                    width: 1.0,
                  ),


                  borderRadius: BorderRadius.circular(5.0),
                ),

              child: Row(
                children: <Widget>[
                  Icon(Icons.remove_red_eye, color: const Color.fromARGB(255, 20, 94, 74)),
                  SizedBox(width: 8), // Add some space between the icon and text
                  Text('View Details', style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,letterSpacing: 0.8)),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              padding:const EdgeInsets.all(14) ,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 200, 200, 200),
                  width: 1.0,
                ),


                borderRadius: BorderRadius.circular(5.0),
              ),

              child: Row(
                children: <Widget>[
                  Icon(Icons.download, color: const Color.fromARGB(255, 20, 94, 74)),
                  SizedBox(width: 8), // Add some space between the icon and text
                  Text('Download File', style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,letterSpacing: 0.8)),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              padding:const EdgeInsets.all(14) ,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 200, 200, 200),
                  width: 1.0,
                ),


                borderRadius: BorderRadius.circular(5.0),
              ),

              child: Row(
                children: <Widget>[
                  Icon(Icons.edit, color: const Color.fromARGB(255, 20, 94, 74)),
                  SizedBox(width: 8), // Add some space between the icon and text
                  Text('Fill Form', style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,letterSpacing: 0.8)),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              padding:const EdgeInsets.all(14) ,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 200, 200, 200),
                  width: 1.0,
                ),


                borderRadius: BorderRadius.circular(5.0),
              ),

              child: Row(
                children: <Widget>[
                  Icon(Icons.remove, color: const Color.fromARGB(255, 20, 94, 74)),
                  SizedBox(width: 8), // Add some space between the icon and text
                  Text('Remove', style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,letterSpacing: 0.8)),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              padding:const EdgeInsets.all(14) ,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 200, 200, 200),
                  width: 1.0,
                ),


                borderRadius: BorderRadius.circular(5.0),
              ),

              child: Row(
                children: <Widget>[
                  Icon(Icons.dock_outlined, color: const Color.fromARGB(255, 20, 94, 74)),
                  SizedBox(width: 8), // Add some space between the icon and text
                  Text('Form Response', style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,letterSpacing: 0.8)),
                ],
              ),
            ),
          ],
        ),


      ),
    );
  }
}