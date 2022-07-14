import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_myapp/abservations.dart';

import 'Notifications.dart';

class NewsDetails extends StatefulWidget {
  const NewsDetails({Key? key}) : super(key: key);

  @override
  State<NewsDetails> createState() => _NewsDetails();
}

class _NewsDetails extends State<NewsDetails> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[50],
        appBar: AppBar(
            toolbarHeight: 100,
            elevation: 0.0,
            title: Container(
              child: Column(
                children:  <Widget>[
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
                padding: const EdgeInsets.symmetric(horizontal: 18),
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.blue,
                ),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Notifications()));
                },
              )
            ],
            leading: new IconButton(
              icon: new Icon(Icons.arrow_back_ios_new_outlined, color: Colors.blue),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Abs()));
              },
                /*onPressed: () {
                Navigator.of(
                  context,
                  rootNavigator: true,
                ).pop(
                  context,
                );
              ;}*/
            ),
            backgroundColor: Colors.white),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text('Détails de l"actualités',
                  style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 20.0)),

              Expanded(
                  child: ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 10),
                      shrinkWrap: true,
                      itemCount: 1,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                            child: Column(children: [
                              const SizedBox(
                                height: 7,
                              ),
                              Card(
                                elevation: 8,
                                shadowColor: Colors.grey[50],
                                shape: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(13),
                                    borderSide: const BorderSide(color: Colors.white)),
                                child: Padding(
                                    padding: const EdgeInsets.all(18),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                      /// Image news
                                      Container(
                                        height: 150.0,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.cover, image: AssetImage('assets/images/news.jpg')),
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(13.0), topLeft: Radius.circular(13.0)),
                                        ),
                                      ),
                                      const SizedBox(height: 6),

                                      /// Tag, date, time
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          /// TAG
                                          Container(
                                            //padding: EdgeInsets.symmetric(vertical: ),
                                            decoration: BoxDecoration(
                                              color: Colors.green[50],
                                              borderRadius: BorderRadius.circular(30),
                                              border: Border.all(width: 1, color: Colors.green),
                                            ),
                                            width: 75,
                                            height: 20,
                                            alignment: Alignment.center,
                                            child: const Text(
                                              "Travaux",
                                              style: TextStyle(color: Colors.green, fontSize: 14),
                                            ),
                                          ),

                                          /// Date and time
                                          Row(
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.only(
                                                  bottom:
                                                  1, // This can be the space you need between text and underline
                                                ),
                                                decoration: const BoxDecoration(
                                                    border: Border(
                                                        bottom: BorderSide(
                                                          color: Colors.green,
                                                          width: 1.0, // This would be the width of the underline
                                                        ))),
                                                child: const Text(
                                                  "6-02-2022",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 20),
                                              const Image(
                                                image: AssetImage('assets/images/clock.png'),
                                                width: 15.0,
                                                height: 15.0,
                                              ),
                                              const SizedBox(width: 4),
                                              const Text(
                                                "2",
                                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              const Text(
                                                "Jours",
                                                style: TextStyle(fontSize: 10),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      const SizedBox(height: 8),

                                      /// Article title
                                      const Text(
                                        "Travaux sur la route de la plage",
                                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: 10),

                                      const Text(
                                        "Nous vous informons que nous avons des travaux pour améliorer la qualité de nos route,ENTRETIEN Selon un rapport interne du ministère des transports, révélé par Le Journal du Dimanche, le réseau routier géré par l’État s’est dégradé et souffre d’un « sous-investissement chronique ». Mais le problème touche aussi les infrastructures dépendant des collectivités locales, qui font face à la baisse des dotations financières, assure Julien Vick, délégué général du Syndicat des équipements de la route.",
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ])),
                              )
                            ]));
                      })),
            ]));
  }
}