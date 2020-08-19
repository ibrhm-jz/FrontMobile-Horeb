import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

var now = new DateTime.now();
Widget AppbarHome(_scaffoldKey, widhtScreen, context) {
  return new AppBar(
    backgroundColor: Colors.white,
    title: Container(
      child: Row(
        children: <Widget>[
          Expanded(
              child: Container(
            margin: EdgeInsets.fromLTRB(0, 0, 30, 0),
            color: Colors.white,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                now.day.toString() +
                    " de " +
                    getMonth() +
                    " del " +
                    now.year.toString() +
                    '.',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
          )),
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.grey,
                ),
                onPressed: () {}),
          ),
        ],
      ),
    ),
    leading: Align(
      alignment: Alignment.centerLeft,
      child: IconButton(
        icon: Icon(
          Icons.settings,
          color: Colors.grey,
        ),
        onPressed: () => _scaffoldKey.currentState.openDrawer(),
        // => _scaffoldKey.currentState.openDrawer(),
      ),
    ),
  );
}

Widget AppbarCotizacion(_scaffoldKey, widhtScreen, context) {
  return new AppBar(
    backgroundColor: Colors.white,
    title: Container(
      child: Row(
        children: <Widget>[
          Expanded(
              child: Container(
            margin: EdgeInsets.fromLTRB(0, 0, 30, 0),
            color: Colors.white,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                now.day.toString() +
                    " de " +
                    getMonth() +
                    " del " +
                    now.year.toString() +
                    '.',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
          )),
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
                icon: Icon(
                  Icons.done,
                  color: Colors.grey,
                ),
                onPressed: () {
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
                                      "¿Continuar?",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Pago de flete:",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                112, 112, 112, 100)),
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
                                          WhitelistingTextInputFormatter
                                              .digitsOnly
                                        ],
                                        decoration: InputDecoration(
                                            hintText: "Cantidad",
                                            enabledBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey)),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromRGBO(
                                                      9, 155, 155, 100)),
                                              //  when the TextFormField in focused
                                            ),
                                            contentPadding: EdgeInsets.fromLTRB(
                                                5, 16, 0, 0)),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Ingresa el porcentaje de utilidad : ",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                112, 112, 112, 100)),
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
                                          WhitelistingTextInputFormatter
                                              .digitsOnly
                                        ],
                                        decoration: InputDecoration(
                                            hintText: "% de utilidad",
                                            enabledBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey)),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromRGBO(
                                                      9, 155, 155, 100)),
                                              //  when the TextFormField in focused
                                            ),
                                            contentPadding: EdgeInsets.fromLTRB(
                                                5, 16, 0, 0)),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 5, 0),
                                          child: RaisedButton(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                side: BorderSide(
                                                    color: Color.fromRGBO(
                                                        0, 182, 134, 1))),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  8, 8, 8, 8),
                                              child: Text(
                                                "Cancelar",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color.fromRGBO(
                                                        0, 182, 134, 1)),
                                              ),
                                            ),
                                            color: Colors.white,
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(5, 0, 0, 0),
                                          child: RaisedButton(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            onPressed: () {
                                              // Scaffold.of(context).showSnackBar(snackBar);
                                              Navigator.pop(context);
                                            },
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  8, 8, 8, 8),
                                              child: Text(
                                                "Continuar",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            color:
                                                Color.fromRGBO(0, 182, 134, 1),
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
                              borderRadius: new BorderRadius.circular(10)),
                        ))) {
                    }
                  }

                  _askUser();
                }),
          ),
        ],
      ),
    ),
    leading: Align(
      alignment: Alignment.centerLeft,
      child: IconButton(
        icon: Icon(
          Icons.settings,
          color: Colors.grey,
        ),
        onPressed: () => _scaffoldKey.currentState.openDrawer(),
        // => _scaffoldKey.currentState.openDrawer(),
      ),
    ),
  );
}

getMonth() {
  var now = new DateTime.now();
  String month;
  switch (now.month) {
    case 1:
      month = "Enero";
      break;
    case 2:
      month = "Febrero";
      break;
    case 3:
      month = "Marzo";
      break;
    case 4:
      month = "Abril";
      break;
    case 5:
      month = "Mayo";
      break;
    case 6:
      month = "Junio";
      break;
    case 7:
      month = "Julio";
      break;
    case 8:
      month = "Agosto";
      break;
    case 9:
      month = "Septiembre";
      break;
    case 10:
      month = "Octubre";
      break;
    case 11:
      month = "Noviembre";
      break;
    case 12:
      month = "Diciembre";
      break;
    default:
      month = "Month";
  }

  return month;
}
