import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:meta/meta.dart';
import 'package:premleague/modules/premScreens/LatestScreens/LatestScreen.dart';
import 'package:premleague/modules/premScreens/NewsScreen.dart';
import 'package:premleague/modules/premScreens/StatsScreens/StatsScreen.dart';
import 'package:premleague/modules/premScreens/settingsScreen.dart';

import '../../../../../model/CardsModel.dart';
import '../../../../../model/MatchesResultsModel.dart';
import '../../../../../model/MatchsTimeModel.dart';
import '../../../../../model/PlayerAssistsModel.dart';
import '../../../../../model/ScorersModel.dart';
import '../../../../../model/StandingsModel.dart';
import '../../../../../shared/network/endPoints.dart';
import '../../../../../shared/network/remote/DioHelper.dart';

part 'prem_cubit_state.dart';

class PremCubitCubit extends Cubit<PremCubitState> {
  PremCubitCubit() : super(PremCubitInitial());
  static PremCubitCubit get(context) => BlocProvider.of(context);
  int currentIndex=0;
  int videoIndex=0;
  int imageindex=0;
  int imageindex1=0;
  bool isLiverSelected=true;

  List<BottomNavigationBarItem>bottomItems=[
    BottomNavigationBarItem(
      icon: Icon(Icons.article_outlined),
      label: 'Latest'
      ),
/*BottomNavigationBarItem(
      icon: Icon(Icons.zoom_in_rounded),
      label: 'PL',
       ),  */ 
    BottomNavigationBarItem(
      icon: Icon(Icons.zoom_in_rounded),
      label: 'teamNews',
     // backgroundColor: Colors.black,
      ),
    BottomNavigationBarItem(
      icon: Icon(Icons.assessment_outlined),
      label: 'Stats'
      ),
    // BottomNavigationBarItem(
    //   icon: Icon(Icons.settings),
    //   label: 'Settings'
    //   )
    //
  ];
  List<Widget>Screens=[
    test(),
    Newss(),
    Stats(),
   // settingss(),
  ];
  void ChangeBottomNavBar (int index){
    currentIndex=index;
    emit(PremBottomNavBarState());
  }
 /*  List favteam =[
    'Arsenal',
    'Liverpoll',
    'Man city',
     'Man united',
     'Chelsea',
  ];
  List<Image> favteamimage=[
    Image(image: AssetImage('assets/images/arsenal.jpeg'),),
    Image(image: AssetImage('assets/images/liverLogo.jpeg'),),
    Image(image: AssetImage('assets/images/mancity.jpeg'),),
    Image(image: AssetImage('assets/images/unitedlogo.jpeg'),),
    Image(image: AssetImage('assets/images/chelsea.jpeg'),),

  ];*/
  List<Map>Favteam=[
    {
    'image':'assets/images/arsenal.jpeg',
    'teamName': 'Arsenal',
    },
    {
      'image':'assets/images/liverLogo.jpeg',
      'teamName': 'Liverpoll',
    },
    {
      'image':'assets/images/mancity.jpeg',
      'teamName': 'Man city',
    },
    {
      'image':'assets/images/unitedlogo.jpeg',
      'teamName': 'Man united',
    },
    {
      'image':'assets/images/chelsea.jpeg',
      'teamName': 'Chelsea',
    },
  ];

  void changefavteam(index){
    imageindex=index;
    emit(changefavteamimageState());
  }
 /* List<Image> favteamimage1=[
    Image(image: AssetImage('assets/images/arsenal.jpeg'),),
    Image(image: AssetImage('assets/images/liverLogo.jpeg'),),
    Image(image: AssetImage('assets/images/mancity.jpeg'),),
    Image(image: AssetImage('assets/images/unitedlogo.jpeg'),),
    Image(image: AssetImage('assets/images/chelsea.jpeg'),),

  ];
  void changefavteamimage1(index){
    imageindex1=index;
    emit(changefavteamimageState1());
  }

  */
  /* List <Map>teamsList =[
    {
      'image':'assets/images/news2.jpg',
      'text':'Arsenal',
    },
    {
      'image':'assets/images/news1.jpg',
      'text':'Liverpoll',
    },
    {
      'image':'assets/images/ph9.jpg',
      'text':'Man City',
    },
    {
      'image':'assets/images/ph5.jpg',
      'text':'Man United',
    },
    {
      'image':'assets/images/ph5.jpg',
      'text':'Chelsea',
    },
  ];*/
  // Widget BuildTeamItem(Map Favteam, context) => Container(
  //   child: GestureDetector(
  //     onTap: () {
  //       changefavteam(imageindex);
  //     },
  //     child: Container(
  //       width: double.infinity,
  //       height: 50,
  //       decoration: BoxDecoration(
  //         color: HexColor('#DA20A9'),
  //         borderRadius: BorderRadius.circular(30),
  //       ),
  //       child: Padding(
  //         padding: const EdgeInsets.all(5.0),
  //         child: Row(
  //           children: [
  //             SizedBox(width: 5),
  //             Text(
  //               '${Favteam['teamName']}',
  //               style: TextStyle(
  //                 fontSize: 20,
  //                 fontWeight: FontWeight.bold,
  //               ),
  //             ),
  //             SizedBox(
  //               width: 200,
  //             ),
  //             CircleAvatar(
  //               backgroundColor: Colors.white,
  //               radius: 30,
  //               child: Container(
  //                 height: 30,
  //                 width: 30,
  //                 decoration: BoxDecoration(
  //                   image: DecorationImage(
  //                     image: AssetImage('${Favteam['image']}'),
  //                     fit: BoxFit.cover,
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   ),
  // );

  List <Map>newsList = [
    {
      'image': 'assets/images/bk11.jpg',
      'title': 'title1',
      'text': 'ssdfgdjghkjhldjs',
    },
    {
      'image': 'assets/images/img1.jpg',
      'title': 'title2',
      'text': 'ssdfgdjghkjhldjs',
    },
    {
      'image': 'assets/images/ph9.jpg',
      'title': 'title3',
      'text': 'ssdfgdjghkjhldjs',
    },
    {
      'image': 'assets/images/img3.jpg',
      'title': 'title4',
      'text': 'ssdfgdjghkjhldjs',
    },
  ];
  List <Map>VideosList = [
    {
      'image': 'https://premierleaguenewsnow.com/wp-content/uploads/2020/11/liverpool-vs-leicester-city-preview.jpg',
      'title': 'Leicester City 0 Liverpool 3 | Premier League Highlights',
      'video': 'https://youtu.be/EgoSjMej_Oc?list=PLQ_voP4Q3cfeT5QqIr7RA7BEc2zGMn0nl',
    },
    {
      'image': 'https://e3.365dm.com/20/04/2048x1152/skynews-football-premier-league_4976711.jpg?20200425122605',
      'title': 'title2',
      'video': 'https://www.youtube.com/watch?v=MdWTb-I8-jo',
    },
    {
      'image': 'https://tse2.mm.bing.net/th?id=OIP.La2f8s_d3ggiNt5ca_9BCAHaDt&pid=Api&P=0',
      'title': 'title3',
      'video': 'https://www.youtube.com/watch?v=Yx1MTag5uZg',
    },
    {
      'image': 'https://tse2.mm.bing.net/th?id=OIP.La2f8s_d3ggiNt5ca_9BCAHaDt&pid=Api&P=0',
      'title': 'title4',
      'video': 'https://www.youtube.com/watch?v=Yx1MTag5uZg',
    },
    {
      'image': 'https://tse2.mm.bing.net/th?id=OIP.La2f8s_d3ggiNt5ca_9BCAHaDt&pid=Api&P=0',
      'title': 'title4',
      'video': 'https://www.youtube.com/watch?v=Yx1MTag5uZg',
    },
  ];
  void ChangeVideos (int index){
    videoIndex=index;
    emit(ChangeVideosState());
  }

  List<MatchTimeModel>matchsTime=[];
  void getMatchesTimeData(){
    emit(MatchsTimeLoadingState());
    //  ss.getAllScorers();
    DioHelper2.GetData(
      EndPoint: MATCHSTIME,
    ).then((value) {
      if(value.statusCode==200){

        List Json = value.data['response'];

        for (var element in Json) {
          matchsTime.add(MatchTimeModel.fromJson(element));
        }
        for(var ss in matchsTime) {
          print(ss?.date.toString());
        }
        emit(MatchsTimeSuccessState(matchsTime));
      }}).catchError((onError){
      print(onError.toString());
      emit(MatchsTimeErrorState());
    });
  }

  List<MatchesResultsModel>matchesResults=[];
  void getMatchesResultsData(){
    emit(MatchesResultsLoadingState());
    //  ss.getAllScorers();
    DioHelper2.GetData(
      EndPoint: MATCHESRESULTS,
    ).then((value) {
      if(value.statusCode==200){

        List Json = value.data['response'];

        for (var element in Json) {
          matchesResults.add(MatchesResultsModel.fromJson(element));
        }
        emit(MatchesResultsSuccessState(matchesResults));
      }}).catchError((onError){
      print(onError.toString());
      emit(MatchesResultsErrorState());
    });
  }

  List<StandingsModel>standings=[];
  void getStandingsData(){
    emit(premStatesLoadingState());
    //  ss.getAllScorers();
    DioHelper.GetData(
      EndPoint: STANDINGS,
    ).then((value) {
      if(value.statusCode==200){
        // var Json= json.decode(jsonEncode(value.data));

        List Json = value.data['standings'][0]['table'];

        for (var element in Json) {
          standings.add(StandingsModel.fromJson(element));

        }
        /* for(var scorer in standings) {
          print(scorer.TeamName);
        }*/
        emit(premStatesSuccessState(standings));
      }}).catchError((onError){
      print(onError.toString());
      emit(premStatesErrorState());
    });
  }

  List<CardsModel>cards=[];
  void getCardsData(){
    emit(CardsLoadingState());
    //  ss.getAllScorers();
    DioHelper2.GetData(
      EndPoint: CARDS,
    ).then((value) {
      if(value.statusCode==200){

        List Json = value.data['response'];

        for (var element in Json) {
          cards.add(CardsModel.fromJson(element));

        }
        // for(var card in cards) {
        //   print(card.player?.name);
        // }
        emit(CardsSuccessState(cards));
      }}).catchError((onError){
      print(onError.toString());
      emit(CardsErrorState());
    });
  }


  List<ScorersModel>scorers=[];
  void getScorrersData(){
    emit(ScorersLoadingState());
    //  ss.getAllScorers();
    DioHelper.GetData(
      EndPoint: SCORERS,
    ).then((value) {
      if(value.statusCode==200){
        List Json = value.data['scorers'];
        for (var element in Json) {
          scorers.add(ScorersModel.fromJson(element));
        }
        emit(ScorersSuccessState(scorers));
      }}).catchError((onError){
      print(onError.toString());
      emit(ScorersStatesErrorState());
    });
  }

  List<assistsModel>assists=[];
  void getAssistsData(){
    emit(PlayerAssistLoadingState());
    //  ss.getAllScorers();
    DioHelper2.GetData(
      EndPoint: ASSISTS,
    ).then((value) {
      if(value.statusCode==200){
        List Json = value.data['response'];
        for (var element in Json) {
          assists.add(assistsModel.fromJson(element));
        }
        // for(var scorer in assists) {
        //   print(scorer.player?.name);
        // }

        emit(PlayerAssistSuccessState(assists));
      }}).catchError((onError){
      print(onError.toString());
      emit(PlayerAssistErrorState());
    });
  }
}
