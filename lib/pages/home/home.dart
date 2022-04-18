import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/pages/drawer/mydrawer.dart';
import 'package:food_app/pages/product/product_detail.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> _keyDrawer=GlobalKey<ScaffoldState>();
  var myarr_product=[
    {"pro_id":"1","pro_name":"pro1","pro_desc":"desc product desc product desc product desc product"  ,"pro_image":"images/product/pro1.jpg"},
    {"pro_id":"2","pro_name":"pro2","pro_desc":"desc product desc product desc product desc product"  ,"pro_image":"images/product/pro2.jpg"},
    {"pro_id":"3","pro_name":"pro3","pro_desc":"desc product desc product desc product desc product"  ,"pro_image":"images/product/pro3.jpg"},
  ];


  var myarr_category=[
    {"cat_id":"1","cat_name":"cat1","cat_image":"images/category/cat1.png"},
    {"cat_id":"2","cat_name":"cat2","cat_image":"images/category/cat2.png"},
    {"cat_id":"3","cat_name":"cat3","cat_image":"images/category/cat3.png"},
    {"cat_id":"4","cat_name":"cat4","cat_image":"images/category/cat4.png"},
    {"cat_id":"5","cat_name":"cat5","cat_image":"images/category/cat5.png"},
    {"cat_id":"6","cat_name":"cat6","cat_image":"images/category/cat6.png"},
    {"cat_id":"7","cat_name":"cat7","cat_image":"images/category/cat7.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        key: _keyDrawer,
        endDrawer: MyDrawer(),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(top: 30.0),
                padding: EdgeInsets.only(right: 15.0),
                child: Text("توصيل الطلب الى ",style: TextStyle(color: Colors.grey),),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 15.0),
                    child: Text("موقع الزبون ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                  ),
                  IconButton(icon: Icon(Icons.arrow_drop_down,color: Colors.red,), onPressed: (){}),
                ],
              ),
              new Container(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    GestureDetector(
                        child: new Icon(Icons.menu,color: Colors.red,size: 40.0,),
                      onTap: (){
                          _keyDrawer.currentState.openEndDrawer();
                      },
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(right: 10.0),
                        decoration:BoxDecoration(
                          color:Colors.grey[200],
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child:
                            new TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "بحث",
                                suffixIcon: Icon(Icons.search),
                              ),
                            ),
                        ),
                      ),
                  ],
                ),
              ),
              new Container(
                width: MediaQuery.of(context).size.width,
                height: 107.0,
                child: ListView.builder(
                  itemCount: myarr_category.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder:(BuildContext context, int index){
                      return SingleCategory(
                        cat_id: myarr_category[index]["cat_id"],
                        cat_name: myarr_category[index]["cat_name"],
                        cat_image: myarr_category[index]["cat_image"],
                      );
                    },
                ),
              ),

              new Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/3 + 80,
                //height: 370.0,
                child: ListView.builder(
                  itemCount: myarr_product.length,
                  itemBuilder:(BuildContext context, int index){
                    return SingleProduct(
                      pro_id: myarr_product[index]["pro_id"],
                      pro_name: myarr_product[index]["pro_name"],
                      pro_desc: myarr_product[index]["pro_desc"],
                      pro_image: myarr_product[index]["pro_image"],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          selectedItemColor: Colors.red,
          selectedFontSize: 14.0,
          unselectedItemColor: Colors.grey,
          unselectedFontSize: 12.0,
          showSelectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon:Icon(Icons.notifications,size: 30.0,),
              title: new Text("الاشعارات"),
            ),
            BottomNavigationBarItem(
              icon:Icon(Icons.restaurant_menu,size: 30.0,),
              title: new Text("العروض"),
            ),
            BottomNavigationBarItem(
              icon:Icon(Icons.person,size: 30.0,),
              title: new Text("حسابي"),
            ),
          ],
        ),
      ),
    );
  }
}


class SingleProduct extends StatelessWidget {
  final String pro_id;
  final String pro_name;
  final String pro_desc;
  final String pro_image;
  SingleProduct({this.pro_id,this.pro_name,this.pro_desc,this.pro_image});
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetail()));
      },
      child: new Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            new Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(pro_image)),
              ),
            ),
            new Text(pro_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
            new Text(pro_desc,style: TextStyle(color: Colors.grey),),
          ],
        ),
      ),
    );
  }
}







class SingleCategory extends StatelessWidget {
  final String cat_id;
  final String cat_name;
  final String cat_image;

  SingleCategory({this.cat_id,this.cat_name,this.cat_image});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10.0) ,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.red[100],
            ),
            child: Image.asset(cat_image),
          ),
          Text(cat_name,style: TextStyle(fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
