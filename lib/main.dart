import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: menu(),
  ));
}

class menu extends StatefulWidget {
  const menu({Key? key}) : super(key: key);

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  bool check1 = false;
  bool check2 = false;
  bool check3 = false;
  int ans=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Menu Bar"),
        actions: [Icon(Icons.more_vert)],
      ),
      body: Column(
        children: [
          Container(
            child:  Column(
              children: [
               CheckboxListTile(
                  title: Text(
                    "Tomato 50",
                    style: TextStyle(fontSize: 20),
                  ),
                  value: check1,
                  onChanged: (val1) {
                    setState(() {
                      check1=val1!;

                      if(check1==true)
                      {
                        ans=ans+50;
                      }
                      else
                      {
                        ans=ans-50;
                      }
                    });

                  },
                ),
                CheckboxListTile(
                  title: Text(
                    "potato 60",
                    style: TextStyle(fontSize: 20),
                  ),
                  value: check2,
                  onChanged: (val2) {

                    setState(() {
                      check2=val2!;

                      if(check2==true)
                      {
                        ans=ans+60;
                      }
                      else
                      {
                        ans=ans-60;
                      }
                    });

                  },
                ),
                  CheckboxListTile(
                  title: Text(
                    "Brinjal 400",
                    style: TextStyle(fontSize: 20),
                  ),
                  value: check3,
                  onChanged: (val3) {
                    setState(() {
                      check3=val3!;

                      if(check3==true)
                      {
                        ans=ans+60;
                      }
                      else
                      {
                        ans=ans-60;
                      }
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 50,),
          Text("${ans}",style: TextStyle(fontSize: 30),),
        ],
      ),
    );
  }
}
