import 'package:flutter/material.dart';
import 'package:sbt_app/view/dashboard.dart/homepage.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({ Key key }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  var _selectedPage = 0;
  @override
  Widget build(BuildContext context) {

    List _pageOptions = [];
    _pageOptions = [
      HomePage(),
      HomePage(),
      HomePage(),
      HomePage(),
      // MapView()
    ];
    return Stack(
      children: [
        _pageOptions[_selectedPage],
        Positioned(
          bottom: 0,
          width: MediaQuery.of(context).size.width,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),
            elevation: 2,
            margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            child: Container(
              // height: MediaQuery.of(context).size.height / 10,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            _selectedPage = 0;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Image.asset(
                                    'lib/assets/images/bottomBar/home.png',
                                    height: 24, width: 24,),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: Text(
                                    'Home',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: _selectedPage == 0?Theme.of(context).textSelectionColor:Colors.grey,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ))
                            ],
                          ),
                        )),
                  ),
                  Expanded(
                    flex: 2,
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            _selectedPage = 1;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 4),
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Image.asset(
                                  'lib/assets/images/bottomBar/explore.png',
                                  height: 24, width: 24,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: Text(
                                    'Explore',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: _selectedPage == 1?Theme.of(context).textSelectionColor:Colors.grey,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ))
                            ],
                          ),
                        )),
                  ),
                  Expanded(
                    flex: 2,
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            _selectedPage = 2;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Image.asset('lib/assets/images/bottomBar/schedule.png',
                                    height: 24, width: 24,),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: Text(
                                    'Schedule',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: _selectedPage == 2?Theme.of(context).textSelectionColor:Colors.grey,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ))
                            ],
                          ),
                        )),
                  ),
                  Expanded(
                    flex: 2,
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            _selectedPage = 3;
                          });
                        },
                        child: Container(
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Image.asset(
                                    'lib/assets/images/bottomBar/profile.png',
                                    height: 24, width: 24,),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              FittedBox(
                                  fit: BoxFit.cover,
                                  child: Text(
                                    'Profile',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: _selectedPage == 3?Theme.of(context).textSelectionColor:Colors.grey,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ))
                            ],
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}