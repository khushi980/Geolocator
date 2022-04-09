import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
void main()
{
  runApp(myApp());
}

class myApp extends StatelessWidget {
  void getLocat ()async{
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    print(position);
  }
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Geolocator',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(title:Text("GPS Locator"),),
            body:Center(
                child: Container(
                  child: ElevatedButton(onPressed: (){
                    getLocat();}, child: Text('Login')
                  ),
                )
            )
        )
    );
  }
}

