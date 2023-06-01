import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:premleague/modules/premScreens/SelectFavTeamScreen.dart';
import 'package:premleague/modules/premScreens/video.dart';
import '../archived_tasks/premleague/cubit/cubit/prem_cubit_cubit.dart';
import '../../shared/component/components.dart';
import '../../shared/component/list_components.dart';

class settingss extends StatelessWidget {
  const settingss({super.key});

  @override
  Widget build(BuildContext context) {
    var ScaffoldKey = GlobalKey<ScaffoldState>();
    var formKey = GlobalKey<FormState>();
    bool isBottomSheetShown = false;
   // bool isSelcted = false;
    // late int imageindex=0;
    return BlocConsumer<PremCubitCubit, PremCubitState>(
      listener: (context, state) {},
      builder: (context, state) {
        PremCubitCubit cubit = PremCubitCubit.get(context);
        List<Map> Favteam= PremCubitCubit.get(context).Favteam;
        return Scaffold(

          key: ScaffoldKey,
          appBar: AppBar(
            title: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Settings',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      width: double.infinity,
                      height: 250,
                      child: Column(
                        children: [
                          Text(
                            'Change App Mode',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          /* IconButton(
                            onPressed: (){
                              appcubit.get(context).changeAppMode();
                             },
                           icon: Icon(Icons.brightness_4_outlined,
                             size: 50,
                            ),),*/
                          Container(
                            height: 100,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.topRight,
                                  colors: [Colors.orange, Colors.red]),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: GestureDetector(
                              onTap: () {
                              },
                              child: Container(
                                width: 250,
                                height: 100,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.topRight,
                                      colors: [
                                        Colors.orange,
                                        Colors.grey,
                                        Colors.red
                                      ]),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                            /*
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius: BorderRadius.circular(15),

                                      ),
                                      width: 150,
                                      height: 100,

                                      child: Center(
                                        child: Column(
                                          children: [ ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 15,),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius: BorderRadius.circular(15),

                                      ),
                                      width: 150,
                                      height: 100,

                                      child: Center(
                                        child: Column(
                                          children: [    ],
                                        ),
                                      ),
                                    ),
                                 */
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton.large(
            backgroundColor: Colors.white,

            onPressed: () {
              if (isBottomSheetShown) {

              //  Navigator.pop(context);
              //  isBottomSheetShown = false;
               // cubit.changefavteam(cubit.imageindex);
              } else {
                ScaffoldKey.currentState
                    ?.showBottomSheet(
                      (context) => SingleChildScrollView(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          width: double.infinity,
                          height: 500,
                          // color: Colors.white,

                          child:
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Container(
                                      height: 20,
                                      child: Text(
                                        'Select your best team',
                                        style:
                                            Theme.of(context).textTheme.bodyLarge,
                                      )),
                                ),
                             /*  ListView.separated(
                                  //   scrollDirection: Axis.horizontal,
                                  // physics: BouncingScrollPhysics(),
                                  itemBuilder: (context, index) =>matchstime(context),
                                    //  cubit.BuildTeamItem(Favteam[index], context),
                                  separatorBuilder: (context, index) => SizedBox(
                                    height:15,
                                  ),
                                  itemCount: 5,
                                ),*/
                                /*
                    Expanded(child:
                    GestureDetector(
                        onTap: () {
                          cubit.imageindex=0;
                        },
                        child: Container(
                          width: double.infinity,
                          height: 25,
                          decoration: BoxDecoration(
                            color:HexColor('#DA20A9'),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                SizedBox(width: 5),
                                 Text('Arsenal',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                                 SizedBox(width: 200,),
                                 CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 30,
                                  child:  Container(
                                    height: 30,
                                    width: 30,
                                  decoration: BoxDecoration(
                                   image: DecorationImage(
                                  image: AssetImage('assets/images/arsenal.jpeg'),
                                     fit: BoxFit.cover,
            ),
          ),
                                  ),
                                 ),
                              ],
                            ),
                          ),
                        ),
                    ),
                    ),
                    */
                                // SizedBox(height: 5,),
                                /*    Expanded(child:
                        GestureDetector(
                onTap: () {
                  cubit.imageindex=1;
                  cubit.isLiverSelected=true;
                },
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            color:HexColor('#DA20A9'),
                            borderRadius: BorderRadius.circular(30),

                          ),

                     child:Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                SizedBox(width: 5,),
                                 Text('Liverpoll',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                                 SizedBox(width: 190,),
                                 CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 30,
                                  child:  Container(
                                    height: 30,
                                    width: 30,
                                  decoration: BoxDecoration(
                                   image: DecorationImage(
                                  image: AssetImage('assets/images/liverLogo.jpeg'),
                                     fit: BoxFit.cover,
            ),
          ),
                                  ),
                                 ),
                              ],
                            ),
                          ) ,

                        ),
                    ),
                    ),
                    SizedBox(height: 5,),
                    Expanded(child:
                    GestureDetector(
                            onTap: () {
                  cubit.imageindex=2;
                  cubit.isLiverSelected=false;
                },

                        child: Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            color:HexColor('#DA20A9'),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  SizedBox(width: 5,),
                                   Text('Man City',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                                   SizedBox(width: 190,),
                                   CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 30,
                                    child:  Container(
                                      height: 30,
                                      width: 30,
                                    decoration: BoxDecoration(
                                     image: DecorationImage(
                                    image: AssetImage('assets/images/mancity.jpeg'),
                                       fit: BoxFit.cover,
                                  ),
                                ),
                                    ),
                                   ),
                                ],
                              ),
                            ),
                        ),
                    ),
                    ),
                    SizedBox(height: 5,),
                        Expanded(child:
                        GestureDetector(
                          onTap: () {
                            cubit.imageindex=3;
                          },

                          child: Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color:HexColor('#DA20A9'),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  SizedBox(width: 5,),
                                  Text('Man United',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 168,),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 30,
                                    child:  Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage('assets/images/unitedlogo.jpeg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        ),
                    SizedBox(height:5),
                        Expanded(child:
                        GestureDetector(
                          onTap: () {
                            cubit.imageindex=4;
                          },

                          child: Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color:HexColor('#DA20A9'),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  SizedBox(width: 5,),
                                  Text('Chelsea',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 200,),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 30,
                                    child:  Container(
                                      height: 28,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage('assets/images/chelsea.jpeg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        ),*/
                              /*  defaultTextButton(
                                    function: () {
                                      NavigateTo(context, favTeamScreen);
                                    },
                                    text: 'All Teams'),*/
                              ],
                            ),
                          ),

                        ),
                      ),
                    )
                    .closed
                    .then((value) {
                  isBottomSheetShown = false;
                 // cubit.changefavteam(cubit.imageindex);
                });
                isBottomSheetShown = true;
              }
              /*ScaffoldKey.currentState!.showBottomSheet(
              (context) =>Container(
                color: Colors.white,
                child: Text('data') ),
              elevation: 20,
              ).closed.then((value) {
                 // cubit.ChangeBottomSheetState(isShow: false, icon: Icons.edit,);
              });
           // cubit.ChangeBottomSheetState(isShow: true, icon: Icons.add,);
*/
            },

            child: Container(
              height: 50,
             // color: Colors.red,
              child: Image(image: AssetImage('assets/images/bk11.jpg'),)
              //  child: Image(image:AssetImage('${cubit.Favteam["image"]}'),)
            ),
            //  Image(image: AssetImage('assets/images/liverLogo.jpeg')))  ,//Icon(cubit.fabIcon),,

/*if(cubit.isBottomSheetShown){
              if(formKey.currentState!.validate()){
               cubit.insertToDatabase(
                  title: titleControler.text,
                   time: timeControler.text,
                    date: DateControler.text);
           /*  cubit. insertToDatabase (
                title: titleControler.text,
                time: timeControler.text,
                date: DateControler.text,
              ).then((value) {
           // cubit.getDataFromDatabase(database);
             Navigator.pop(context);
               // cubit.tasks=value;
              /*setState(() {
                isBottomSheetShown=false;
                fabIcon=Icons.edit;

                print('database opened');
              });*/
              });*/


              }
            }
            else{*/
          ),
        );
      },
    );
  }
}
