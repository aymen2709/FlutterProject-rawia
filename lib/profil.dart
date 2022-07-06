import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Profil extends StatefulWidget {
  const Profil({ Key ? key}) : super(key: key);

  @override
  State<Profil> createState() => _Profil();
}
bool status = false;
class _Profil extends State<Profil> {
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
                        Text('Profil',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 22.0)),
                      ],
                    ),
                    Container(
                        margin: const EdgeInsets.all(2.0),
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0)),
                          child:Padding(
                            padding: EdgeInsets.all(13),
                          child: Column(
                            children:[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Changer le profil:',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                                IconButton(
                                  icon: Icon(
                                    Icons.edit_outlined,
                                    color: Colors.blue,
                                  ),
                                  onPressed: () {
                                    // do something
                                  },
                                )
                              ],
                            ),
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Nom',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16)),
                                  Text('Ben Foulen',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                          fontSize: 16)),
                                  Text('Prénom',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16)),
                                  Text('Foulen',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16))
                                ],
                              ),
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Âge',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16)),
                                  //SizedBox(width: 14,),
                                  Text('45',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16)),
                                  //SizedBox(width: 75,),
                                  Text('Sexe',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16)),
                                  //SizedBox(width: 27,),
                                  Text('Homme',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16))
                                ],
                              ),
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  Text('Numéro',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16)),
                                  SizedBox(width: 14,),
                                  Text('+21623000000',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16)),

                                ],
                              )
                      ],
                            ),
                          )
                          ),
                          ),
                    Container(
                      margin: const EdgeInsets.all(2.0),
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0)),
                          child:Padding(
                            padding: EdgeInsets.all(13),
                            child: Column(
                              children:[
                                Row(
                                  children: [
                                    Text('Changer la langue:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18)),
                                    SizedBox(width: 80,),
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  children: [
                                Image(
                                image: AssetImage('assets/images/flagfrance.png'),
                                width: 24.0,
                                 height: 24.0,
                                ),
                                    SizedBox(width: 7,),
                                    Text('Français',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16)),
                                    SizedBox(width: 68,),
                                    FlutterSwitch(
                                      width: 55.0,
                                      height: 30.0,
                                      valueFontSize: 15.0,
                                      toggleSize: 20.0,
                                      value: !status,
                                      borderRadius: 30.0,
                                      padding: 8.0,
                                      showOnOff: false,
                                      activeColor: Colors.green,
                                      onToggle: (val) {
                                        setState(() {
                                          status = val;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  children: [
                                    Image(
                                      image: AssetImage('assets/images/flagtunisia.png'),
                                      width: 24.0,
                                      height: 24.0,
                                    ),
                                    SizedBox(width: 7,),
                                    Text('العربية',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16)),
                                    SizedBox(width: 90,),
                                    FlutterSwitch(
                                      width: 55.0,
                                      height: 30.0,
                                      valueFontSize: 15.0,
                                      toggleSize: 20.0,
                                      value: status,
                                      borderRadius: 30.0,
                                      padding: 8.0,
                                      showOnOff: false,
                                      activeColor: Colors.green,
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
                          )
                      ),
                    )
              ]),

                  );
            })

    );
  }
}
