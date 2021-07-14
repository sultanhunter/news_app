import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewsHome extends StatefulWidget {
  const NewsHome({Key? key}) : super(key: key);

  @override
  State<NewsHome> createState() => _NewsHomeState();
}

class _NewsHomeState extends State<NewsHome> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFFDBDCDB),
        body: IndexedStack(
          index: _selectedIndex,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8.0),
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 160.0,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        elevation: 3.0,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 8.0),
                        color: Colors.white,
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 40.0,
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'sifjsifjlsakjfalflhflsalfdl',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'sifjsifjlsakjfalflhflsalfdl',
                                      style: const TextStyle(),
                                    ),
                                  ),
                                  SizedBox(height: 10.0),
                                  Expanded(
                                    child: Text(
                                      'sifjsifjlsakjfalflhflsalfdl',
                                      style:
                                          const TextStyle(color: Colors.grey),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
            )
          ],
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            color: Colors.transparent,
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  child: Material(
                    color: _selectedIndex == 0
                        ? const Color(0xFF3054BA)
                        : Colors.white,
                    child: InkWell(
                      splashColor: Colors.white,
                      onTap: () {
                        setState(() {
                          _selectedIndex = 0;
                        });
                      },
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Icon(
                                    FontAwesomeIcons.list,
                                    color: _selectedIndex == 0
                                        ? Colors.white
                                        : Colors.black,
                                    size: 25.0,
                                  ),
                                ),
                              ),
                              TextSpan(
                                text: 'News',
                                style: TextStyle(
                                  color: _selectedIndex == 0
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  height: 50.0,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  child: Material(
                    color: _selectedIndex == 1
                        ? const Color(0xFF3054BA)
                        : Colors.white,
                    child: InkWell(
                      splashColor: Colors.white,
                      onTap: () {
                        setState(() {
                          _selectedIndex = 1;
                        });
                      },
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Icon(
                                    FontAwesomeIcons.solidHeart,
                                    color: _selectedIndex == 1
                                        ? Colors.white
                                        : Colors.red,
                                    size: 25.0,
                                  ),
                                ),
                              ),
                              TextSpan(
                                text: 'Favs',
                                style: TextStyle(
                                  color: _selectedIndex == 1
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  height: 50.0,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
