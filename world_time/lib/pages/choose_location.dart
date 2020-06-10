import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  var counter = 0;

  void getData() async {

    //simulate network request for a username
    await Future.delayed(Duration(seconds: 3), () {
      print('yoshi');
    });

    print('jgcgc');
  }

  @override
  void initState() {
    super.initState();
    getData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Loacation'),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
