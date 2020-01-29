import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int result = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        elevation: 20.0,
        centerTitle: true,
        title: Text('Excelencia'),
        leading: Icon( Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Número de Taps:',
              style: TextStyle(fontSize: 35.0, ),       
            ),
            SizedBox(height: 5.0),
            Text(
              result.toString(),
              style: TextStyle(fontSize: 35.0, ),       
            ),
            SizedBox(height: 5.0),
            FlatButton(
              color: Colors.blueAccent,
              textColor: Colors.white,
              padding: EdgeInsets.all(10.0),
              onPressed: ()=>print('Yo puedo $result'),
              child: Text('Yo puedo $result', style: TextStyle(fontSize: 35.0)),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 30.0),
            child: FloatingActionButton(
              child: Icon( Icons.exposure_zero),
              onPressed: (){setState(() {
                result=0;
              });},
              
            ),
          ),
          Expanded( child:SizedBox() ),
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: (){setState(() {
              result--;
            });},
          ),
          SizedBox(width: 5.0,),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: (){setState(() {
              result++;
            });},
          ),
          SizedBox(width: 5.0,),
        ],
      ),
    );
  }
}
