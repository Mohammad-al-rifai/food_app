import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/pages/Account/register.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
                          margin: EdgeInsets.only(bottom: 35.0),
                          child: Text("نسيت كلمة المرور",style: TextStyle(fontSize: 25.0,color: Colors.red),),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 35.0),
                          child: Text("قم بإدخال البريد الالكتروني الصحيح ليتم إرسال كلمة المرور إليك",
                            style: TextStyle(fontSize: 25.0,color: Colors.red),),
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
                          child: Text("إرسال",style: TextStyle(color: Colors.white,fontSize: 25.0),),
                        ),
                        ),
                      ],
                    ),)
                ),
              ],
            ),
          ),
        ),
    );
  }
}
