// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:premleague/modules/premScreens/premierScrenCubits/LatestScreen/cubit/latest_screen_cubit.dart';
//
// import '../archived_tasks/premleague/cubit/cubit/prem_cubit_cubit.dart';
// import '../../shared/component/list_components.dart';
//
// class favTeamScreen extends StatelessWidget {
//   const favTeamScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<LatestScreenCubit, LatestScreenState>(
//         listener: (context, state) {},
//         builder: (context, state) {
//           List imageList = [
//             {"id": 1, "image_path": 'assets/images/bk11.jpg'},
//             {"id": 2, "image_path": 'assets/images/img1.jpg'},
//             {"id": 3, "image_path": 'assets/images/img3.jpg'}
//           ];
//           List<Map> newslist= LatestScreenCubit.get(context).newsList;
//           PremCubitCubit cubit = PremCubitCubit.get(context);
//           return Scaffold(
//             appBar: AppBar(),
//             body: SingleChildScrollView(
//               child:  Container(
//
//                 height: 200,
//                 //width: double.infinity,
//                 decoration: BoxDecoration(
//                   // color:  HexColor('#f0e4e4'),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child:Container(
//                   height: 500,
//                  child: ListView.separated(
//                       //scrollDirection: Axis.horizontal,
//                       physics: BouncingScrollPhysics(),
//                       itemBuilder: (context ,index)=>matchstime(context),
//                       separatorBuilder: (context, index) => SizedBox(width: 20,),
//                       itemCount:5,
//                   ),
//                 ),
//               ),
//
//
// /*
//               Column(
//                 children:
//                   [
//                     ListView.separated(
//                       //   scrollDirection: Axis.horizontal,
//                       // physics: BouncingScrollPhysics(),
//                       itemBuilder: (context, index) =>cubit.BuildTeamItem(
//                           cubit.Favteam[index], context),
//                       separatorBuilder: (context, index) => SizedBox(
//                         height: 10,
//                       ),
//                       itemCount: 3,
//                     ),
//                   ]
//                     /*
//                 [
//                   GestureDetector(
//                     onTap: () {
//                       cubit.imageindex1 = 0;
//                     },
//                     child: Container(
//                       width: double.infinity,
//                       height: 50,
//                       decoration: BoxDecoration(
//                         color: Color.fromRGBO(135, 233, 151, 1),
//                         borderRadius: BorderRadius.circular(30),
//
//                       ),
//
//                       child: Padding(
//                         padding: const EdgeInsets.all(5.0),
//                         child: Row(
//                           children: [
//                             SizedBox(width: 5,),
//                             Text('Liverpoll',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(width: 190,),
//                             CircleAvatar(
//                               backgroundColor: Colors.white,
//                               radius: 30,
//                               child: Container(
//                                 height: 30,
//                                 width: 30,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                     image: AssetImage(
//                                         'assets/images/liverLogo.jpeg'),
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//
//                     ),
//                   ),
//                   SizedBox(height: 7,),
//                   GestureDetector(
//                     onTap: () {
//                       cubit.imageindex1 = 1;
//                     },
//                     child: Container(
//                       width: double.infinity,
//                       height: 50,
//                       decoration: BoxDecoration(
//                         color: Color.fromRGBO(135, 233, 151, 1),
//                         borderRadius: BorderRadius.circular(30),
//
//                       ),
//
//                       child: Padding(
//                         padding: const EdgeInsets.all(5.0),
//                         child: Row(
//                           children: [
//                             SizedBox(width: 5,),
//                             Text('Liverpoll',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(width: 190,),
//                             CircleAvatar(
//                               backgroundColor: Colors.white,
//                               radius: 30,
//                               child: Container(
//                                 height: 30,
//                                 width: 30,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                     image: AssetImage(
//                                         'assets/images/liverLogo.jpeg'),
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//
//                     ),
//                   ),
//                   SizedBox(height: 7,),
//                   GestureDetector(
//                     onTap: () {
//                       cubit.imageindex1 = 2;
//                     },
//                     child: Container(
//                       width: double.infinity,
//                       height: 50,
//                       decoration: BoxDecoration(
//                         color: Color.fromRGBO(135, 233, 151, 1),
//                         borderRadius: BorderRadius.circular(30),
//
//                       ),
//
//                       child: Padding(
//                         padding: const EdgeInsets.all(5.0),
//                         child: Row(
//                           children: [
//                             SizedBox(width: 5,),
//                             Text('Liverpoll',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(width: 190,),
//                             CircleAvatar(
//                               backgroundColor: Colors.white,
//                               radius: 30,
//                               child: Container(
//                                 height: 30,
//                                 width: 30,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                     image: AssetImage(
//                                         'assets/images/liverLogo.jpeg'),
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//
//                     ),
//                   ),
//                   SizedBox(height: 7,),
//                   GestureDetector(
//                     onTap: () {
//                       cubit.imageindex1 = 3;
//                     },
//                     child: Container(
//                       width: double.infinity,
//                       height: 50,
//                       decoration: BoxDecoration(
//                         color: Color.fromRGBO(135, 233, 151, 1),
//                         borderRadius: BorderRadius.circular(30),
//
//                       ),
//
//                       child: Padding(
//                         padding: const EdgeInsets.all(5.0),
//                         child: Row(
//                           children: [
//                             SizedBox(width: 5,),
//                             Text('Liverpoll',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(width: 190,),
//                             CircleAvatar(
//                               backgroundColor: Colors.white,
//                               radius: 30,
//                               child: Container(
//                                 height: 30,
//                                 width: 30,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                     image: AssetImage(
//                                         'assets/images/liverLogo.jpeg'),
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//
//                     ),
//                   ),
//                   SizedBox(height: 7,),
//                   GestureDetector(
//                     onTap: () {
//                       cubit.imageindex1 = 4;
//                     },
//                     child: Container(
//                       width: double.infinity,
//                       height: 50,
//                       decoration: BoxDecoration(
//                         color: Color.fromRGBO(135, 233, 151, 1),
//                         borderRadius: BorderRadius.circular(30),
//
//                       ),
//
//                       child: Padding(
//                         padding: const EdgeInsets.all(5.0),
//                         child: Row(
//                           children: [
//                             SizedBox(width: 5,),
//                             Text('Liverpoll',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(width: 190,),
//                             CircleAvatar(
//                               backgroundColor: Colors.white,
//                               radius: 30,
//                               child: Container(
//                                 height: 30,
//                                 width: 30,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                     image: AssetImage(
//                                         'assets/images/liverLogo.jpeg'),
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//
//                     ),
//                   ),
//                   SizedBox(height: 7,),
//                   GestureDetector(
//                     onTap: () {
//                       cubit.imageindex1 = 5;
//                     },
//                     child: Container(
//                       width: double.infinity,
//                       height: 50,
//                       decoration: BoxDecoration(
//                         color: Color.fromRGBO(135, 233, 151, 1),
//                         borderRadius: BorderRadius.circular(30),
//
//                       ),
//
//                       child: Padding(
//                         padding: const EdgeInsets.all(5.0),
//                         child: Row(
//                           children: [
//                             SizedBox(width: 5,),
//                             Text('Liverpoll',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(width: 190,),
//                             CircleAvatar(
//                               backgroundColor: Colors.white,
//                               radius: 30,
//                               child: Container(
//                                 height: 30,
//                                 width: 30,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                     image: AssetImage(
//                                         'assets/images/liverLogo.jpeg'),
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//
//                     ),
//                   ),
//                   SizedBox(height: 7,),
//                   GestureDetector(
//                     onTap: () {
//                       cubit.imageindex1 = 6;
//                     },
//                     child: Container(
//                       width: double.infinity,
//                       height: 50,
//                       decoration: BoxDecoration(
//                         color: Color.fromRGBO(135, 233, 151, 1),
//                         borderRadius: BorderRadius.circular(30),
//
//                       ),
//
//                       child: Padding(
//                         padding: const EdgeInsets.all(5.0),
//                         child: Row(
//                           children: [
//                             SizedBox(width: 5,),
//                             Text('Liverpoll',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(width: 190,),
//                             CircleAvatar(
//                               backgroundColor: Colors.white,
//                               radius: 30,
//                               child: Container(
//                                 height: 30,
//                                 width: 30,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                     image: AssetImage(
//                                         'assets/images/liverLogo.jpeg'),
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//
//                     ),
//                   ),
//                   SizedBox(height: 7,),
//                   GestureDetector(
//                     onTap: () {
//                       cubit.imageindex1 = 7;
//                     },
//                     child: Container(
//                       width: double.infinity,
//                       height: 50,
//                       decoration: BoxDecoration(
//                         color: Color.fromRGBO(135, 233, 151, 1),
//                         borderRadius: BorderRadius.circular(30),
//
//                       ),
//
//                       child: Padding(
//                         padding: const EdgeInsets.all(5.0),
//                         child: Row(
//                           children: [
//                             SizedBox(width: 5,),
//                             Text('Liverpoll',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(width: 190,),
//                             CircleAvatar(
//                               backgroundColor: Colors.white,
//                               radius: 30,
//                               child: Container(
//                                 height: 30,
//                                 width: 30,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                     image: AssetImage(
//                                         'assets/images/liverLogo.jpeg'),
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//
//                     ),
//                   ),
//                   SizedBox(height: 7,),
//                   GestureDetector(
//                     onTap: () {
//                       cubit.imageindex1 = 8;
//                     },
//                     child: Container(
//                       width: double.infinity,
//                       height: 50,
//                       decoration: BoxDecoration(
//                         color: Color.fromRGBO(135, 233, 151, 1),
//                         borderRadius: BorderRadius.circular(30),
//
//                       ),
//
//                       child: Padding(
//                         padding: const EdgeInsets.all(5.0),
//                         child: Row(
//                           children: [
//                             SizedBox(width: 5,),
//                             Text('Liverpoll',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(width: 190,),
//                             CircleAvatar(
//                               backgroundColor: Colors.white,
//                               radius: 30,
//                               child: Container(
//                                 height: 30,
//                                 width: 30,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                     image: AssetImage(
//                                         'assets/images/liverLogo.jpeg'),
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//
//                     ),
//                   ),
//                   SizedBox(height: 7,),
//                   GestureDetector(
//                     onTap: () {
//                       cubit.imageindex1 = 9;
//                     },
//                     child: Container(
//                       width: double.infinity,
//                       height: 50,
//                       decoration: BoxDecoration(
//                         color: Color.fromRGBO(135, 233, 151, 1),
//                         borderRadius: BorderRadius.circular(30),
//
//                       ),
//
//                       child: Padding(
//                         padding: const EdgeInsets.all(5.0),
//                         child: Row(
//                           children: [
//                             SizedBox(width: 5,),
//                             Text('Liverpoll',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(width: 190,),
//                             CircleAvatar(
//                               backgroundColor: Colors.white,
//                               radius: 30,
//                               child: Container(
//                                 height: 30,
//                                 width: 30,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                     image: AssetImage(
//                                         'assets/images/liverLogo.jpeg'),
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//
//                     ),
//                   ),
//                   SizedBox(height: 7,),
//                   GestureDetector(
//                     onTap: () {
//                       cubit.imageindex1 = 10;
//                     },
//                     child: Container(
//                       width: double.infinity,
//                       height: 50,
//                       decoration: BoxDecoration(
//                         color: Color.fromRGBO(135, 233, 151, 1),
//                         borderRadius: BorderRadius.circular(30),
//
//                       ),
//
//                       child: Padding(
//                         padding: const EdgeInsets.all(5.0),
//                         child: Row(
//                           children: [
//                             SizedBox(width: 5,),
//                             Text('Liverpoll',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(width: 190,),
//                             CircleAvatar(
//                               backgroundColor: Colors.white,
//                               radius: 30,
//                               child: Container(
//                                 height: 30,
//                                 width: 30,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                     image: AssetImage(
//                                         'assets/images/liverLogo.jpeg'),
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//
//                     ),
//                   ),
//                   SizedBox(height: 7,),
//                   GestureDetector(
//                     onTap: () {
//                       cubit.imageindex1 = 11;
//                     },
//                     child: Container(
//                       width: double.infinity,
//                       height: 50,
//                       decoration: BoxDecoration(
//                         color: Color.fromRGBO(135, 233, 151, 1),
//                         borderRadius: BorderRadius.circular(30),
//
//                       ),
//
//                       child: Padding(
//                         padding: const EdgeInsets.all(5.0),
//                         child: Row(
//                           children: [
//                             SizedBox(width: 5,),
//                             Text('Liverpoll',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(width: 190,),
//                             CircleAvatar(
//                               backgroundColor: Colors.white,
//                               radius: 30,
//                               child: Container(
//                                 height: 30,
//                                 width: 30,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                     image: AssetImage(
//                                         'assets/images/liverLogo.jpeg'),
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//
//                     ),
//                   ),
//                   SizedBox(height: 7,),
//                   GestureDetector(
//                     onTap: () {
//                       cubit.imageindex1= 12;
//                     },
//                     child: Container(
//                       width: double.infinity,
//                       height: 50,
//                       decoration: BoxDecoration(
//                         color: Color.fromRGBO(135, 233, 151, 1),
//                         borderRadius: BorderRadius.circular(30),
//
//                       ),
//
//                       child: Padding(
//                         padding: const EdgeInsets.all(5.0),
//                         child: Row(
//                           children: [
//                             SizedBox(width: 5,),
//                             Text('Liverpoll',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(width: 190,),
//                             CircleAvatar(
//                               backgroundColor: Colors.white,
//                               radius: 30,
//                               child: Container(
//                                 height: 30,
//                                 width: 30,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                     image: AssetImage(
//                                         'assets/images/liverLogo.jpeg'),
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//
//                     ),
//                   ),
//                   SizedBox(height: 7,),
//                   GestureDetector(
//                     onTap: () {
//                       cubit.imageindex1 = 13;
//                     },
//                     child: Container(
//                       width: double.infinity,
//                       height: 50,
//                       decoration: BoxDecoration(
//                         color: Color.fromRGBO(135, 233, 151, 1),
//                         borderRadius: BorderRadius.circular(30),
//
//                       ),
//
//                       child: Padding(
//                         padding: const EdgeInsets.all(5.0),
//                         child: Row(
//                           children: [
//                             SizedBox(width: 5,),
//                             Text('Liverpoll',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(width: 190,),
//                             CircleAvatar(
//                               backgroundColor: Colors.white,
//                               radius: 30,
//                               child: Container(
//                                 height: 30,
//                                 width: 30,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                     image: AssetImage(
//                                         'assets/images/liverLogo.jpeg'),
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//
//                     ),
//                   ),
//                   SizedBox(height: 7,),
//                   GestureDetector(
//                     onTap: () {
//                       cubit.imageindex1 = 14;
//                     },
//                     child: Container(
//                       width: double.infinity,
//                       height: 50,
//                       decoration: BoxDecoration(
//                         color: Color.fromRGBO(135, 233, 151, 1),
//                         borderRadius: BorderRadius.circular(30),
//
//                       ),
//
//                       child: Padding(
//                         padding: const EdgeInsets.all(5.0),
//                         child: Row(
//                           children: [
//                             SizedBox(width: 5,),
//                             Text('Liverpoll',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(width: 190,),
//                             CircleAvatar(
//                               backgroundColor: Colors.white,
//                               radius: 30,
//                               child: Container(
//                                 height: 30,
//                                 width: 30,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                     image: AssetImage(
//                                         'assets/images/liverLogo.jpeg'),
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//
//                     ),
//                   ),
//                   SizedBox(height: 7,),
//                   GestureDetector(
//                     onTap: () {
//                       cubit.imageindex1 = 15;
//                     },
//                     child: Container(
//                       width: double.infinity,
//                       height: 50,
//                       decoration: BoxDecoration(
//                         color: Color.fromRGBO(135, 233, 151, 1),
//                         borderRadius: BorderRadius.circular(30),
//
//                       ),
//
//                       child: Padding(
//                         padding: const EdgeInsets.all(5.0),
//                         child: Row(
//                           children: [
//                             SizedBox(width: 5,),
//                             Text('Liverpoll',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(width: 190,),
//                             CircleAvatar(
//                               backgroundColor: Colors.white,
//                               radius: 30,
//                               child: Container(
//                                 height: 30,
//                                 width: 30,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                     image: AssetImage(
//                                         'assets/images/liverLogo.jpeg'),
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//
//                     ),
//                   ),
//                   SizedBox(height: 7,),
//                   GestureDetector(
//                     onTap: () {
//                       cubit.imageindex1 = 16;
//                     },
//                     child: Container(
//                       width: double.infinity,
//                       height: 50,
//                       decoration: BoxDecoration(
//                         color: Color.fromRGBO(135, 233, 151, 1),
//                         borderRadius: BorderRadius.circular(30),
//
//                       ),
//
//                       child: Padding(
//                         padding: const EdgeInsets.all(5.0),
//                         child: Row(
//                           children: [
//                             SizedBox(width: 5,),
//                             Text('Liverpoll',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(width: 190,),
//                             CircleAvatar(
//                               backgroundColor: Colors.white,
//                               radius: 30,
//                               child: Container(
//                                 height: 30,
//                                 width: 30,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                     image: AssetImage(
//                                         'assets/images/liverLogo.jpeg'),
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//
//                     ),
//                   ),
//                   SizedBox(height: 7,),
//                   GestureDetector(
//                     onTap: () {
//                       cubit.imageindex1 = 17;
//                     },
//                     child: Container(
//                       width: double.infinity,
//                       height: 50,
//                       decoration: BoxDecoration(
//                         color: Color.fromRGBO(135, 233, 151, 1),
//                         borderRadius: BorderRadius.circular(30),
//
//                       ),
//
//                       child: Padding(
//                         padding: const EdgeInsets.all(5.0),
//                         child: Row(
//                           children: [
//                             SizedBox(width: 5,),
//                             Text('Liverpoll',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(width: 190,),
//                             CircleAvatar(
//                               backgroundColor: Colors.white,
//                               radius: 30,
//                               child: Container(
//                                 height: 30,
//                                 width: 30,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                     image: AssetImage(
//                                         'assets/images/liverLogo.jpeg'),
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//
//                     ),
//                   ),
//                   SizedBox(height: 7,),
//                   GestureDetector(
//                     onTap: () {
//                       cubit.imageindex1 = 18;
//                     },
//                     child: Container(
//                       width: double.infinity,
//                       height: 50,
//                       decoration: BoxDecoration(
//                         color: Color.fromRGBO(135, 233, 151, 1),
//                         borderRadius: BorderRadius.circular(30),
//
//                       ),
//
//                       child: Padding(
//                         padding: const EdgeInsets.all(5.0),
//                         child: Row(
//                           children: [
//                             SizedBox(width: 5,),
//                             Text('Liverpoll',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(width: 190,),
//                             CircleAvatar(
//                               backgroundColor: Colors.white,
//                               radius: 30,
//                               child: Container(
//                                 height: 30,
//                                 width: 30,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                     image: AssetImage(
//                                         'assets/images/liverLogo.jpeg'),
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//
//                     ),
//                   ),
//                   SizedBox(height: 7,),
//                   GestureDetector(
//                     onTap: () {
//                       cubit.imageindex1 = 19;
//                     },
//                     child: Container(
//                       width: double.infinity,
//                       height: 50,
//                       decoration: BoxDecoration(
//                         color: Color.fromRGBO(135, 233, 151, 1),
//                         borderRadius: BorderRadius.circular(30),
//
//                       ),
//
//                       child: Padding(
//                         padding: const EdgeInsets.all(5.0),
//                         child: Row(
//                           children: [
//                             SizedBox(width: 5,),
//                             Text('Liverpoll',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(width: 190,),
//                             CircleAvatar(
//                               backgroundColor: Colors.white,
//                               radius: 30,
//                               child: Container(
//                                 height: 30,
//                                 width: 30,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                     image: AssetImage(
//                                         'assets/images/liverLogo.jpeg'),
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//
//                     ),
//                   ),
//
//
//
//                 ],*/
//               ),
// */
//             ),
//           );
//         }
//     );
//   }
// }