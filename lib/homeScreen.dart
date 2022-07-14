import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_myapp/Notifications.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:fluttericon/fontelico_icons.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  int _selectedIndex = 0;
  static const String idScreen = "home";
  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(35.856499, 10.596233);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            toolbarHeight: 100,
            elevation: 0.0,
            title: Container(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 7.0,
                  ),
                  Image(
                    image: AssetImage('assets/images/Municiaplite.jpeg'),
                    width: 35.0,
                    height: 35.0,
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    'Municipalité de Hammam Sousse',
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                  ),
                ],
              ),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                padding: EdgeInsets.symmetric(horizontal: 18),
                icon: Icon(
                  Icons.notifications,
                  color: Colors.blue,
                ),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Notifications()));
                },
              )
            ],
            backgroundColor: Colors.white),
        body: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 18),
            shrinkWrap: true,
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(
                          height: 75,
                        ),
                        Text('Administrations ',
                            style: TextStyle(color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0)),
                      ],
                    ),
                    Container(
                        margin: const EdgeInsets.all(2.0),
                        padding: const EdgeInsets.all(5.0),
                        decoration:
                        BoxDecoration(color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Container(
                            decoration:
                            BoxDecoration(color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Theme(
                              // Remove borders from ExpansionTile
                              data: ThemeData().copyWith(
                                  dividerColor: Colors.transparent),
                              child: ExpansionTile(
                                title: Row(
                                  children: const <Widget>[
                                    Image(
                                      image: AssetImage(
                                          'assets/images/femme.png'),
                                      width: 33.0,
                                      height: 33.0,
                                    ),
                                    Text('Comment nous joindre ?',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18)),
                                  ],
                                ),
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(children: [
                                        RichText(
                                          text: const TextSpan(
                                              style: TextStyle(
                                                  color: Colors.black
                                              ),
                                              children: [
                                                TextSpan(text: 'Adresse: ',
                                                    style: TextStyle(
                                                        color: Colors.grey)),
                                                TextSpan(
                                                    text: 'Avenue de la république 4011, Hammam Sousse'),

                                              ]
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5.0,
                                        ),
                                        const SizedBox(
                                          height: 5.0,
                                        ),
                                        Row(
                                          children: const [
                                            Text('Tél: ',
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                )),
                                            Text(
                                                '73262086', style: TextStyle()),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                        Row(
                                          children: const [
                                            Text('Fax: ',
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                )),
                                            Text(
                                                '73262086', style: TextStyle()),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                        Row(
                                          children: const [
                                            Text('Mail: ',
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                )),
                                            Text('communehsousse@topnet.tn',
                                                style: TextStyle()),
                                          ],
                                        ),
                                      ]))
                                ],
                              ),
                            ))),
                    Container(
                        margin: const EdgeInsets.all(2.0),
                        padding: const EdgeInsets.all(5.0),
                        decoration:
                        BoxDecoration(color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Container(
                            decoration:
                            BoxDecoration(color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Theme(
                              data: ThemeData().copyWith(
                                  dividerColor: Colors.transparent),
                              child: ExpansionTile(
                                title: Row(
                                  children: const <Widget>[
                                    Image(
                                      image: AssetImage(
                                          'assets/images/clock-gris.jpg'),
                                      width: 35.0,
                                      height: 35.0,
                                    ),
                                    Text('Horaire de travail',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18)),
                                  ],
                                ),
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(children: [
                                        Row(children: const [
                                          Text('Lundi-Jeudi:',
                                              style: TextStyle(fontSize: 15)),
                                          SizedBox(
                                            width: 6.0,
                                          ),
                                          Text('8:30-12:30',
                                              style: TextStyle(fontSize: 15)),
                                          SizedBox(
                                            width: 9.0,
                                          ),
                                          Text(
                                            '13:30-17:30',
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ]),
                                        const SizedBox(
                                          height: 5.0,
                                        ),
                                        Row(children: const [
                                          Text(
                                            'Vendredi:',
                                            style: TextStyle(fontSize: 15),
                                          ),
                                          SizedBox(
                                            width: 24.0,
                                          ),
                                          Text(
                                            '8:30-13:00',
                                            style: TextStyle(fontSize: 15),
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Text(
                                            '14:30-17:30',
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ]),
                                        const SizedBox(
                                          height: 5.0,
                                        ),
                                        Row(
                                          children: const [
                                            Text('Samedi: fermé ',
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 15)),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 5.0,
                                        ),
                                        Row(
                                          children: const [
                                            Text('Dimanche: fermé',
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 15)),
                                          ],
                                        ),
                                      ]))
                                ],
                              ),
                            ))),
                    Container(
                        margin: const EdgeInsets.all(2.0),
                        padding: const EdgeInsets.all(5.0),
                        decoration:
                        BoxDecoration(color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Container(
                            decoration:
                            BoxDecoration(color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Theme(
                              data: ThemeData().copyWith(
                                  dividerColor: Colors.transparent),
                              child: ExpansionTile(
                                title: Row(
                                  children: const <Widget>[
                                    Image(
                                      image: AssetImage(
                                          'assets/images/municipalite.png'),
                                      width: 25.0,
                                      height: 25.0,
                                    ),
                                    Text('Aller à la municipalité',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18)),
                                  ],
                                ),
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment
                                              .spaceEvenly, children: [
                                        Column(children: [
                                          const Image(
                                            image: AssetImage(
                                                'assets/images/fileattente.jpg'),
                                            width: 50.0,
                                            height: 50.0,
                                          ),
                                          const Text(
                                            'Personne en attente',
                                            style: TextStyle(fontSize: 13),
                                          ),
                                          const SizedBox(
                                            height: 10.0,
                                          ),
                                          Container(
                                            //padding: EdgeInsets.symmetric(vertical: ),
                                            decoration: BoxDecoration(
                                              color: Colors.grey[200],
                                            ),
                                            width: 70,
                                            height: 24,
                                            alignment: Alignment.center,
                                            child: const Text(
                                              "10",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16),
                                            ),
                                          ),
                                        ]),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        Column(children: [
                                          const Image(
                                            image: AssetImage(
                                                'assets/images/clock.png'),
                                            width: 50.0,
                                            height: 50.0,
                                          ),
                                          const Text(
                                            'Temps d"attente',
                                            style: TextStyle(fontSize: 13),
                                          ),
                                          const SizedBox(
                                            height: 10.0,
                                          ),
                                          Container(
                                            //padding: EdgeInsets.symmetric(vertical: ),
                                            decoration: BoxDecoration(
                                              color: Colors.grey[200],
                                            ),
                                            width: 70,
                                            height: 24,
                                            alignment: Alignment.center,
                                            child: const Text(
                                              "10 min",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16),
                                            ),
                                          )
                                        ]),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                      ]))
                                ],
                              ),
                            ))),
                    Container(
                      margin: const EdgeInsets.all(2.0),
                      padding: const EdgeInsets.all(5.0),
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      height: 250,
                      decoration:
                      BoxDecoration(color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10.0)),
                      child: GoogleMap(
                        onMapCreated: _onMapCreated,
                        initialCameraPosition: const CameraPosition(
                          target: _center,
                          zoom: 18.0,
                        ),
                        markers: {
                          const Marker(
                              markerId: MarkerId("source"), position: _center)
                        },
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.all(2.0),
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                            child: Column(children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Column(
                                  children: [
                                    RichText(
                                      text: const TextSpan(
                                          style: TextStyle(
                                              color: Colors.black
                                          ),
                                          children: [
                                            TextSpan(
                                                text: 'Réjoignez nous sur les réseaux sociaux:',
                                                style: TextStyle(fontSize: 18)
                                            ),

                                          ]
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Row(children: [
                                Container(
                                  //padding: EdgeInsets.symmetric(vertical: ),
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    width: 30,
                                    height: 30,
                                    alignment: Alignment.center,
                                    child: IconButton(
                                      icon: const Icon(
                                        Icons.facebook,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                      onPressed: () {
                                        // do something
                                      },
                                    )),
                                const SizedBox(
                                  width: 4.0, // <-- SEE HERE
                                ),
                                Container(
                                  //padding: EdgeInsets.symmetric(vertical: ),
                                    decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    width: 30,
                                    height: 30,
                                    alignment: Alignment.center,
                                    child: IconButton(
                                      icon: const Icon(
                                        Typicons.twitter,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                      onPressed: () {
                                        // do something
                                      },
                                    )),
                                const SizedBox(
                                  width: 4.0, // <-- SEE HERE
                                ),
                                Container(
                                  //padding: EdgeInsets.symmetric(vertical: ),
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    width: 30,
                                    height: 30,
                                    alignment: Alignment.center,
                                    child: IconButton(
                                      icon: const Icon(
                                        FeatherIcons.youtube,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                      onPressed: () {
                                        // do something
                                      },
                                    )),
                                const SizedBox(
                                  width: 4.0, // <-- SEE HERE
                                ),
                                Container(
                                  //padding: EdgeInsets.symmetric(vertical: ),
                                    decoration: BoxDecoration(
                                      color: Colors.pink,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    width: 30,
                                    height: 30,
                                    alignment: Alignment.center,
                                    child: IconButton(
                                      icon: const Icon(
                                        FeatherIcons.instagram,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                      onPressed: () {
                                        // do something
                                      },
                                    )),
                              ]),
                            ])))
                  ]));
            }),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Accueil'),
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'Mes observations'),
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'Administration'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil')
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
        ));
  }
}