import 'package:flutter/material.dart';
import 'widgets/AppBar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'styles/my_icons.dart';
import 'widgets/Drawer.dart';
import 'package:flutter/services.dart';



class Cotizacion extends StatefulWidget {
  Cotizacion({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MaterialesState createState() => _MaterialesState();
}

class _MaterialesState extends State<Cotizacion>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final snackBar = SnackBar(
    content: Text(
      'Se añadio',
      style: TextStyle(color: Colors.white),
    ),
    backgroundColor: Color.fromRGBO(0, 182, 134, 1),
    elevation: 8.0,


  );

  void initState() {
    super.initState();
    _controller = new TabController(length: 4, vsync: this);
  }

  TabController _controller;
  @override
  Widget build(BuildContext context) {
    double widhtScreen = MediaQuery.of(context).size.width;
    double heigthScreen = MediaQuery.of(context).size.height;
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        drawer: DrawerSettings(context),
        appBar: AppbarCotizacion(_scaffoldKey, widhtScreen, context),
        body: Container(
            margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Cotizacion',
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
                //-----------------------------
                new Container(
                    width: widhtScreen,
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: new Expanded(
                      child: new TabBar(
                        controller: _controller,
                        tabs: [
                          new Tab(
                            icon: SvgPicture.asset(iconBosquejo,
                                color: Colors.black,
                                fit: BoxFit.cover,
                                height: 40),
                            text: 'Todo',
                          ),
                          new Tab(
                              icon: SvgPicture.asset(iconTuberia,
                                  color: Colors.black,
                                  fit: BoxFit.cover,
                                  height: 40),
                              text: 'Tuberia'),
                          new Tab(
                            icon: SvgPicture.asset(iconValve,
                                color: Colors.black,
                                fit: BoxFit.cover,
                                height: 40),
                            text: 'Valvulas',
                          ),
                          new Tab(
                            icon: SvgPicture.asset(
                              iconMalla,
                              color: Colors.black,
                              fit: BoxFit.cover,
                              height: 40,
                            ),
                            text: 'Mallas',
                          ),
                        ],
                        unselectedLabelColor: Colors.black,
                        labelColor: Color.fromRGBO(0, 182, 134, 1),
                        labelStyle: TextStyle(fontSize: 10),
                        indicatorColor: Colors.white,
                      ),
                    )),

                // height: heigthScreen/2,
                //width: widhtScreen,
                Container(
                    height: 120,
                    child: new TabBarView(
                      controller: _controller,
                      children: [
                        Card(
                            child: Row(
                          children: <Widget>[
                            Container(
                              height: 150,
                              width: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRTscdzlqOxFtZu3zknJPex_y5mujXYIE2jWw&usqp=CAU'),
                                    fit: BoxFit.cover,
                                    alignment: Alignment.topCenter,
                                  ),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            Expanded(
                                child: Column(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.fromLTRB(10, 15, 0, 0),
                                  child: Text(
                                    'Tuberia Acero soldable'
                                        .toString()
                                        .toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Text(
                                    'Aqui ira una pequeña descripcion'
                                        .toString(),
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.fromLTRB(15, 10, 0, 0),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        '\u0024' + '10000'.toString(),
                                        style: TextStyle(
                                          color: Color.fromRGBO(0, 182, 134, 1),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )),
                              ],
                            )),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                IconButton(
                                    icon: Icon(Icons.add),
                                    onPressed: () {
                                      // Scaffold.of(context).showSnackBar(snackBar);

                                      Future _askUser() async {
                                        switch (await showDialog(
                                            context: context,
                                            child: new SimpleDialog(
                                              children: <Widget>[
                                                new SimpleDialogOption(
                                                    child: Container(
                                                  child: Column(
                                                    children: <Widget>[
                                                      Center(
                                                        child: Text(
                                                          "¿Añadir?",
                                                          style: TextStyle(
                                                              fontSize: 20),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0, 40, 0, 0),
                                                        child: Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Text(
                                                            "Introduce la cantidad",
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                color: Color
                                                                    .fromRGBO(
                                                                        112,
                                                                        112,
                                                                        112,
                                                                        100)),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Center(
                                                          child: TextFormField(
                                                            //obscureText: true,
                                                            //controller: _passwordControler,
                                                            keyboardType: TextInputType.number,
                                                            inputFormatters: <TextInputFormatter>[
                                                              WhitelistingTextInputFormatter.digitsOnly
                                                            ],
                                                            decoration:
                                                                InputDecoration(
                                                                    hintText:
                                                                        "Cantidad",

                                                                    enabledBorder: UnderlineInputBorder(
                                                                        borderSide: BorderSide(
                                                                            color: Colors
                                                                                .grey)),
                                                                    focusedBorder:
                                                                        UnderlineInputBorder(
                                                                      borderSide: BorderSide(
                                                                          color: Color.fromRGBO(
                                                                              9,
                                                                              155,
                                                                              155,
                                                                              100)),
                                                                      //  when the TextFormField in focused
                                                                    ),
                                                                    contentPadding:
                                                                        EdgeInsets.fromLTRB(
                                                                            5,
                                                                            16,
                                                                            0,
                                                                            0)),
                                                          ),
                                                        ),
                                                      ),

                                                      Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0, 40, 0, 0),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: <Widget>[
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .fromLTRB(0,
                                                                      0, 5, 0),
                                                              child:
                                                                  RaisedButton(
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10),
                                                                    side: BorderSide(
                                                                        color: Color.fromRGBO(
                                                                            0,
                                                                            182,
                                                                            134,
                                                                            1))),
                                                                onPressed: () {
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                child: Padding(
                                                                  padding: EdgeInsets
                                                                      .fromLTRB(
                                                                          8,
                                                                          8,
                                                                          8,
                                                                          8),
                                                                  child: Text(
                                                                    "Cancelar",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            12,
                                                                        color: Color.fromRGBO(
                                                                            0,
                                                                            182,
                                                                            134,
                                                                            1)),
                                                                  ),
                                                                ),
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .fromLTRB(5,
                                                                      0, 0, 0),
                                                              child:
                                                                  RaisedButton(
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10)),
                                                                onPressed: () {
                                                                  //setCharge(_token.toString(),convert(_monto).toString(),_concepto.toString(),_secretKey.toString());
                                                                  Scaffold.of(context).showSnackBar(snackBar);
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                child: Padding(
                                                                  padding: EdgeInsets
                                                                      .fromLTRB(
                                                                          8,
                                                                          8,
                                                                          8,
                                                                          8),
                                                                  child: Text(
                                                                    "Continuar",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                                color: Color
                                                                    .fromRGBO(
                                                                        0,
                                                                        182,
                                                                        134,
                                                                        1),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                )),
                                              ],
                                              elevation: 10,
                                              shape: new RoundedRectangleBorder(
                                                  borderRadius:
                                                      new BorderRadius.circular(
                                                          10)),
                                            ))) {

                                        }
                                      }

                                      _askUser();
                                    })
                              ],
                            )
                          ],
                        )),
                        Icon(Icons.directions_transit),
                        Icon(Icons.directions_transit),
                        Icon(Icons.directions_transit),
                      ],
                    ))
              ],
            )));
  }
}


