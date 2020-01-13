import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AutomaticKeepAliveClientMixin {

  int _counter = 0;

  @override
  bool get wantKeepAlive => true;

  void increateCounter() {
    setState(() {
      _counter += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: increateCounter,
        tooltip: "点我",
        child: Icon(Icons.add),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('点击一次'),
            Text('$_counter',style:  Theme.of(context).textTheme.display1,),

          ],
        ),

      ),


    );
  }
}
