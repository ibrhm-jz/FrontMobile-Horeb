import 'package:flutter/material.dart';
import 'package:suministroshoreb/Empleados.dart';
import 'package:suministroshoreb/Empresa.dart';
import 'package:suministroshoreb/Perfil.dart';


Widget DrawerSettings(context) {
  return new Container(
    width: 220,
    child: Drawer(
      child: Container(
          color: Color.fromRGBO(0, 182, 134, 1),
          margin: MediaQuery.of(context).padding,
          child: Container(
              margin: EdgeInsets.fromLTRB(20, 40, 20, 20),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      color: Colors.white,
                      image: DecorationImage(
                        image: NetworkImage(
                           'https://cdn.now.howstuffworks.com/media-content/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg'.toString()),
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                    width: 80,
                    height: 80,

                  ),
                  Align(
                      child: Text(
                    'tuberia_horeb@hotmail.com',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 12,
                        fontStyle: FontStyle.italic),
                  )),
                  Container(
                    width: 200,

                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 25,
                        ),
                        Expanded(
                          child: FlatButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Perfil()
                                    )
                                );

                              },
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child:
                                  Text(
                                    '   Perfil',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )
                              )
                          ),
                        )
                      ],
                    ),

                  ),
                  Container(
                    width: 200,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.business_center,
                          color: Colors.white,
                          size: 25,
                        ),
                        Expanded(                           
                              child: FlatButton(
                                  padding: EdgeInsets.zero,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Empresa()
                                        )
                                    );
                                  },
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child:
                                    Text(
                                      '   Empresa',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    )
                                  )
                              ),
                            )
                      ],
                    ),

                  ),


                  Container(
                    width: 200,

                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.group_add,
                          color: Colors.white,
                          size: 25,
                        ),
                        Expanded(
                          child: FlatButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {

                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Empleados()
                                    )
                                );
                              },
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child:
                                  Text(
                                    '   Empleados',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )
                              )
                          ),
                        )
                      ],
                    ),

                  ),

                  Container(         
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: 5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                          )
                        )
                      ],
                    ),

                  ),

                  Container(
                    width: 200,

                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.info,
                          color: Colors.white,
                          size: 25,
                        ),
                        Expanded(
                          child: FlatButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child:
                                  Text(
                                    '   Informacion',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )
                              )
                          ),
                        )
                      ],
                    ),

                  ),
                  Container(
                    width: 200,

                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.exit_to_app,
                          color: Colors.white,
                          size: 25,
                        ),
                        Expanded(
                          child: FlatButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child:
                                  Text(
                                    '   Salir',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )
                              )
                          ),
                        )
                      ],
                    ),

                  ),
                ],
              ))),
    ),
  );
}
