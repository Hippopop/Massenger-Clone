import 'package:flutter/material.dart';
import 'dart:math';


var creator = new Random();

int hour() {
 return creator.nextInt(12);
}

int minute() => creator.nextInt(60);

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        titleSpacing: 5,
        title: Text(
          "Chats",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.only(left: 10, top: 8, right: 8),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1610650314750-c4c9eda6a031?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjgyfHxwb3J0cmFpdHN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                ),
              ),
              Positioned(
                top: -7,
                right: -3,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                      border: Border.all(
                        color: Colors.black,
                        width: 2.5,
                      )),
                  child: Text(
                    "3",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              )
            ],
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[700],
            ),
            child: Icon(
              Icons.camera_alt_rounded,
              color: Colors.white,
              size: 18,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[700],
            ),
            child: Icon(
              Icons.edit_rounded,
              color: Colors.white,
              size: 18,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 35,
            margin: EdgeInsets.only(left: 10, right: 10, top: 8, bottom: 5),
            width: double.infinity,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(24),
              //backgroundBlendMode: BlendMode.dstOut,
            ),
            child: Stack(
              children: [
                Container(
                    width: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.search_outlined,
                          color: Colors.grey,
                          size: 16,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )),
                Container(
                    height: 10,
                    child: TextField(
                      showCursor: false,
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.all(5),
                      ),
                    ))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 8, top: 8, bottom: 5),
            height: 90,
            width: double.infinity,
            // color: Colors.white,

            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: 90,
                  width: 75,
                  child: Column(
                    children: [
                      Expanded(
                          flex: 5,
                          child: Container(
                            margin: EdgeInsets.all(5),
                            child: CircleAvatar(
                              radius: 32,
                              backgroundColor: Colors.grey[700],
                              child: Icon(
                                Icons.video_call_rounded,
                                color: Colors.white,
                                size: 26,
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 3,
                          child: Text(
                            "Make video call",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12),
                          ))
                    ],
                  ),
                ),
                activeViewFrame("Sasha Blouse",
                    "https://images.unsplash.com/photo-1616817846957-aa2b827d600b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTE0fHxwb3J0cmFpdHN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                activeViewFrame("Berthold Warden",
                    "https://images.unsplash.com/photo-1603384699007-50799748fc45?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzl8fHBvcnRyYWl0c3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                activeViewFrame("Anny Shamber",
                    "https://images.unsplash.com/photo-1619300026534-8e8a76941138?ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODB8fHBvcnRyYWl0c3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                activeViewFrame("Hanji Admone",
                    "https://images.unsplash.com/photo-1613971582147-ce1266b692de?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTI2fHxwb3J0cmFpdHN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                activeViewFrame("Katrina Kaif",
                    "https://images.unsplash.com/photo-1611232658409-0d98127f237f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjQwfHxwb3J0cmFpdHN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                activeViewFrame("Eren Yeager",
                    "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/1e3dcc3d-45e1-4914-846c-3ffa0df29a06/db565ma-a8035ad5-a593-4b74-a980-922a1d9d80be.png/v1/fit/w_300,h_800,q_70,strp/chillin_by_bev_nap_db565ma-300w.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAwIiwicGF0aCI6IlwvZlwvMWUzZGNjM2QtNDVlMS00OTE0LTg0NmMtM2ZmYTBkZjI5YTA2XC9kYjU2NW1hLWE4MDM1YWQ1LWE1OTMtNGI3NC1hOTgwLTkyMmExZDlkODBiZS5wbmciLCJ3aWR0aCI6Ijw9NzYwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.lOaHEZXM23X_j6ezpRg67XMPolEKun6ElaBiKcs0D1A"),
                activeViewFrame("Mikasa Ackerman",
                    "https://images.unsplash.com/photo-1584088743546-db0289ee9b07?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTg5fHxwb3J0cmFpdHN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                activeViewFrame("Levi Ackerman",
                    "https://images.unsplash.com/photo-1611756468043-60b953471279?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTgzfHxwb3J0cmFpdHN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                activeViewFrame("Erwin Smith",
                    "https://images.unsplash.com/photo-1575308118336-95434be06db7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTc2fHxwb3J0cmFpdHN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                activeViewFrame("Armin Jhonson",
                    "https://images.unsplash.com/photo-1516257984-b1b4d707412e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTU1fHxwb3J0cmFpdHN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                activeViewFrame("Kenny Sabastian",
                    "https://images.unsplash.com/photo-1605332134997-ae67492b8942?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTQxfHxwb3J0cmFpdHN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 0),
            height: 518,
            width: double.infinity,
            //color: Colors.white,

            child: ListView(
              children: [
                inboxFrame("active","Mikasa Ackerman", "Please stop all this Eereh",
                    "https://images.unsplash.com/photo-1584088743546-db0289ee9b07?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTg5fHxwb3J0cmFpdHN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                inboxFrame("","Sabiha Islam Rimi", "Bhaia Delete koro please",
                    "https://images.unsplash.com/photo-1612681621185-0fa6abab8099?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzN8fHBvcnRyYWl0c3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                inboxFrame(""," Erwin Smith", "My soldiers rawr, my soldiers",
                    "https://images.unsplash.com/photo-1575308118336-95434be06db7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTc2fHxwb3J0cmFpdHN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                inboxFrame("active","Armin Jhonson", "What have you become Ereeh",
                    "https://images.unsplash.com/photo-1516257984-b1b4d707412e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTU1fHxwb3J0cmFpdHN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                inboxFrame("","Kenny Sabastian", "You're still small Levi my",
                    "https://images.unsplash.com/photo-1605332134997-ae67492b8942?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTQxfHxwb3J0cmFpdHN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                inboxFrame("active",
                    "Berthold Warden",
                    "I will burn you all and save eldia",
                    "https://images.unsplash.com/photo-1603384699007-50799748fc45?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzl8fHBvcnRyYWl0c3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                inboxFrame("","Sasha Blouse", "What a tasty potato yumm yumm!",
                    "https://images.unsplash.com/photo-1616817846957-aa2b827d600b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTE0fHxwb3J0cmFpdHN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                inboxFrame("active",
                    "Anny Shamber",
                    "You all are ediots. Acting like kids",
                    "https://images.unsplash.com/photo-1619300026534-8e8a76941138?ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODB8fHBvcnRyYWl0c3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                inboxFrame("",
                    "Hanji Admone",
                    "You look so skinny Eren. What you like to",
                    "https://images.unsplash.com/photo-1613971582147-ce1266b692de?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTI2fHxwb3J0cmFpdHN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                inboxFrame("active","Kulsuma Khatun", "Rimi kemon acho?",
                    "https://images.unsplash.com/photo-1609107081279-95316710f9fe?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDF8fHBvcnRyYWl0c3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
              ],
            ),
          ),
           BottomNavigationBar(
             //fixedColor: Colors.white,
             selectedItemColor: Colors.blue,
             iconSize: 20,
             unselectedItemColor: Colors.white,
             backgroundColor: Colors.black,
            unselectedLabelStyle: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w500
            ),
            selectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w600,
            ),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_rounded,
               // color: Colors.grey,
                  ),
                label: 'Chats',
              ),
              /*BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: 'Business',
              ),*/
              BottomNavigationBarItem(
                icon: Icon(Icons.people_rounded,
                color: Colors.white,),
                label: "People",
              ),
            ],
            //currentIndex: ,
            //selectedItemColor: Colors.amber[800],
            //onTap: _onItemTapped,
          ),

        ],
      ),
    );
  }

  TextButton inboxFrame( String status, String name, String text, String imgLink) {
    return TextButton(
    /*  style: ButtonStyle(
        side:
      ),*/
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Inbox(name, text, imgLink)));

      },
      child: Container(
          height: 70,
          child: Row(
            children: [
              Expanded(
                  flex: 3,
                  child: Container(
                    //margin: EdgeInsets.all(5),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          CircleAvatar(
                            radius: 28,
                            backgroundColor: Colors.grey[700],
                            backgroundImage: NetworkImage(
                              imgLink,
                            ),
                          ),
                          (status == "active")?
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.5,
                                ),
                                color: Colors.green,
                              ),
                            ),
                          ) : Container(),
                        ],
                      ),
                    ),
                  )),
              Expanded(
                  flex: 12,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey),
                      ),
                      Text(
                        text + "... · "+ hour().toString()+":"+ minute().toString() +" pm",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  )),
              (minute() > 40)?
              Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.notifications_off,
                    color: Colors.grey,
                    size: 18,
                  )) : Expanded(flex: 1, child: Container()),
            ],
          )),
    );
  }

  Container activeViewFrame(String name, String imgLink) {
    return Container(
      height: 90,
      width: 75,
      child: Column(
        children: [
          Expanded(
              flex: 5,
              child: Container(
                margin: EdgeInsets.all(5),
                child: CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.grey[700],
                  backgroundImage: NetworkImage(imgLink),
                ),
              )),
          Expanded(
              flex: 3,
              child: Container(
                  padding: EdgeInsets.only(left: 8, right: 8),
                  child: Text(
                    name,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  )))
        ],
      ),
    );
  }
}


class Inbox extends StatefulWidget {
  String namer; String textr; String linkr;
  Inbox(this.namer, this.textr, this.linkr) {}

 // const Inbox({Key? key}) : super(key: key);
  @override
  _InboxState createState() => _InboxState(namer, textr, linkr);
}

class _InboxState extends State<Inbox> {
  String a = "";
  String b = "";
  String c = "";

  _InboxState(String name, String text, String link) {
    a = name;
    b = text;
    c = link;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar( titleSpacing: 0,
        title: Container(
          child: Row(
            children: [
              Container(
               margin: EdgeInsets.only(right: 10),
                child:  CircleAvatar(
                  backgroundImage: NetworkImage(
                    c,
                  ),
                  radius: 18,
                ),
              ),
              Text( (a.split(" ")
                  [0]),
                style: TextStyle(color: Colors.white,
                fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.black,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.deepPurple,
        ),
        actions: [
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
             // color: Colors.grey[700],
            ),
            child: Icon(
              Icons.call,
             // color: Colors.white,
              size: 24,
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
             // color: Colors.grey[700],
            ),
            child: Icon(
              Icons.videocam_rounded,
              //color: Colors.white,
              size: 24,
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              // color: Colors.grey[700],
            ),
            child: Icon(
              Icons.info_rounded,
              //color: Colors.white,
              size: 24,
            ),
          ),
        ],

      ),
body: Column(
  children: [
    Spacer(),
    Container(
      margin: EdgeInsets.only(top: 5, bottom: 5),
      height: 35,

      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 10),
           child: CircleAvatar(
             backgroundImage: NetworkImage(
               c,
             ),
             radius: 22
           ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.grey[800],
            ),
            child: Text(b, style: TextStyle(
              color:Colors.white,
              fontSize: 14
            ),),
          )
        ],
      ),
    ),
    Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 8, bottom: 5),

      child: Row(
        children: [
          Expanded(
          flex: 1,
            child: Icon(
              Icons.menu_rounded,
              color: Colors.blue,
              size: 24,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                // color: Colors.grey[700],
              ),
              child: Icon(
                Icons.camera_alt_rounded,
                color: Colors.blue,
                size: 24,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                // color: Colors.grey[700],
              ),
              child: Icon(
                Icons.image_rounded,
                color: Colors.blue,
                size: 24,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                // color: Colors.grey[700],
              ),
              child: Icon(
                Icons.keyboard_voice_rounded,
                color: Colors.blue,
                size: 24,
              ),
            ),
          ),
          Expanded(
            flex: 4,
              child: Stack(
                alignment: Alignment.center,
children: [
  Container(
    width: 150,
    height: 30,
    decoration: BoxDecoration(
      color: Colors.grey[800],
      borderRadius: BorderRadius.circular(15)
    ),
  ),
  Positioned(
      left: 18,
      child: Text("Aa",
      style: TextStyle(
        fontSize: 14,
        color: Colors.grey,
      ),)),
  Positioned(
      right: 13,
      child: Icon(Icons.emoji_emotions_rounded,
      color: Colors.blue,
        size: 22,
      ))
],
          )),
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                // color: Colors.grey[700],
              ),
              child: Icon(
                Icons.thumb_up_alt_rounded,
                color: Colors.blue,
                size: 24,
              ),
            ),
          ),
        ],
      ),
    )
  ],
),
    ));
  }
}

