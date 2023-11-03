import 'package:flutter/material.dart';

Widget inputField({label, obscureText = false, textInputTypes, length, textAlign })
=>  Column(
  crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label,style: const TextStyle(fontSize: 15, color: Colors.black87, fontWeight: FontWeight.w400 )),

      const SizedBox(height: 5),

      TextField(
        obscureText: obscureText,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF616161))
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF616161))
          ),
        ),
        keyboardType: textInputTypes,
        maxLength: length ,
        textAlign: textAlign ,
      ),
    ],
  );


Widget commonBtn(label,onPressed,color)
=>  Container(
  padding: const EdgeInsets.only(left: 3, top: 3),
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      border: Border.all(color: Colors.black)
  ),
  child:  MaterialButton(
    height: 60,
    minWidth: double.infinity,
    onPressed: onPressed,
    color: color,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
    ),
    child:  Text(label,style: const TextStyle(fontWeight:FontWeight.w600, fontSize: 16)) ,
  ),
) ;