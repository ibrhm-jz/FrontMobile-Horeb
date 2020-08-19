import 'package:flutter/material.dart';
import 'widgets/AppBar.dart';
import 'widgets/Drawer.dart';

class Empleados extends StatefulWidget {
  Empleados({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _EmpleadosState createState() => _EmpleadosState();
}

class _EmpleadosState extends State<Empleados> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double widhtScreen = MediaQuery.of(context).size.width;
    double heigthScreen = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            iconTheme: IconThemeData(
              color: Colors.grey, //change your color here
            ),
            backgroundColor: Colors.white,
            title:
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 50, 0),
                      color:Colors.white,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          now.day.toString() +
                              " de " +
                              getMonth() +
                              " del " +
                              now.year.toString()+'.',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ),
                    )),

              ],
            ),
        ),
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
                        'Empleados',
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
                    ),
                  ],
                ),
                
              ],
            )),
      bottomNavigationBar: Container(
        width: 150,
        height: 50,
        child: RaisedButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          onPressed: () {},
          child: Text("Agregar",
              style: TextStyle(fontSize: 14, color: Colors.white)),
          color: Color.fromRGBO(0, 182, 134, 1),
        ),
      ),
    );
  }
}
