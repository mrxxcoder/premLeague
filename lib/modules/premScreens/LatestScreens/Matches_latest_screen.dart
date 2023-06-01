import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:premleague/modules/premScreens/teamsNews/LatestScreens/MatchDay.dart';
import 'package:premleague/modules/premScreens/teamsNews/LatestScreens/MatchDayResult.dart';
import 'package:premleague/modules/premScreens/video.dart';
import 'package:premleague/shared/component/components.dart';
import '../../../model/MatchesResultsModel.dart';
import '../../../model/MatchsTimeModel.dart';
import '../../../shared/component/list_components.dart';
import '../../archived_tasks/premleague/cubit/cubit/prem_cubit_cubit.dart';
import '../NewsScreen.dart';
import '../StatsScreens/StatsScreen.dart';
import '../home_page.dart';

class LatestMatches extends StatefulWidget {
  const LatestMatches({super.key});

  @override
  State<LatestMatches> createState() => _LatestState();
}

class _LatestState extends State<LatestMatches> {
  @override
  Widget build(BuildContext context) {
    List<dynamic> list = [];
    final CarouselController carouselController = CarouselController();
    int currentIndex = 0;
    return
      // BlocProvider(
      // create: (context) => LatestScreenCubit()..matchesResults..getMatchesTimeData(),
      // child:
      BlocConsumer<PremCubitCubit, PremCubitState>(
        listener: (context, state) {},
        builder: (context, state) {
          List <MatchesResultsModel> matchesResultList =PremCubitCubit.get(context).matchesResults;
          List <MatchTimeModel> matchesTime =PremCubitCubit.get(context).matchsTime;
          return Scaffold(
            backgroundColor:Colors.transparent,
            body: Stack(
                children: [
              Padding(
                padding: const EdgeInsets.all(0),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                //mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15,left: 5,bottom: 15),
                                    child: Text('Match week Result ',
                                      style: Theme.of(context).textTheme.bodyLarge,
                                    ),
                                  ),
                                  Container(

                                    height: 150,
                                    //width: double.infinity,
                                    child: ListView.separated(
                                      scrollDirection: Axis.horizontal,
                                        physics: BouncingScrollPhysics(),
                                        itemBuilder: (context ,index)=>matchsResult(matchesResultList[index+1],context),
                                        separatorBuilder: (context, index) => SizedBox(width: 15,),
                                        itemCount: 6),
                                    // ListView.separated(
                                    //     physics: BouncingScrollPhysics(),
                                    //     itemBuilder: (context ,index)=>matchsResult(context),
                                    //     separatorBuilder: (context, index) => myDevider(),
                                    //     itemCount: 6),
                                  ),
                              // Padding(
                              //   padding: const EdgeInsets.all(15.0),
                              //   child: Container(
                              //     height: 35,
                              //     width: 80,
                              //     decoration: BoxDecoration(
                              //         borderRadius: BorderRadius.circular(20),
                              //         color: HexColor('#570861')
                              //     ),
                              //     child: defaultTextButton(function: (){
                              //       NavigateTo(context, MatchDay());
                              //     }, text: 'See All',
                              //     ),
                              //   ),
                              // ),
                                ],
                              ),
                            ),
                          ),

                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                // gradient: LinearGradient(
                                //     begin: Alignment.topLeft,
                                //     end: Alignment.topRight,
                                //     colors: [
                                //       HexColor('#ef74bc'),
                                //       Colors.white70,
                                //     ]),
                                borderRadius: BorderRadius.circular(7),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                //mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                 Text(
                                      'Matchs Week time ',
                                      style: Theme.of(context).textTheme.bodyLarge,
                                    ),

                                   Container(
                                      height: 500,
                                      width: 380,
                                      child: ConditionalBuilder(
                                        condition: matchesTime.length > 0,
                                        builder: (context) =>  ListView.separated(
                                            physics: BouncingScrollPhysics(),
                                            itemBuilder: (context, index) =>
                                                matchstime(matchesTime[index],context),
                                            separatorBuilder: (context, index) =>
                                               SizedBox(height: 10),
                                            itemCount: 5),
                                        fallback: (context) =>
                                            Center(child: CircularProgressIndicator()),
                                      ),

                                    ),

                                 Container(
                                      height: 35,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: HexColor('#b14244')),
                                      child: defaultTextButton(
                                        function: () {
                                          NavigateTo(context, MatchDay());
                                        },
                                        text: 'See All',
                                      ),
                                    ),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                    ],
                  ),
                ),
              ),
            ]),
          );
        },
      );
    //);
  }
}
// Padding(
//   padding: const EdgeInsets.only(top: 45,left: 15),
//   child: Row(
//     crossAxisAlignment: CrossAxisAlignment.center,
//
//     children: [
//       Container(
//         child: CircleAvatar(
//           radius: 30,
//           child: Image.asset('assets/images/premlogo44.png',color:Color(0xFF17203A),),
//
//         ),
//       ),
//       SizedBox(width: 15,),
//       Column(
//         children: [
//           Text(
//             'Premier',
//             style: TextStyle(
//               color: Colors.grey[300],
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           Text(
//             'League',
//             style: TextStyle(
//               color: Colors.grey[300],
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ],
//       ),
//       Spacer(),
//       Padding(
//         padding: const EdgeInsets.only(left: 5.0,top: 10),
//         child: CircleAvatar(
//             radius: 28,
//             backgroundColor: Colors.white.withOpacity(.2),
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Image.asset('assets/images/cup1.png',
//
//                 height: 30,
//                 width: 30,
//               ),
//               //Icon(Icons.card_giftcard,size:25,color: Colors.grey[300],),
//             )),
//       ),
//       SizedBox(width: 10,),
//     ],
//   ),
// ),
// SizedBox(
//   height: 12,
// ),
// Padding(
//   padding: const EdgeInsets.symmetric(horizontal: 15.0),
//   child: Container(
//     width: double.infinity,
//     height: 60,
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Expanded(
//           child: GestureDetector(
//             onTap: (){
//               setState(() {
//                 navbar=1;
//                 print(navbar);
//               });
//             },
//             child: Container(
//
//
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 color: navbar == 1 ? Colors.purple : Colors.white.withOpacity(.3),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   children: [
//                     Icon(Icons.newspaper,size: 30,color:navbar == 1 ?Colors.grey[300]:Color(0xFF17203A),),
//                     SizedBox(width: 10,),
//                     Text('News',
//                       style: TextStyle(
//                         color: navbar == 1 ?Colors.grey[300]: Color(0xFF17203A),
//                         fontWeight: FontWeight.w500,
//                         fontSize: 20,
//                       ),),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//         SizedBox(width: 15,),
//         Expanded(
//           child: GestureDetector(
//             onTap: (){
//               setState(() {
//                 navbar=2;
//                 print(navbar);
//               });
//             },
//             child: Container(
//
//
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 color: navbar == 2 ? Colors.purple : Colors.white.withOpacity(.3),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   children: [
//                     Icon(Icons.newspaper,size: 30,color:navbar == 2 ?Colors.grey[300]:Color(0xFF17203A),),
//                     SizedBox(width: 10,),
//                     Text('News',
//                       style: TextStyle(
//                         color: navbar == 2 ?Colors.grey[300]: Color(0xFF17203A),
//                         fontWeight: FontWeight.w500,
//                         fontSize: 20,
//                       ),),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//
//
//       ],
//     ),
//   ),
// ),

// Padding(
//   padding: const EdgeInsets.only(left: 5.0, right: 5),
//   child: Column(children: [
//     Container(
//       decoration: BoxDecoration(
//         //  color: Colors.blueGrey,
//         gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.topRight,
//             colors: [
//               HexColor('#ef74bc'),
//               Colors.white70,
//             ]),
//       ),
//       height: 240,
//       child: InkWell(
//         onTap: () {
//           print(currentIndex);
//         },
//         child: Container(
//           height: 500,
//           child: CarouselSlider(
//             items: imageList
//                 .map(
//                   (item) => Image.asset(
//                     item['image_path'],
//                     fit: BoxFit.cover,
//                     width: double.infinity,
//
//                     //height: 100,
//                   ),
//                 )
//                 .toList(),
//             carouselController: carouselController,
//             options: CarouselOptions(
//               height: 230,
//               scrollPhysics:
//                   const BouncingScrollPhysics(),
//               autoPlay: true,
//               aspectRatio: 2,
//               viewportFraction: 1,
//               onPageChanged: (index, reason) {
//                 setState(() {
//                   currentIndex = index;
//                 });
//               },
//             ),
//           ),
//         ),
//       ),
//     ),
//   ]),
// ),
// SizedBox(
//   height: 3,
// ),
// //Container(child: myDevider(),),
// Padding(
//   padding: const EdgeInsets.all(7.0),
//   child: Container(
//     color: Colors.white,
//     child: Column(
//       children: [
//         Text(
//           'Latest News ',
//           style: Theme.of(context).textTheme.bodyLarge,
//         ),
//         Container(
//           height: 190,
//           //width: double.infinity,
//           decoration: BoxDecoration(
//               // color:  HexColor('#f0e4e4'),
//               // borderRadius: BorderRadius.circular(7),
//               ),
//           child: Container(
//             //height: 150,
//             child: ListView.separated(
//                 scrollDirection: Axis.horizontal,
//                 physics: BouncingScrollPhysics(),
//                 itemBuilder: (context, index) =>
//                     buildArticleItem(
//                         newslist[index], context),
//                 separatorBuilder: (context, index) =>
//                     SizedBox(
//                       width: 20,
//                     ),
//                 itemCount: newslist.length),
//           ),
//         ),
//       ],
//     ),
//   ),
// ),