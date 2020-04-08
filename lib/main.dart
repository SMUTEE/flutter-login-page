import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      routes: <String, WidgetBuilder> {
        "/Signuppage": (BuildContext context) => new SignupPage()
      }
    );
  }
}
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
bool _rememberme = false;
 

  Widget _buildEmailLTF() {
    return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Email',
                        style: TextStyle(
                          color: Colors.white,
                      fontFamily: 'OpenSans',
                      fontSize: 12.0,
                      fontWeight: FontWeight.normal, 
                        ),
                      ),
                      SizedBox(height: 2.0),
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 40.0,
                        color: Color(0xFF73AEF5),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Open Sans'
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 14.0),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.white
                            ),
                            hintText: 'Enter your Email',
                            hintStyle:  TextStyle(
                              color: Colors.white,
                              fontFamily: 'OpenSans',
                              fontSize: 10.0,
                              fontWeight: FontWeight.normal,
                              
                            ),
                          ),
                        )
                      )
                    ],
                  );
  }
   Widget _buildPasswordLTF() {
    return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Password',
                        style: TextStyle(
                          color: Colors.white,
                      fontFamily: 'OpenSans',
                      fontSize: 12.0,
                      fontWeight: FontWeight.normal, 
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 40.0,
                        color: Color(0xFF73AEF5),
                        child: TextField(
                          obscureText: true,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Open Sans',
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 14.0),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.white
                            ),
                            hintText: 'Enter your Password',
                            hintStyle:  TextStyle(
                              color: Colors.white,
                              fontFamily: 'OpenSans',
                              fontSize: 10.0,
                              fontWeight: FontWeight.normal 
                            )
                          ),
                        )
                      )
                    ],
                  ); 
  }
  Widget _buildpasswordbtn () {
    return Container(
                    alignment: Alignment.centerRight,
                    child: FlatButton(onPressed: (null),
                    padding: EdgeInsets.only(right: 0.0),
                    child: Text('Forgot Password?')
                    ),
                  );
  }
  Widget _buildremembermecheckbox () {
    return Container(
      height: 20.0,
                    child: Row(
                      children: <Widget>[
                        Theme(
                          data: ThemeData(
                            unselectedWidgetColor: Colors.white),
                            child: Checkbox(
                              value: _rememberme,
                              checkColor: Colors.green,
                              activeColor: Colors.white,
                              onChanged: (value){
                                setState(() {
                                  _rememberme = value;
                                });
                              },
                            ),
                        ),
                        Text('Remember me')
                      ],
                    ),
                  );
  }
  Widget _buildloginbtn () {
    return Container(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    width: double.infinity,
                    child: RaisedButton(
                      elevation: 5.0,
                      onPressed: () {Navigator.of(context).pushNamed("/Signuppage");},
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        'LOGIN',
                        style: TextStyle(color: Color(0xFF527DAA),
                        letterSpacing: 1.5,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'OpenSans'
                        ),
                      ),
                    ),
                  );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF398AE5),
                  Color(0xFF478DE0),
                  Color(0xFF61A4F1),
                  Color(0xFF73AEF5),
                ],
                stops: [0.9, 0.7, 0.4, 0.1],
              )
            ),
          ),

          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: 50.0,
                vertical: 120.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 60.0,
                    width: 100.0,
                    decoration: BoxDecoration(color: Colors.white,
                    image: DecorationImage(image: AssetImage("assets/group.png"))
                    ),
                  ),
                  Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30.0,),
                  _buildEmailLTF(),
                  SizedBox(height: 30.0,),
                  _buildPasswordLTF(),
                  _buildpasswordbtn(),
                  _buildremembermecheckbox(),
                  _buildloginbtn(),
                ], 
              ),
            ),
          )
        ],
      ),
    );
  }
}
class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<LoginPage> {
bool _rememberme = false;
 

  Widget _buildEmailLTF() {
    return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Email',
                        style: TextStyle(
                          color: Colors.white,
                      fontFamily: 'OpenSans',
                      fontSize: 12.0,
                      fontWeight: FontWeight.normal, 
                        ),
                      ),
                      SizedBox(height: 2.0),
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 40.0,
                        color: Color(0xFF73AEF5),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Open Sans'
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 14.0),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.white
                            ),
                            hintText: 'Enter your Email',
                            hintStyle:  TextStyle(
                              color: Colors.white,
                              fontFamily: 'OpenSans',
                              fontSize: 10.0,
                              fontWeight: FontWeight.normal,
                              
                            ),
                          ),
                        )
                      )
                    ],
                  );
  }
   Widget _buildPasswordLTF() {
    return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Password',
                        style: TextStyle(
                          color: Colors.white,
                      fontFamily: 'OpenSans',
                      fontSize: 12.0,
                      fontWeight: FontWeight.normal, 
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 40.0,
                        color: Color(0xFF73AEF5),
                        child: TextField(
                          obscureText: true,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Open Sans',
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 14.0),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.white
                            ),
                            hintText: 'Enter your Password',
                            hintStyle:  TextStyle(
                              color: Colors.white,
                              fontFamily: 'OpenSans',
                              fontSize: 10.0,
                              fontWeight: FontWeight.normal 
                            )
                          ),
                        )
                      )
                    ],
                  ); 
  }
  Widget _buildpasswordbtn () {
    return Container(
                    alignment: Alignment.centerRight,
                    child: FlatButton(onPressed: (null),
                    padding: EdgeInsets.only(right: 0.0),
                    child: Text('Forgot Password?')
                    ),
                  );
  }
  Widget _buildremembermecheckbox () {
    return Container(
      height: 20.0,
                    child: Row(
                      children: <Widget>[
                        Theme(
                          data: ThemeData(
                            unselectedWidgetColor: Colors.white),
                            child: Checkbox(
                              value: _rememberme,
                              checkColor: Colors.green,
                              activeColor: Colors.white,
                              onChanged: (value){
                                setState(() {
                                  _rememberme = value;
                                });
                              },
                            ),
                        ),
                        Text('Remember me')
                      ],
                    ),
                  );
  }
  Widget _buildloginbtn () {
    return Container(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    width: double.infinity,
                    child: RaisedButton(
                      elevation: 5.0,
                      onPressed: () => print('Login Button Pressed'),
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        'LOGIN',
                        style: TextStyle(color: Color(0xFF527DAA),
                        letterSpacing: 1.5,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'OpenSans'
                        ),
                      ),
                    ),
                  );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF398AE5),
                  Color(0xFF478DE0),
                  Color(0xFF61A4F1),
                  Color(0xFF73AEF5),
                ],
                stops: [0.9, 0.7, 0.4, 0.1],
              )
            ),
          ),

          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: 50.0,
                vertical: 120.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 60.0,
                    width: 100.0,
                    decoration: BoxDecoration(color: Colors.white,
                    image: DecorationImage(image: AssetImage("assets/group.png"))
                    ),
                  ),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30.0,),
                  _buildEmailLTF(),
                  SizedBox(height: 30.0,),
                  _buildPasswordLTF(),
                  _buildpasswordbtn(),
                  _buildremembermecheckbox(),
                  _buildloginbtn(),
                ], 
              ),
            ),
          )
        ],
      ),
    );
  }
}