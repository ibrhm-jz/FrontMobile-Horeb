import 'package:flutter/material.dart';

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
