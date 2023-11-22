import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget{
  final VoidCallback ? ontap;
  final text ;
  const CustomButton({super.key , this.text , this.ontap});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        backgroundColor: Colors.green,
      ),
      child: Text(text , style: const TextStyle(color: Colors.white, fontSize: 17),),
    );
  }
}