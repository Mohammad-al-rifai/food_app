import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/pages/Account/login.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
          onPressed: ()=>Navigator.of(context).pop(),
        ),
      ),
      body:
        Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Expanded(
                    child: Form(child: ListView(
                      children: [
                        Container(
                          child: Text("إنشاء حساب",style: TextStyle(fontSize: 25.0,color: Colors.red),),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 30.0),
                          child: Text("جديد",style: TextStyle(fontSize: 25.0,color: Colors.red),),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10.0),
                          padding:EdgeInsets.only(left: 20.0,right: 20.0),
                    decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                      color: Colors.white,
                    ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "الاسم الكامل ", border: InputBorder.none,),
                            validator: (String value){
                              if(value.isEmpty||value.length<1)
                                return " الرجاء ادخال الاسم الكامل";
                              return "Yes";
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10.0),
                          padding:EdgeInsets.only(left: 20.0,right: 20.0),
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Colors.white,
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "البريد الالكتروني ", border: InputBorder.none,),
                            validator: (String value){
                              if(value.isEmpty||
                                value.indexOf(".")==-1||
                                value.indexOf("@")==-1
                              )
                                return " الرجاء ادخال البريد الالكتروني";
                              return "Yes";
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10.0),
                          padding:EdgeInsets.only(left: 20.0,right: 20.0),
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Colors.white,
                          ),
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: "كلمة المرور ", border: InputBorder.none,),
                            validator: (String value){
                              if(value.isEmpty||value.length<6)
                                return " الرجاء ادخال كلمة المرور ";
                              return "Yes";
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10.0),
                          padding:EdgeInsets.only(left: 20.0,right: 20.0),
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Colors.white,
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: "رقم الهاتف ", border: InputBorder.none,),
                            validator: (String value){
                              if(value.isEmpty||value.length<1)
                                return " الرجاء ادخال رقم الهاتف";
                              return "Yes";
                            },
                          ),
                        ),
                        MaterialButton(onPressed: (){},
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(bottom: 10.0,top: 25.0),
                          padding:EdgeInsets.all(5.0),
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Colors.red,
                          ),
                          child: Text("تسجيل",style: TextStyle(color: Colors.white,fontSize: 25.0),),
                        ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10.0),
                          alignment: Alignment.bottomCenter,
                          child: Text("عند الضغط على الشروط والأحكام فأنت توافق  على قوانين التطبيق"),
                        ),
                      ],
                    ),)
                ),

                Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("إذا لديك حساب سجل الدخول؟ ",style: TextStyle(color: Colors.black,fontSize: 16.0),),
                      Padding(padding: EdgeInsets.all(10.0)),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                        },
                        child: Text("دخول",style: TextStyle(color: Colors.red,fontSize: 16.0),),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
