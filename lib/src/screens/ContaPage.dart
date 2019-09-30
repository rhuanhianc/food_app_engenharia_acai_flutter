import 'package:flutter/material.dart';

class ContaPage extends StatefulWidget
{
  final String pageTitle;

  ContaPage({Key key, this.pageTitle }) : super(key: key);

  @override
  _ContaPageState createState() => _ContaPageState();
}

class _ContaPageState extends State<ContaPage>
{
  @override
  Widget build(BuildContext context)
  {
    return Container(
      child: new Text('Profile'),
    );
  }
}