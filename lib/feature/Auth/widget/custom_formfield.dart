import 'package:flutter/material.dart';

class CustomformField extends StatelessWidget{
  final contoller;
  final hinttext;
  const CustomformField({super.key , this.contoller , this.hinttext});

  @override
  Widget build(BuildContext context) {

    return TextFormField(
      controller: contoller,
      decoration: InputDecoration(
        hintText: hinttext,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.black38,
          ),
        ),
      ),
      validator: (value) {
        if(value == null || value.isEmpty){
          return "Enter your $hinttext";
        }
      },
    );
  }
}