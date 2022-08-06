import 'package:flutter/material.dart';
import 'home_screen.dart';


class RegScreen extends StatefulWidget {
  const RegScreen({Key? key}) : super(key: key);

  @override
  State<RegScreen> createState() => _RegScreenState();
}

class _RegScreenState extends State<RegScreen> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextFormField(
              validator: (input){
                if(input == null || input.isEmpty){
                  return('please enter your username');
                }
                return null;
              } ,
              decoration: InputDecoration(
                hintText: 'username',
                hintStyle: TextStyle(color: Colors.black),
                filled: true,
                fillColor: Colors.blueAccent,
              ),
            ),
            TextFormField(
              validator: (input){
                if(input == null || input.isEmpty){
                  return('please enter your password');
                }
                return null;
              } ,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'password',
                hintStyle: TextStyle(color: Colors.black),
                filled: true,
                fillColor: Colors.blueAccent,
              ),
            ),
            ElevatedButton(
                onPressed: (){
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                  }
                },
                child: const Text('submit')
            )
          ],
        ),
      ),
    );
  }
}
