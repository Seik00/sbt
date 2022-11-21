
import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sbt_app/view/dashboard.dart/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  
  final GlobalKey<FormState> _key = new GlobalKey();
  final mobileController = TextEditingController();
  final pwdController = TextEditingController();

  @override
  void initState() {
    super.initState();
    
  }

  postData() async {
     Timer(
      Duration(seconds: 0),
      () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => PageView())));  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,

        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: MediaQuery.of(context).size.height/20),
              child: Form(
                key: _key,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Container(
                    //   decoration: BoxDecoration(
                    //     image: DecorationImage(
                    //       image: AssetImage('lib/assets/images/auntie-annes-logo.png'),
                    //       fit: BoxFit.fitWidth
                    //     )
                    //   ),
                    // ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Image(
                        image: AssetImage("assets/icons/logo.png"),
                        height: MediaQuery.of(context).size.width/6,
                        width: MediaQuery.of(context).size.width/6,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text('Empower Your  \nBusiness', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: TextFormField(
                              textAlign: TextAlign.left,
                              autofocus: false,
                              controller: mobileController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Mobile Number is required';
                                }
                                return null;
                              },
                              obscureText: false,
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              decoration: new InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: BorderSide(color: Colors.grey.shade200, width: 1),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: BorderSide(color: Colors.lightBlue, width: 1),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Phone number, email',
                  
                              ),
                              keyboardType: TextInputType.number,
                              onSaved: (str) {
                                print(str);
                              },
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: TextFormField(
                              textAlign: TextAlign.left,
                              autofocus: false,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Password is required';
                                }
                                return null;
                              },
                              controller: pwdController,
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              decoration: new InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: BorderSide(color: Colors.grey, width: 1),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: BorderSide(color: Colors.lightBlue, width: 1),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Password',
                  
                              ),
                              keyboardType: TextInputType.text,
                              onSaved: (str) {
                                print(str);
                              },
                            ),
                          ),
                          SizedBox(height: 20.0),
                          
                          Container(
                            child: GestureDetector(
                            onTap: () {
                                print("tapped on container");
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PageView()),
                              );
                            },
                            child: Center(
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xFF28A4ED),
                                      Color(0xFF6F83F4),
                                    ],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                height: MediaQuery.of(context).size.height / 15,
                                alignment: Alignment.center,
                                child: 
                                Text(
                                  'Log in',
                                  style: TextStyle(color: Colors.white),
                              )),
                            ),
                          ),),
                          SizedBox(height: 10.0),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                FittedBox(
                                  child: GestureDetector(
                                    onTap: (){
                                      
                                    },
                                    child: Text(
                                      'Forget Your Login Details? Get help now',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(flex: 2,),
                          Container(
                          decoration: BoxDecoration(
                              color: Color(0xff3B5998),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          height: MediaQuery.of(context).size.height / 15,
                          alignment: Alignment.center,
                          child:
                          Text(
                            'Facebook',
                            style: TextStyle(color: Colors.white),
                          )),
                          SizedBox(height: 20.0),
                          Container(
                          decoration: BoxDecoration(
                              color: Color(0xffDB4437),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          height: MediaQuery.of(context).size.height / 15,
                          alignment: Alignment.center,
                          child:
                          Text(
                            'Google',
                            style: TextStyle(color: Colors.white),
                          )),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FittedBox(
                                  child: GestureDetector(
                                    onTap: (){
                                      
                                    },
                                    child: Text(
                                      'Don have an account yet? Sign up',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          
                          Spacer(flex: 2,),
                        ],
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
          ),
        
        ],
      ),
    );
  }
}