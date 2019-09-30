import 'package:flutter/material.dart';

class FavouritePage extends StatefulWidget
{
  final String pageTitle;

  FavouritePage({Key key, this.pageTitle }) : super(key: key);

  @override
  _FavouritePageState createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage>
{
  @override
  Widget build(BuildContext context)
  {
    return Container(
      child: new Text('Favourite'),
    );
  }
}