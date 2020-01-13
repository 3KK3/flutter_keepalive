import 'package:flutter/material.dart';
import 'home_page.dart';

class KeepAlivePage extends StatefulWidget {
  @override
  _KeepAlivePageState createState() => _KeepAlivePageState();
}

class _KeepAlivePageState extends State<KeepAlivePage> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          HomePage(),
          HomePage(),
          HomePage(),
        ],

      ),
      appBar: AppBar(
        title: Text("appbar title"),
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.dashboard),),
            Tab(icon: Icon(Icons.data_usage),),
            Tab(icon: Icon(Icons.dehaze),),
          ],
        ),
      ),
    );
  }
}
