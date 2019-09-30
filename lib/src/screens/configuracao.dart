import 'package:flutter/material.dart';

enum DialogDemoAction {
  cancel,
  discard,
  disagree,
  agree,
}

class ConfiguracaoPage extends StatefulWidget
{
  final String pageTitle;

  ConfiguracaoPage({Key key, this.pageTitle }) : super(key: key);

  @override
  _ConfiguracaoPageState createState() => _ConfiguracaoPageState();
}

class _ConfiguracaoPageState extends State<ConfiguracaoPage>
{
  bool switchValue = false;
  _verticalD() => Container(
    margin: EdgeInsets.only(left: 10.0, right: 0.0, top: 0.0, bottom: 0.0),
  );
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Container(
          child: Column(
            children: <Widget>[
              new Container(
                padding: EdgeInsets.all(10.0),
                child: new Text('Notification',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold
                  ),),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0),
                child: Card(
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 10.0, top: 5.0, bottom: 5.0, right: 5.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(Icons.notifications, color: Colors.black54),
                              Container(
                                margin: EdgeInsets.only(left: 5.0),
                              ),
                              Text(
                                'Notification',
                                style: TextStyle(
                                  fontSize: 17.0,
                                  color: Colors.black87,
                                ),
                              ),
                            ],
                          ),
                          Switch(
                              value: switchValue,
                              onChanged: (bool value) {
                                setState(() {
                                  switchValue = value;
                                });
                              }),
                        ],
                      ),
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 15.0),
              ),
              new Container(
                height: 50.0,
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 7.0),
                child: new Row(
                  children: <Widget>[
                    _verticalD(),
                    new GestureDetector(
                      onTap: () {
                        /*Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => signup_screen()));*/
                      },
                      child: new Text(
                        'Legal',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              new Container(
                margin: EdgeInsets.only(left: 10.0),
                child: Card(
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 10.0, top: 15.0, bottom: 15.0),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.assignment, color: Colors.black54),
                              Container(
                                margin: EdgeInsets.only(left: 5.0),
                              ),
                              Text('Terms Of Use',
                                style: TextStyle(
                                    fontSize: 17.0,
                                    color: Colors.black87
                                ),)
                            ],
                          ),
                        ),
                        Divider(
                          height: 5.0,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10.0, top: 15.0, bottom: 15.0),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.lock, color: Colors.black54),
                              Container(
                                margin: EdgeInsets.only(left: 5.0),
                              ),
                              Text('Privacy Policy',
                                style: TextStyle(
                                    fontSize: 17.0,
                                    color: Colors.black87
                                ),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
      ),

    );
  }
}