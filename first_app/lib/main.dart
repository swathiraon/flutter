import'package:flutter/material.dart';

void  main(){runApp(
    new MaterialApp(
      home:new LandingPage(),
    )

);}
class LandingPage extends StatelessWidget
{

  @override
  Widget build(BuildContext context)
  {
    return new Material(
        color:Colors.greenAccent,


        child:new InkWell(

          onTap: ()=> print("WE Tapped"),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              Center(child:new  Text('Welcome to flutter',style:new TextStyle(color:Colors.black,fontSize: 40.00,fontWeight: FontWeight.bold))),

            ],
          ),
        )

    );

  }
}
