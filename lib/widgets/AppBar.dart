
import 'package:flutter/material.dart';

Widget AppbarHome(_scaffoldKey,widhtScreen,context) {
  return new AppBar(
    backgroundColor: Colors.white,
    title: Container(
      child: Stack(
        alignment: Alignment.centerLeft,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB((widhtScreen/5), 0, 0, 0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Fecha",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),
          ),
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
        onPressed: () {}
        // => _scaffoldKey.currentState.openDrawer(),
      ),
    ),
  );
}