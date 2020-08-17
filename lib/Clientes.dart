import 'package:flutter/material.dart';
import 'widgets/AppBar.dart';
import 'widgets/Drawer.dart';

class Clientes extends StatefulWidget {
  Clientes({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ClientesState createState() => _ClientesState();
}

class _ClientesState extends State<Clientes> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double widhtScreen = MediaQuery.of(context).size.width;
    double heigthScreen = MediaQuery.of(context).size.height;
    return Scaffold(
        key: _scaffoldKey,
        drawer: DrawerSettings(context),
        backgroundColor: Colors.white,
        appBar: AppbarHome(_scaffoldKey, widhtScreen, context),
        body: Container(
            margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
            // color: Colors.white,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Clientes',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      )),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextField(
                    decoration: new InputDecoration(
                        hintText: "Buscar",
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        prefixIcon: IconButton(
                            icon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            onPressed: () {})),
                  ),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 150,
                      height: 40,
                      margin: EdgeInsets.fromLTRB(0, 10, 0,10),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0)),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("Registrar",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white)),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            )
                          ],
                        ),
                        color: Color.fromRGBO(0, 182, 134, 1),
                      ),
                    )),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0)),
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Card(
                                elevation: 1,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(80)),
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('images/person.jpg'),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.fromLTRB(10, 10, 0, 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Ibraham Jimenez "
                                              .toString()
                                              .toUpperCase(),
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Color.fromRGBO(
                                                  0, 182, 134, 1),
                                            ),
                                            padding: EdgeInsets.all(3),
                                            child: Text(
                                              "Cercados".toString(),
                                              style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.white),
                                            )))
                                  ],
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                IconButton(
                                    icon: Icon(Icons.more_vert),
                                    onPressed: () {})
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            )));
  }
}
