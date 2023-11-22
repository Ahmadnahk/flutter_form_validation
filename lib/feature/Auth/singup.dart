import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_validation/feature/Auth/login.dart';
import 'package:form_validation/feature/Auth/widget/custom_button.dart';
import 'package:form_validation/feature/Auth/widget/custom_formfield.dart';

class Usersignup extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Usersignup();
}
class _Usersignup extends State<StatefulWidget>{
  final _Formkey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("User Sign-Up" ,style: TextStyle(color: Colors.white),),
      ),
      body: Form(
        key: _Formkey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomformField(
                contoller: _nameController,
                hinttext: 'Name',
              ),const SizedBox(height: 10,),

              CustomformField(
                contoller: _emailController,
                hinttext: 'Email',
              ),const SizedBox(height: 10,),

              CustomformField(
                contoller: _passController,
                hinttext: 'Password',
              ),const SizedBox(height: 10,),

              CustomButton(
                ontap: () {
                  if (_Formkey.currentState!.validate()){}
                },
                text: 'Sign-Up',
              ),

              InkWell(
                child: Text("Already have an account please login click to login"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => UserLogin(),));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}