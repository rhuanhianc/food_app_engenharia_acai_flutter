import 'package:flutter/material.dart';

class CarinhoPage extends StatefulWidget
{
  final String pageTitle;

  CarinhoPage({Key key, this.pageTitle }) : super(key: key);

  @override
  _CarinhoPageState createState() => _CarinhoPageState();
}

class _CarinhoPageState extends State<CarinhoPage>
{
  @override
  Widget build(BuildContext context)
  {
    return Container(
      child: new Text('Cart'),
    );
  }
}