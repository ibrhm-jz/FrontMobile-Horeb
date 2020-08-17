import 'package:flutter/material.dart';
import 'Start.dart';
import 'Clientes.dart';
import 'Productos.dart';
import 'Cotizacion.dart';


class BotomMenuWidget extends StatefulWidget {
  @override
  _BotomMenuWidgetState createState() => _BotomMenuWidgetState();
}

class _BotomMenuWidgetState extends State<BotomMenuWidget> {
  int _selectedIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
      Start(),
      Clientes(),
      Productos(),
      Cotizacion(),
    //PerfilProveedorPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double widhtScreen = MediaQuery.of(context).size.width;
    double heigthScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              activeIcon:  Icon(Icons.home,textDirection: TextDirection.rtl,),
              icon: Icon(Icons.home,color:Colors.grey),
              title: Text('Inicio',style: TextStyle(fontSize: 12),),
              backgroundColor: Colors.white
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.contact_mail,textDirection: TextDirection.rtl,),
            icon: Icon(Icons.contact_mail,color:Colors.grey),
            title: Text('Contactos',style: TextStyle(fontSize: 12),),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.content_paste),
            icon: Icon(Icons.content_paste,color: Colors.grey,),
            title: Text('Materiales',style: TextStyle(fontSize: 12),),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.shop_two) ,
            icon: Icon(Icons.shop_two,color:Colors.grey),
            title: Text('Cotizacion ',style: TextStyle(fontSize: 12),),
          ),

        ],
        currentIndex: _selectedIndex,
        selectedItemColor:Color.fromRGBO(0, 182, 134, 1),
        onTap: _onItemTapped,
      ),
    );
  }
}



