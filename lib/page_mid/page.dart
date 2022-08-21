
import'package:midterm_630710779/game.dart';
import 'package:flutter/material.dart';

class Temperature extends StatefulWidget {
  @override
  State<Temperature> createState() => _TemperatureState();
}

class _TemperatureState extends State<Temperature> {
  final Mycontroller = TextEditingController();
  var textOutput = '';
  var outputButton = false;


  void FahrenheitToCelsius(){
    var input = double.tryParse((Mycontroller.text));
    double temp1;
    print(input);
    if(input == null){
      //error
      setState(() {
        textOutput = 'Input error, please try again';
      });
      print('Input error');
    } else{
      temp1 = (input - 32) * 5/9;
        setState(() {
          textOutput = '$input Fahrenheit = $temp1 Celsius ';
          outputButton = true;
        });
    }
  }
  void CelsiusToFahrenheit(){
    var input = double.tryParse((Mycontroller.text));
    double temp1;
    print(input);
    if(input == null){
      //error
      setState(() {
        textOutput = 'Input error, please try again';
      });
      print('Input error');
    } else{
      temp1 = (input - 32) * 5/9;
      setState(() {
        textOutput = '$input Celsius = $temp1 Fahrenheit ';
        outputButton = true;
      });
    }
  }
  void CelsiusTokelvin(){
    var input = double.tryParse((Mycontroller.text));
    double temp1;
    print(input);
    if(input == null){
      //error
      setState(() {
        textOutput = 'Input error, please try again';
      });
      print('Input error');
    } else{
      temp1 = input - 273.15;
      setState(() {
        textOutput = '$input Celsius = $temp1 kelvin ';
        outputButton = true;
      });
    }
  }
  void kelvinToCelsius(){
    var input = double.tryParse((Mycontroller.text));
    double temp1;
    print(input);
    if(input == null){
      //error
      setState(() {
        textOutput = 'Input error, please try again';
      });
      print('Input error');
    } else{
      temp1 = input - 273.15;
      setState(() {
        textOutput = '$input kelvin = $temp1 Celsius ';
        outputButton = true;
      });
    }
  }

  void FahrenheitToKelvin(){
    var input = double.tryParse((Mycontroller.text));
    double temp1;
    print(input);
    if(input == null){
      //error
      setState(() {
        textOutput = 'Input error, please try again';
      });
      print('Input error');
    } else{
      temp1 = (input - 273.15) * 9/5 + 32;
      setState(() {
        textOutput = '$input Fahrenheit = $temp1 Kelvin ';
        outputButton = true;
      });
    }
  }

  void KelvinToFahrenheit(){
    var input = double.tryParse((Mycontroller.text));
    double temp1;
    print(input);
    if(input == null){
      //error
      setState(() {
        textOutput = 'Input error, please try again';
      });
      print('Input error');
    } else{
      temp1 = (input - 273.15) * 9/5 + 32;
      setState(() {
        textOutput = '$input Kelvin = $temp1 Fahrenheit ';
        outputButton = true;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Midterm Exam')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        /*decoration: BoxDecoration(
        border: Border.all(color: Colors.green)
      ),*/
        children: [
          Container(
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
              color: Colors.white38,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],

            ),
              child:
              const Text('Temperature Converter',
                style: TextStyle(fontSize: 30),),
          ),

          TextField(
            controller: Mycontroller,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              hintText: 'Enter a number',
            ),
          ),
          SizedBox(height: 10.0),

          ElevatedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
            onPressed: FahrenheitToCelsius,
            child: const Text('Fahrenheit To Celsius'),
          ),
          //Icon(showButton ? Icons.print : Icons.access_time_rounded),
          SizedBox(width: 30.0, height: 10.0),

          ElevatedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
            onPressed: CelsiusToFahrenheit,
            child: const Text('Celsius To Fahrenheit'),
          ),
          SizedBox(width: 30.0, height: 10.0),

          ElevatedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
            onPressed: CelsiusTokelvin,
            child: const Text('Celsius To kelvin'),
          ),
          SizedBox(width: 30.0, height: 10.0),

          ElevatedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
            onPressed: kelvinToCelsius,
            child: const Text('kelvin To Celsius'),
          ),
          SizedBox(width: 30.0, height: 10.0),

          ElevatedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
            onPressed: FahrenheitToKelvin,
            child: const Text('Fahrenheit To Kelvin'),
          ),
          SizedBox(width: 30.0, height: 10.0),

          ElevatedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
            onPressed: KelvinToFahrenheit,
            child: const Text('Kelvin To Fahrenheit'),
          ),
          SizedBox(height: 10.0),

          Text(textOutput),
        ],
      ),
    );
  }
}
