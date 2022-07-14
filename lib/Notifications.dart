import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_myapp/ObservationsDetails.dart';

class Notifications extends StatefulWidget {
  const Notifications({ Key ? key}) : super(key: key);

  @override
  State<Notifications> createState() => _Notifications();
}
bool status = false;
class _Notifications extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
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
                // do something
              },
            )
          ],
          backgroundColor: Colors.white),
      body: Container(
          padding: new EdgeInsets.all(14.0),
          child:DefaultTabController(
            length: 2,
            child: Column(
              children: <Widget>[
                Container(
            child: Theme(
                data: ThemeData(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                indicatorColor: Colors.transparent
            ),
                    child: TabBar(
                      indicator: BoxDecoration(
                        color: const Color.fromRGBO(79, 150, 247, 0.1),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      indicatorColor: Colors.transparent,
                      labelColor: const Color.fromRGBO(79, 150, 247, 1),
                      unselectedLabelColor: const Color.fromRGBO(166, 166, 166, 0.6),
                      labelStyle: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w600),
                      tabs: [
                        Tab(text: 'Notifications'),
                        Tab(text: 'Messages'),
                      ],
                    ))),
                Expanded(
                  child: Container(
                    child: TabBarView(children: [
                      Container(
                          child:ListView.builder(
                              shrinkWrap: true,
                              itemCount: 5,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Text("Aujourd'hui" , style: TextStyle(fontSize: 15,
                                              color: const Color.fromRGBO(41,41, 41, 1),
                                              fontWeight: FontWeight.w500),),
                                          const SizedBox(
                                            height: 7,
                                          ),
                                          GestureDetector(
                                            onTap: () {

                                            },
                                            child: Card(
                                              elevation: 0,
                                              color: Colors.grey[50],

                                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [

                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Image(
                                                          image: AssetImage('assets/images/observation.PNG'),
                                                          width: 45.0,
                                                          height: 45.0,
                                                        ),
                                                        Flexible(
                                                            child: Text('Votre observation Pateau de lumière '
                                                                'de lumière cassé est cours de traitement',
                                                                overflow: TextOverflow.fade,
                                                                maxLines: 3,
                                                                softWrap: true,
                                                                style: TextStyle(fontWeight: FontWeight.w600,
                                                                    color: const Color.fromRGBO(41,41, 41, 1)
                                                                ))),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        SizedBox(width: 47,),
                                                        Text ("23 Jan 2022 a 12:15",style: TextStyle(
                                                            color: const Color.fromRGBO(155, 155, 155, 1),
                                                            fontWeight: FontWeight.w400 ),),


                                                      ],
                                                    ),
                                                    Divider(
                                                      thickness: 1, // thickness of the line
                                                      indent: 5, // empty space to the leading edge of divider.
                                                      endIndent: 5, // empty space to the trailing edge of the divider.
                                                      color: const Color.fromRGBO(0, 0, 0, 0.1), // The color to use when painting the line.
                                                      // The divider's height extent.
                                                    ),

                                                  ]),

                                            ),
                                          )
                                        ]
                                    )
                                );
                              }
                          )),

                      Container(
                          child:ListView.builder(
                              shrinkWrap: true,
                              itemCount: 5,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Text("Aujourd'hui" , style: TextStyle(fontSize: 15,
                                              color: const Color.fromRGBO(41,41, 41, 1),
                                              fontWeight: FontWeight.w500),),
                                          const SizedBox(
                                            height: 7,
                                          ),
                                          Card(
                                            elevation: 0,
                                            color: const Color.fromRGBO(235, 238, 245, 0.3),
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                color: const Color.fromRGBO(201, 209, 224, 0.7),
                                              ),
                                              borderRadius: BorderRadius.circular(10.0),

                                            ),
                                            child: Padding(
                                                padding: new EdgeInsets.all(14.0),


                                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      RichText(
                                                        text: const TextSpan(
                                                            style: TextStyle(
                                                                color: Colors.black
                                                            ),
                                                            children: [
                                                              TextSpan(
                                                                text: 'La municipalité de Hamam Sousse vous souhaite un Aid Mubarek et vous annonce que durant les deux prochains jours, nous ne serons pas en service. Merci pour votre compréhension.',
                                                                style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,
                                                                    color: const Color.fromRGBO(41, 41, 41, 1)),),

                                                            ]
                                                        ),
                                                      ),
                                                      SizedBox(height: 5,),
                                                      RichText(
                                                        text: const TextSpan(
                                                            style: TextStyle(
                                                                color: Colors.black
                                                            ),
                                                            children: [
                                                              TextSpan(
                                                                text: '23 Jan , 2022 a 12:15',
                                                                style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,
                                                                    color: const Color.fromRGBO(155, 155, 155, 1)),),

                                                            ]
                                                        ),
                                                      ),

                                                    ])),

                                          ),

                                        ]
                                    )
                                );
                              }
                          ))
                    ]),
                  ),
                )
              ],
            ),
          )),
    );

  }}