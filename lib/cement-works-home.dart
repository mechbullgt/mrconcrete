import 'package:flutter/material.dart';
import 'package:mrconcrete/screens/concrete/concretehome.dart';
import 'package:mrconcrete/screens/mortar/mortarhome.dart';

class CementWorksHome extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: 2,
        child: new Scaffold(
          appBar: AppBar(
            title: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Cement Works",
                    style: TextStyle(fontSize: 35),
                  ),
                ]),
            centerTitle: true,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[Color(0xff2c3e50), Color(0xff3498db)],
                ),
              ),
            ),
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Concrete Works",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "Know Your Concrete Mix",
                          style: TextStyle(fontSize: 15),
                        )
                      ]),
                ),
                Tab(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                      Text(
                        "Mortar Works",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "Know Your Mortar Mix",
                        style: TextStyle(fontSize: 15),
                      )
                    ]))
              ],
            ),
          ),
          body: TabBarView(
            children: [ConcreteHome(), MortarHome()],
          ),
        ));
  }
}
