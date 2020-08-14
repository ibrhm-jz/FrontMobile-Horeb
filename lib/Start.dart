import 'package:flutter/material.dart';
import 'widgets/AppBar.dart';

class Start extends StatefulWidget {
  Start({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double widhtScreen = MediaQuery.of(context).size.width;
    double heigthScreen = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        key: _scaffoldKey,
        appBar: AppbarHome(_scaffoldKey, widhtScreen, context),
        body: Container(
            color: Colors.white,
            margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Tablero',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      )),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Usuario: Ibraham Jimenez',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      )),
                ),
                Container(
                    margin: EdgeInsets.zero,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Card(
                            margin: EdgeInsets.zero,
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0)),
                            color: Color.fromRGBO(160, 160, 160, 1),
                            child: Container(
                                height: 100,
                                width: 150,
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  children: <Widget>[
                                    Text("Total ventas",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 18)),
                                    Text(
                                      "10",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 20),
                                    )
                                  ],
                                ))),
                        Card(
                            margin: EdgeInsets.zero,
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0)),
                            color: Color.fromRGBO(0, 182, 134, 1),
                            child: Container(
                                height: 100,
                                width: 150,
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  children: <Widget>[
                                    Text("Recaudado",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 18)),
                                    Text(
                                      "100,000",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 20),
                                    )
                                  ],
                                ))),
                      ],
                    )),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 30, 0, 5),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Ultimas cotizaciones',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      )),
                ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: TextField(
            decoration: new InputDecoration(
                hintText: "Buscar",

                focusedBorder: UnderlineInputBorder(borderSide:BorderSide(color:Colors.grey)),
                prefixIcon: IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    onPressed: () {})),
          ),
        ),

                Column(
                  children: <Widget>[
                Container(
                margin: EdgeInsets.fromLTRB(0, 30, 0, 10),
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0)),
        child: Row(
          children: <Widget>[
            Container(
             // margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Card(
                elevation: 1,
                shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(80)),
                child: Container(
                  width: 10,
                  height: 70,
                  color: Colors.grey,
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(10, 10, 0, 10),
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "CLIENTE:JAZMIN JIMENEZ".toString().toUpperCase(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold),
                        )),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                         "EMPRESA:SUMINISTROS HOREB",
                          style: TextStyle(
                              fontWeight:
                              FontWeight.normal),
                        )),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "400.000",
                          style: TextStyle(
                              fontWeight:
                              FontWeight.normal),
                        ))
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
            )
        )
    );
  }
}
