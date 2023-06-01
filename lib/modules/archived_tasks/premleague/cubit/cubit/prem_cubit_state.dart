part of '../../../../../modules/archived_tasks/premleague/cubit/cubit/prem_cubit_cubit.dart';

@immutable
abstract class PremCubitState {}

class PremCubitInitial extends PremCubitState {}
class PremBottomNavBarState extends PremCubitState{}
class changefavteamimageState extends PremCubitState{}
class changefavteamimageState1 extends PremCubitState{}
class ChangeVideosState extends PremCubitState{}
/*---------------------------------------------*/
class MatchsTimeLoadingState extends PremCubitState {}
class MatchsTimeSuccessState extends PremCubitState {
  List <MatchTimeModel> matchsTime;
  MatchsTimeSuccessState(this.matchsTime);
}
class MatchsTimeErrorState extends PremCubitState {}
/*----------------------------------------------*/
class MatchesResultsLoadingState extends PremCubitState {}
class MatchesResultsSuccessState extends PremCubitState {
  List <MatchesResultsModel> matchsResults;
  MatchesResultsSuccessState(this.matchsResults);
}
class MatchesResultsErrorState extends PremCubitState {}
/*---------------------------------------------------*/

class premStatesLoadingState extends PremCubitState {}

class premStatesSuccessState extends PremCubitState {
  List <dynamic> standings;
  premStatesSuccessState(this.standings);
}
class premStatesErrorState extends PremCubitState {}
/*-------------------------------------------------*/
class CardsLoadingState extends PremCubitState {}
class CardsSuccessState extends PremCubitState {
  List <dynamic> cards;
  CardsSuccessState(this.cards);
}
class CardsErrorState extends PremCubitState {}
/*------------------------------------------------*/
class ScorersScreenInitial extends PremCubitState {}

class ScorersLoadingState extends PremCubitState {}

class ScorersSuccessState extends PremCubitState {
  List <dynamic> scorers;
  ScorersSuccessState(this.scorers);
}
class ScorersStatesErrorState extends PremCubitState {}
/*--------------------------------------------------*/
class PlayerAssistLoadingState extends PremCubitState {}
class PlayerAssistSuccessState extends PremCubitState {
  List <dynamic> assists;
  PlayerAssistSuccessState(this.assists);
}
class PlayerAssistErrorState extends PremCubitState {}