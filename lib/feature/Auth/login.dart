import 'package:flutter/material.dart';
import 'package:form_validation/feature/Auth/widget/custom_button.dart';
import 'package:form_validation/feature/Auth/widget/custom_formfield.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({super.key});

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  final _Formkey = GlobalKey<FormState>();
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
                text: 'Log-In',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
