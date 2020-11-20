import 'package:advice_api/Data/slip_provider.dart';
import 'package:advice_api/Logic/advice_bloc.dart';
import 'dart:io';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String title;
  HomeScreen({this.title});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget build(BuildContext context) {
    RestClient rc = RestClient();
    dynamic dd = rc.fetchData();
    Future.delayed(const Duration(milliseconds: 10000), () {
      super.setState(() {});
    });
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: FutureBuilder(
            future: dd,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(snapshot.data),
                  ],
                ),
              );
            }));
  }
}
