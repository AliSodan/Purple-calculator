import'package:flutter/material.dart';

class ResultScreen extends StatelessWidget{
  String num1='';
  String opo='';
  String num2='';
  String result='';
 dynamic icon=Icons.info;
  ResultScreen({this.num1,this.num2,this.opo,this.result});
  @override
  Widget build(BuildContext context){
    return  Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.49,
            width: MediaQuery.of(context).size.width * 1,
            child: Container(
              color: Color(0xfff7f7f7),
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.46,
              width: MediaQuery.of(context).size.width * 0.88,
              decoration: BoxDecoration(
                color: Color(0xff7D34B9),
                borderRadius:
                BorderRadius.only(bottomLeft: Radius.circular(120)),
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.43,
              width: MediaQuery.of(context).size.width * 0.95,
              decoration: BoxDecoration(
                color:Color(0xff7D34B9),
                boxShadow: [
                  new BoxShadow(
                      color: Colors.black,
                      offset: new Offset(5.0, 5.0),
                      blurRadius: 40.0,
                      spreadRadius: 10.0
                  )
                ],
                borderRadius:
                BorderRadius.only(bottomLeft: Radius.circular(120)),
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.38,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                gradient: new LinearGradient(
                  colors: [
                    Color(0xff8C3BD7),
                    Color(0xff7D34B9),
                    Color(0xff632591),
                    Color(0xff360f48),
                  ],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
                boxShadow: [
                  new BoxShadow(
                      color: Colors.black,
                      offset: new Offset(5.0, 5.0),
                      blurRadius: 40.0,
                      spreadRadius: 10.0
                  )
                ],
                borderRadius:
                BorderRadius.only(bottomLeft: Radius.circular(120)),
              ),
              child: Column(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(padding:EdgeInsets.only(right: 40,bottom: 40) ,
                    child: Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('$num1',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w300,color: Colors.white),),
                        Text('$opo',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w300,color: Colors.white),),
                        Text('$num2',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w300,color: Colors.white),),

                      ],
                    ),
                  ),
                  Container(padding:EdgeInsets.only(right: 40,bottom: 10) ,
                    child: Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('$result',style: TextStyle(fontSize: 70,fontWeight: FontWeight.w600,color: Colors.white),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
  }
}

