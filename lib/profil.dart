import 'package:flutter/material.dart';
import 'package:flutter_myapp/Notifications.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _Profil();
}

bool status = false;

class _Profil extends State<Profil> {
  bool _isShown = true;
  bool _value = false;
  int val = -1;
  void _update(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
            contentPadding: EdgeInsets.all(14.0),
            title: const Text('Profil',textAlign:TextAlign.center,style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 22.0)),
            content:
            ListView.builder(
                  shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
             return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                //position
                mainAxisSize: MainAxisSize.min,
                // wrap content in flutter
                children: [
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person,color: Colors.blue[100],),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 3, color: Colors.red)
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 2),
                      hintText: 'Nom',
                    ),
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(169, 180, 202, 1)
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person,color: Colors.blue[100]),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 3, color: Colors.red)
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 2),
                      hintText: 'Prénom',
                    ),
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(169, 180, 202, 1)
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.format_list_numbered,color: Colors.blue[100]),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 3, color: Colors.red)
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 2),
                      hintText: 'Âge',
                    ),
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(169, 180, 202, 1)
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.call,color: Colors.blue[100]),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 3, color: Colors.red)
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 2),
                      hintText: 'Numéro',
                    ),
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(169, 180, 202, 1)
                    ),
                  ),
                    Row(
                    children: [
                    Flexible(
                    flex: 1,
                    child: Row(
                    children: [
                    Radio(
                    value: 1,
                     groupValue: 1, onChanged: (index) {}),
                    Expanded(
                    child: Text(
                    'Homme',
                    ))
                    ],
                    ),
                    ),
                    Flexible(
                    flex: 1,
                    child: Row(
                    children: [
                    Radio(
                    value: 2,
                     groupValue: "null", onChanged: (index) {}),
                    Text('Femme')
                    ],
                    ),
                    ),
                    ])


                ],
              );}),
            actions: [
              // The "Yes" button
              GestureDetector(
              onTap: (){
                Navigator.of(context).pop();
          },
              child:Container(
                //padding: EdgeInsets.symmetric(vertical: ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: Colors.blue),
                ),
                width: 80,
                height: 30,
                alignment: Alignment.center,
                child: const Text(
                  "Annuler",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),

              )),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child:Container(
                    //padding: EdgeInsets.symmetric(vertical: ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.blue),
                    ),
                    width: 80,
                    height: 30,
                    alignment: Alignment.center,
                    child: const Text(
                      "Valider",
                      style: TextStyle(color: Colors.blue, fontSize: 14),
                    ),

                  ))
            ],

          );
        });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[50],
        appBar: AppBar(
            toolbarHeight: 100,
            elevation: 0.0,
            title: Column(
              children: const <Widget>[
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
            backgroundColor: Colors.white),
        body: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            shrinkWrap: true,
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(height: 75),
                    Text('Profil',
                        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 22.0)),
                  ],
                ),

                /// Change profile
                Container(
                  margin: const EdgeInsets.all(2.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration:
                  BoxDecoration(color: const Color.fromRGBO(235, 238, 245, 0.8), borderRadius: BorderRadius.circular(10.0)),
                  child: Container(
                      decoration:
                      BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(13),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Changer le profil:',
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                                IconButton(
                                  icon: const Icon(
                                    Icons.edit_outlined,
                                    color: Colors.blue,
                                  ),
                                  onPressed:
                                     _isShown == true
                                        ? () => _update(context): null,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Nom', style: TextStyle(color: Colors.grey, fontSize: 16)),
                                SizedBox(width: 5),
                                /// We will use Text (with overflow, maxLines and softWrap) inside Flexible to avoid pixel overflow error
                                Flexible(
                                    child: Text('A long last name',
                                        overflow: TextOverflow.fade,
                                        maxLines: 1,
                                        softWrap: false,
                                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16))),
                                SizedBox(width: 10),
                                Text('Prénom', style: TextStyle(color: Colors.grey, fontSize: 16)),
                                SizedBox(width: 5),
                                Flexible(
                                    child: Text('Foulen',
                                        overflow: TextOverflow.fade,
                                        maxLines: 1,
                                        softWrap: false,
                                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)))
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Âge', style: TextStyle(color: Colors.grey, fontSize: 16)),
                                //SizedBox(width: 14,),
                                Text('45', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
                                //SizedBox(width: 75,),
                                Text('Sexe', style: TextStyle(color: Colors.grey, fontSize: 16)),
                                //SizedBox(width: 27,),
                                Text('Homme', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16))
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: const [
                                Text('Numéro', style: TextStyle(color: Colors.grey, fontSize: 16)),
                                SizedBox(
                                  width: 14,
                                ),
                                Text('+21623000000',
                                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
                              ],
                            )
                          ],
                        ),
                      )),
                ),

                const SizedBox(height: 16),

                /// Change language
                Container(
                  margin: const EdgeInsets.all(2.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration:
                  BoxDecoration(color: const Color.fromRGBO(235, 238, 245, 0.8), borderRadius: BorderRadius.circular(10.0)),
                  child: Container(
                      decoration:
                      BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(13),
                        child: Column(
                          children: [
                            Row(
                              children: const [
                                Text('Changer la langue:',
                                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
                                SizedBox(width: 80),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                const Image(
                                  image: AssetImage('assets/images/flagfrance.png'),
                                  width: 24.0,
                                  height: 24.0,
                                ),
                                const SizedBox(
                                  width: 7,
                                ),
                                const Text('Français',
                                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
                                const SizedBox(
                                  width: 68,
                                ),
                                FlutterSwitch(
                                  width: 55.0,
                                  height: 30.0,
                                  valueFontSize: 25.0,
                                  toggleSize: 20.0,
                                  value: !status,
                                  borderRadius: 30.0,
                                  padding: 4.0,
                                  showOnOff: false,
                                  /// To convert Hex color (color in figma: #84CAA8) to RGBA color (color in flutter: RGBA(132, 202, 168, 1))
                                  /// Use this online utility http://hex2rgba.devoth.com/
                                  activeColor: const Color.fromRGBO(132, 202, 168, 1),
                                  onToggle: (val) {
                                    setState(() {
                                      status = !val;
                                    });
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                const Image(
                                  image: AssetImage('assets/images/flagtunisia.png'),
                                  width: 24.0,
                                  height: 24.0,
                                ),
                                const SizedBox(
                                  width: 7,
                                ),
                                const Text('العربية',
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                                const SizedBox(
                                  width: 90,
                                ),
                                FlutterSwitch(
                                  width: 55.0,
                                  height: 30.0,
                                  valueFontSize: 25.0,
                                  toggleSize: 20.0,
                                  value: status,
                                  borderRadius: 30.0,
                                  padding: 4.0,
                                  showOnOff: false,
                                  activeColor: const Color.fromRGBO(132, 202, 168, 1),
                                  onToggle: (val) {
                                    setState(() {
                                      status = val;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                )
              ]);
            }));
  }
}