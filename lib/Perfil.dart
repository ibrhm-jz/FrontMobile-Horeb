import 'package:flutter/material.dart';
import 'widgets/AppBar.dart';

class Perfil extends StatefulWidget {
  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey, //change your color here
        ),
        backgroundColor: Colors.white,
        title: Row(
          children: <Widget>[
            Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 50, 0),
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
          ],
        ),
      ),
      body: Container(
          color: Colors.white,
          //margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Expanded(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Perfil',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      )),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                  child: TextField(
                    decoration: new InputDecoration(
                      hintText: "Nombre",
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      prefixIcon: Icon(
                        Icons.business_center,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
                  child: TextField(
                    decoration: new InputDecoration(
                      hintText: "RFC",
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      prefixIcon: Icon(
                        Icons.contact_mail,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
                  child: TextField(
                    decoration: new InputDecoration(
                      hintText: "Clabe Interbancaria",
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      prefixIcon: Icon(
                        Icons.payment,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
                  child: TextField(
                    decoration: new InputDecoration(
                      hintText: "Correo",
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
                  child: TextField(
                    decoration: new InputDecoration(
                      hintText: "Direccion",
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      prefixIcon: Icon(
                        Icons.map,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
      bottomNavigationBar: Container(
        width: 150,
        height: 50,
        child: RaisedButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          onPressed: () {},
          child: Text("Editar",
              style: TextStyle(fontSize: 14, color: Colors.white)),
          color: Color.fromRGBO(0, 182, 134, 1),
        ),
      ),
    );
  }
}
