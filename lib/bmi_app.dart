import 'package:flutter/material.dart';

void main() {
  runApp(const BMIAPP());
}

class BMIAPP extends StatelessWidget{
  const BMIAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),

      home: MyBmiPage(),
    );
  }
}

class MyBmiPage extends StatefulWidget{
  const MyBmiPage({super.key});

  @override
  State<MyBmiPage> createState() => _MyBmiPageState();
}

class _MyBmiPageState extends State<MyBmiPage> {

  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();

  var result = "";

  var bgColor = Colors.indigo.shade200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('BMI APP'),
      ),
      body: Container(color: bgColor,
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('BMI', style: TextStyle(fontSize: 34,fontWeight: FontWeight.w600
                ),
                ),

                SizedBox(height: 21,),

                TextField(
                  controller: wtController,
                  decoration: InputDecoration(
                    label: Text('Enter Your Weight(in kgs)'),
                    prefixIcon: Icon(Icons.line_weight)
                  ),
                  keyboardType: TextInputType.number,
                ),

                SizedBox(height: 11,),

                TextField(
                  controller: ftController,
                  decoration: InputDecoration(
                      label: Text('Enter Your Height(in Feet)'),
                      prefixIcon: Icon(Icons.height)
                  ),
                  keyboardType: TextInputType.number,
                ),

                SizedBox(height: 11,),


                TextField(
                  controller: inController,
                  decoration: InputDecoration(
                      label: Text('Enter Your Height(in inch)'),
                      prefixIcon: Icon(Icons.height)
                  ),
                  keyboardType: TextInputType.number,
                ),

                SizedBox(height: 16,),

                ElevatedButton(onPressed: () {
                  var wt = wtController.text.toString();
                  var ft = ftController.text.toString();
                  var inch = inController.text.toString();

                  if (wt != "" && ft != "" && inch != "") {


                    var iwt = int.parse(wt);
                    var ift = int.parse(ft);
                    var iInch = int.parse(inch);



                    var tInch = (ift * 12) + iInch;

                    var tCm = tInch*2.54;

                    var tM = tCm/100;

                    var bmi = iwt/(tM*tM);

                    var msg = "";


                    if(bmi>25){
                      msg = 'You are OverWeight';
                      bgColor = Colors.orange.shade200;

                    }else if (bmi<18){
                      msg = 'You are UnderWeight';
                      bgColor = Colors.red.shade200;

                    }else {
                      msg = 'You are Healthy';
                      bgColor = Colors.green.shade200;
                    }
                    setState(() {
                      result = '$msg \n Your BMI is: ${bmi.toStringAsFixed(2)}';

                    });


                  } else {
                    setState(() {
                      result = "Please fill all the required blanks";
                    });
                  }
                },
                    child: Text('Calculate')),

                SizedBox(height: 11,),

                Text(result,style: TextStyle(fontSize: 19),),
              ],
            ),
          ),
        ),
      )
    );
  }
}