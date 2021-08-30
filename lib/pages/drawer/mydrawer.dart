import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                  accountName: Text("Muhammad AlRifai",style: TextStyle(fontSize: 20.0,color: Colors.black),),
                  accountEmail: Text("eng.mohammad.syria@gmail.com",style:TextStyle(color: Colors.grey),),
                currentAccountPicture: GestureDetector(
                  child:new CircleAvatar(
                    backgroundColor: Colors.red,
                    child: Icon(Icons.person,color: Colors.white,),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                ),
              ),

              Container(
                padding: EdgeInsets.only(right: 10.0,left: 10.0),
                child: InkWell(
                  onTap: (){},
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("الصفحة الرئيسية",style: TextStyle(color: Colors.black),),
                        leading: Icon(Icons.home,color: Colors.red,),
                        trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,size:18),
                      ),
                      Divider(color: Colors.grey[400],),
                    ],
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.only(right: 10.0,left: 10.0),
                child: InkWell(
                  onTap: (){},
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("حسابي",style: TextStyle(color: Colors.black),),
                        leading: Icon(Icons.person,color: Colors.red,),
                        trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,size:18),
                      ),
                      Divider(color: Colors.grey[400],),
                    ],
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.only(right: 10.0,left: 10.0),
                child: InkWell(
                  onTap: (){},
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("مفضلاتي",style: TextStyle(color: Colors.black),),
                        leading: Icon(Icons.favorite_border_rounded,color: Colors.red,),
                        trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,size:18),
                      ),
                      Divider(color: Colors.grey[400],),
                    ],
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
