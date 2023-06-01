import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';

import '../archived_tasks/premleague/cubit/cubit/prem_cubit_cubit.dart';

class Newss extends StatelessWidget {
  const Newss({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PremCubitCubit, PremCubitState>(
        listener: (context, state) {
    },
    builder: (context, state) {
      PremCubitCubit cubit = PremCubitCubit.get(context);
      return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(),
        // Center(
        //
        //   child: ClipRRect(
        //     child: BackdropFilter(
        //       filter: ImageFilter.blur(sigmaX: 30,
        //           sigmaY: 30,
        //           tileMode: TileMode.clamp),
        //       child: Container(
        //         width: double.infinity,
        //         height: 485,
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(28),
        //           color: Colors.white.withOpacity(.2),
        //           border: Border.all(
        //             color: Colors.black,
        //             width: 1.5,
        //             style: BorderStyle.solid,
        //           ),
        //         ),
        //         // child: Form(
        //         //
        //         //   child: Column(
        //         //     children: [
        //         //       SizedBox(height: 10,),
        //         //       Row(
        //         //         mainAxisAlignment: MainAxisAlignment
        //         //             .center,
        //         //         children: [
        //         //           Text(
        //         //             'Your Card',
        //         //             style: TextStyle(
        //         //               fontSize: 20,
        //         //               fontWeight: FontWeight.bold,
        //         //               color: Colors.black,
        //         //             ),
        //         //           ),
        //         //           Icon(
        //         //             Icons.keyboard_arrow_down,
        //         //             size: 35,
        //         //           ),
        //         //         ],
        //         //       ),
        //         //       Padding(
        //         //         padding: const EdgeInsets.only(
        //         //             right: 20, left: 20, top: 20),
        //         //         child: Container(
        //         //           height: 70,
        //         //           decoration: BoxDecoration(
        //         //             border: Border.all(
        //         //                 color: Colors.black),
        //         //             borderRadius: BorderRadius
        //         //                 .circular(12),
        //         //             color: Colors.white.withOpacity(.4),
        //         //             // boxShadow: [
        //         //             //   BoxShadow(
        //         //             //     color:Colors.black.withOpacity(.2),
        //         //             //     spreadRadius: 2,
        //         //             //     blurRadius: 15,
        //         //             //   )
        //         //             // ],
        //         //           ),
        //         //           child: Center(
        //         //             child: TextFormField(
        //         //
        //         //               keyboardType: TextInputType
        //         //                   .name,
        //         //               onFieldSubmitted: (value) {
        //         //                 print(value);
        //         //               },
        //         //               onChanged: (value) {
        //         //                 print(value);
        //         //               },
        //         //               validator: (value) {
        //         //                 if (value!.isEmpty) {
        //         //                   return 'your Name can\'t be empty';
        //         //                 }
        //         //                 return null;
        //         //               },
        //         //               toolbarOptions:
        //         //               ToolbarOptions(
        //         //                   paste: true, copy: true),
        //         //               cursorColor: Colors.black,
        //         //               style: TextStyle(fontSize: 25),
        //         //               decoration: InputDecoration(
        //         //                 prefixIcon: Icon(
        //         //                   Icons.person,
        //         //                   color: Colors.black,
        //         //                   size: 30,
        //         //                 ),
        //         //                 hintText: 'Your Name',
        //         //                 border: InputBorder.none,
        //         //               ),
        //         //             ),
        //         //           ),
        //         //         ),
        //         //       ),
        //         //       SizedBox(
        //         //         height: 15,
        //         //       ),
        //         //       Padding(
        //         //         padding: const EdgeInsets.only(
        //         //           right: 20,
        //         //           left: 20,
        //         //         ),
        //         //         child: Container(
        //         //           height: 70,
        //         //           decoration: BoxDecoration(
        //         //             border: Border.all(
        //         //                 color: Colors.black),
        //         //             borderRadius: BorderRadius
        //         //                 .circular(12),
        //         //             color: Colors.white.withOpacity(.4),
        //         //             // boxShadow: [
        //         //             //   BoxShadow(
        //         //             //     color:Colors.black.withOpacity(.2),
        //         //             //     spreadRadius: 2,
        //         //             //     blurRadius: 15,
        //         //             //   )
        //         //             // ],
        //         //           ),
        //         //           child: Center(
        //         //             child: TextFormField(
        //         //
        //         //               keyboardType: TextInputType
        //         //                   .name,
        //         //               onFieldSubmitted: (value) {
        //         //                 print(value);
        //         //               },
        //         //               onChanged: (value) {
        //         //                 print(value);
        //         //               },
        //         //               validator: (value) {
        //         //                 if (value!.isEmpty) {
        //         //                   return 'Your Address can\'t be empty';
        //         //                 }
        //         //                 return null;
        //         //               },
        //         //               toolbarOptions:
        //         //               ToolbarOptions(
        //         //                   paste: true, copy: true),
        //         //               cursorColor: Colors.black,
        //         //               style: TextStyle(fontSize: 25),
        //         //               decoration: InputDecoration(
        //         //                 prefixIcon: Icon(
        //         //                   Icons.place,
        //         //                   color: Colors.black,
        //         //                   size: 30,
        //         //                 ),
        //         //                 hintText: 'Your address',
        //         //                 border: InputBorder.none,
        //         //               ),
        //         //             ),
        //         //           ),
        //         //         ),
        //         //       ),
        //         //       SizedBox(
        //         //         height: 15,
        //         //       ),
        //         //       Padding(
        //         //         padding: const EdgeInsets.only(
        //         //             right: 20, left: 20),
        //         //         child: Container(
        //         //           height: 70,
        //         //           decoration: BoxDecoration(
        //         //             border: Border.all(
        //         //                 color: Colors.black),
        //         //             borderRadius: BorderRadius
        //         //                 .circular(12),
        //         //             color: Colors.white.withOpacity(.4),
        //         //             // boxShadow: [
        //         //             //   BoxShadow(
        //         //             //     color:Colors.black.withOpacity(.2),
        //         //             //     spreadRadius: 2,
        //         //             //     blurRadius: 15,
        //         //             //   )
        //         //             // ],
        //         //           ),
        //         //           child: Center(
        //         //             child: TextFormField(
        //         //
        //         //               keyboardType: TextInputType
        //         //                   .number,
        //         //               onFieldSubmitted: (value) {
        //         //                 print(value);
        //         //               },
        //         //               onChanged: (value) {
        //         //                 print(value);
        //         //               },
        //         //               validator: (value) {
        //         //                 if (value!.isEmpty) {
        //         //                   return 'Room Number can\'t be empty';
        //         //                 }
        //         //                 return null;
        //         //               },
        //         //               toolbarOptions:
        //         //               ToolbarOptions(
        //         //                   paste: true, copy: true),
        //         //               cursorColor: Colors.black,
        //         //               style: TextStyle(fontSize: 25),
        //         //               decoration: InputDecoration(
        //         //                 prefixIcon: Icon(
        //         //                   Icons.numbers,
        //         //                   color: Colors.black,
        //         //                   size: 30,
        //         //                 ),
        //         //                 hintText: 'Phone Number',
        //         //                 border: InputBorder.none,
        //         //               ),
        //         //             ),
        //         //           ),
        //         //         ),
        //         //       ),
        //         //       SizedBox(
        //         //         height: 15,
        //         //       ),
        //         //       Padding(
        //         //         padding: const EdgeInsets.only(
        //         //           right: 20, left: 20,),
        //         //         child: Container(
        //         //           width: double.infinity,
        //         //           height: 70,
        //         //           decoration: BoxDecoration(
        //         //             borderRadius: BorderRadius
        //         //                 .circular(12),
        //         //             color: Colors.black,
        //         //             boxShadow: [
        //         //               BoxShadow(
        //         //                 color:
        //         //                 Colors.black.withOpacity(.4),
        //         //                 spreadRadius: 2,
        //         //                 blurRadius: 15,
        //         //               )
        //         //             ],
        //         //           ),
        //         //
        //         //         ),
        //         //       ),
        //         //     ],
        //         //   ),
        //         // ),
        //       ),
        //     ),
        //
        //
        //   ),
        //
        // ),
      );
    }
    );
  }
}


