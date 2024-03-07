import 'package:flutter/material.dart';

class GetStartPage extends StatefulWidget {
  final Widget?child;
  const GetStartPage({super.key, this.child});

  @override
  State<GetStartPage> createState() => _GetStartPageState();
}

class _GetStartPageState extends State<GetStartPage> {

  @override
  void initState(){
    Future.delayed(
      const Duration(seconds: 3),(){
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>widget.child!), (route) => false);
      }
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        color: Colors.yellow,
        child: const Center(
          child:Text(
          'Welcome to Pet app',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25
          ),
          
        ),),
      )
    );
  }
}