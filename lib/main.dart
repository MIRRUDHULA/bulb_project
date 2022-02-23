import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}
var isbulb=false;
buildimage()
{
  if(isbulb)
    {
      return Image.asset("images/bulbon.png");
    }
  else
    return Image.asset("images/bulboff.png");
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('bulb_project'),
        ),
        body: Center(
          child: Container(
            color: Colors.black,
            width: double.infinity,
            child: Column(
              children: [
                buildimage(),
                //click change button to on or off
                TextButton(
                    onPressed: (){
                      setState(() {
                        isbulb=!isbulb;
                      });

                    }, child: Text("change"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

