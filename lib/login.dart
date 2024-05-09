import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:riqs_ui/main.dart';

class LoginUi extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const FormField(placeholder: 'Email', Name: 'Test' ),
            const SizedBox(height: 10,),
            const FormField(placeholder: 'Password', Name: 'Test2' ),

            const SizedBox(height: 20,),

            GestureDetector(
              onTap: () {
                Navigator.push(context , MaterialPageRoute(builder: (context) => MyHomePage()));
              },
              child: Container(
                height: 50,
                width: 200,
                child: Center(
                  child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
                ),
                decoration: const BoxDecoration(
                  color: Color(0xFF155D4A),
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}


class FormField extends StatelessWidget{

  final String placeholder;
  // ignore: non_constant_identifier_names
  final String Name;
  // ignore: non_constant_identifier_names
  const FormField({super.key, required this.placeholder, required this.Name});

  @override
  Widget build(context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: placeholder,
        labelText: placeholder,
        fillColor: const Color.fromARGB(255, 248, 247, 247),
        filled: true,
        prefixIcon: const Icon(
          Icons.mail_outline_rounded
        ),

        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFF155D4A)),
          borderRadius: BorderRadius.circular(10)
        ),
        enabledBorder: OutlineInputBorder(
          // borderSide: const BorderSide(color: Colors.black),s
          borderRadius: BorderRadius.circular(10)
        )
      ),
    );
  }
}