import 'package:flutter/material.dart';
import 'BotomMenu.dart';
import 'api/Login.dart';
class Login extends StatefulWidget {
  Login({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          margin:MediaQuery.of(context).padding,
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topRight,
                child: Image.asset(
                  'images/bordesuperior.png',
                  fit: BoxFit.contain,
                  width: 120,
                ),
              ),
              Flexible(
                  child: Align(
                heightFactor: .75,
                child: Container(
                  margin:EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child:ListView(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'images/logo.png',
                          fit: BoxFit.contain,
                          width: 80,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 30, 0, 5),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Inicio',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 35,
                              ),
                            )),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Por favor inicia sesion para continuar.',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.grey),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                        child: Card(
                            margin: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                            elevation: 4,
                            child: Expanded(
                              child: Align(
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                    child: TextFormField(
                                      controller: _emailController,
                                      autofocus: true,
                                      //controller: _presentacionController,
                                      decoration: InputDecoration(
                                        //contentPadding: EdgeInsets.fromLTRB(5, 40, 0, 0),

                                          prefixIcon: Icon(
                                            Icons.email,
                                            color: Colors.grey,
                                          ),
                                          hintText: 'tucorreo@example.com',
                                          //filled: true,

                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white, width: .5)),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide:
                                            BorderSide(color: Colors.white),
                                            //  when the TextFormField in focused
                                          ),
                                          labelText: "EMAIL",
                                          // alignLabelWithHint: true,
                                          // floatingLabelBehavior: FloatingLabelBehavior.never,
                                          labelStyle: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                          hintStyle: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal)),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 16),
                                    ),
                                  )),
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                        child: Card(

                            margin: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                            elevation: 4,
                            child: Expanded(
                              child: Align(
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                    child: TextFormField(
                                      autofocus: true,
                                      obscureText: true,
                                      controller: _passwordController,
                                      decoration: InputDecoration(
                                        //contentPadding: EdgeInsets.fromLTRB(5, 40, 0, 0),

                                        prefixIcon: Icon(
                                          Icons.lock,
                                          color: Colors.grey,
                                        ),
                                        hintText: '................',
                                        //filled: true,

                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white, width: .5)),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.white),
                                          //  when the TextFormField in focused
                                        ),
                                        labelText: "CONTRASEÑA",
                                        //alignLabelWithHint: true,
                                        // floatingLabelBehavior: FloatingLabelBehavior.never,
                                        labelStyle: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  )),
                            )),
                      ),
                      Expanded(
                          child: Align(
                              heightFactor: 2,
                              alignment: Alignment.centerRight,
                              child: Container(
                                width: 150,
                                height: 40,
                                // margin: EdgeInsets.fromLTRB(5, 0, 0,0),
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  onPressed: () {
                                   //SystemChannels.textInput.invokeMethod('TextInput.hide');
                                    requestLoginAPI(context, _emailController.text, _passwordController.text);

                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,

                                    children: <Widget>[
                                      Text("Iniciar",
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
                              )
                          )
                      )
                    ],
                  ),
                )
              ))
            ],
          )),
      bottomSheet: Container(
        color: Colors.white,
        child: Align(
          heightFactor: 1,
          alignment: Alignment.center,
          child: FlatButton(
            onPressed: () {

            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "¿No tienes una cuenta?  ",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12),
                ),
                Text(
                  "contacta al administrador",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Color.fromRGBO(0, 182, 134, 1),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
