import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'buttons.dart';
import 'result_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Train(),
    );
  }
}

class Train extends StatefulWidget {
  Train({Key key}) : super(key: key);
  @override
  _TrainState createState() => _TrainState();
}

class _TrainState extends State<Train> {

  String numOne = '';
  String opor = '';
  String numTwo = '';
  String resultation = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff7f7f7),
      body: Column(
        children: [
          ResultScreen(
            num1: '$numOne',
            num2: '$numTwo',
            opo: '$opor',
            result: '$resultation',

          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      type('7');
                    });
                  },
                  child: Buttons(number: '7')),
              InkWell(
                  onTap: () {
                    setState(() {
                      type('8');
                    });
                  },
                  child: Buttons(number: '8')),
              InkWell(
                  onTap: () {
                    setState(() {
                      type('9');
                    });
                  },
                  child: Buttons(number: '9')),
              InkWell(
                  onTap: () {
                    setState(() {
                      opor = '+';
                      adding();
                      stop();
                    });
                  },
                  child: Buttons(number: '+')),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      type('4');
                    });
                  },
                  child: Buttons(number: '4')),
              InkWell(
                  onTap: () {
                    setState(() {
                      type('5');
                    });
                  },
                  child: Buttons(number: '5')),
              InkWell(
                  onTap: () {
                    setState(() {
                      type('6');
                    });
                  },
                  child: Buttons(number: '6')),
              InkWell(
                  onTap: () {
                    setState(() {
                      opor = '-';
                      adding();
                      stop();
                    });
                  },
                  child: Buttons(number: '-')),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      type('1');
                    });
                  },
                  child: Buttons(number: '1')),
              InkWell(
                  onTap: () {
                    setState(() {
                      type('2');
                    });
                  },
                  child: Buttons(number: '2')),
              InkWell(
                  onTap: () {
                    setState(() {
                      type('3');
                    });
                  },
                  child: Buttons(number: '3')),
              InkWell(
                  onTap: () {
                    setState(() {
                      opor = '/';
                      adding();
                      stop();

                    });
                  },
                  child: Buttons(number: '/')),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    type('0');
                   // type3('0');
                  });
                },
                child: Container(
                  height: 75,
                  width: 178,
                  child: Center(
                    child: Text(
                      '0',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
              ),
              InkWell(
                  onTap: () {
                    setState(() {
                      type('.');
                    });
                  },
                  child: Buttons(number: '.')),
              InkWell(
                  onTap: () {
                    setState(() {
                      opor = 'x';
                      adding();
                      stop();
                    });
                  },
                  child: Buttons(number: 'x')),
            ],
          ),
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      equal();
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 12),
                    height: MediaQuery.of(context).size.height * 0.09,
                    width: MediaQuery.of(context).size.width * 0.67,
                    child: Center(
                        child: Text(
                      '=',
                      style:
                          TextStyle(fontSize: 60, fontWeight: FontWeight.w400),
                    )),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ),
                InkWell(
                    onTap: () {
                      setState(() {
                        numOne = '';
                        numTwo = '';
                        opor = '';
                        resultation = '';
                      });
                    },
                    child: Buttons(number: 'AC')),
              ],
            ),
          ),
        ], //                    end of the main Column
      ),
    );
  } void type(val) {
    if (opor == '') {
      numOne += val;
    } else if (opor != '') {
      numTwo += val;
    }
  }

  void adding() {
    if (resultation != '') {
      numOne = '$resultation';
      numTwo = '';
      resultation = '';
    }
  }

  stop() {
    if ('$numOne' == '') {
      opor = '';
    }
  }
//                         logic of the calculator
  equal() {
    if (opor == '+') {
      setState(() {
        resultation = (double.parse(numOne) + double.parse(numTwo)).toString();
      });
    } else if (opor == '-') {
      setState(() {
        resultation = (double.parse(numOne) - double.parse(numTwo)).toString();
      });
    } else if (opor == 'x') {
      setState(() {
        resultation = (double.parse(numOne) * double.parse(numTwo)).toString();
      });
    } else if (opor == '/') {
      setState(() {
        resultation = (double.parse(numOne) / double.parse(numTwo)).toString();
      });
    }
  }
}
