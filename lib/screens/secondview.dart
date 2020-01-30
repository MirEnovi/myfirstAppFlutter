import 'package:flutter/material.dart' show AppBar, BuildContext, Center, Icon, Icons, Key, MaterialPageRoute, Navigator, RaisedButton, Scaffold, State, StatefulWidget, Text, Widget;
import 'package:flutter_app2/home.dart';

class SecondView extends StatefulWidget {
    SecondView({Key key}) : super(key: key);

    _SecondViewState createState() => _SecondViewState();
}

class _SecondViewState extends State<SecondView> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                elevation: 20.0,
                centerTitle: true,
                title: Text('Excelencia X2'),
                leading: Icon(Icons.arrow_back),
            ),
            body: Center(
                child: RaisedButton(
                    child: Text('Volver'),
                    onPressed: ()=> Navigator.push(
                        context,
                        MaterialPageRoute( 
                            builder: (context) => Home()
                        )
                    ),
                ),
            ),
        );
    }
}
