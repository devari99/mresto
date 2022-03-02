import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:monresto/screen/sreensize.dart';
import 'package:monresto/clients/views/logic/auth.dart';
import 'package:provider/provider.dart';

import '../../../images_contants/images_use.dart';

class AppHome extends StatelessWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Consumer<Authentication>(
          builder: (BuildContext context, value, Widget? child) {
            if(value.state == 0){
              context.read<Authentication>().getPhoneNumber();
            }
            debugPrint('@@@@@@@@ ${value.response}');
            return Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(ImagesConstant.appHomeImg),
                ),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(35),
                            topLeft: Radius.circular(35))
                    ),
                    child: Stack(
                      children:  [
                        Positioned(
                          top: 40,
                          left: 70,
                          child: Center(
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Center(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          services(context, 'Restaurants', ImagesConstant.restaurantServiceCl),
                                          services(context, 'Marchés', ImagesConstant.marketServiceCli),
                                        ],
                                      ),
                                    ),
                                  ),
                                  services(context, 'Livraisons', ImagesConstant.deliveryServiceCli),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width - 56,
                                height: 56,
                                color: Colors.red[700],
                                child:  const Center(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 50),
                                      child: Text('Je Commande',
                                          style: TextStyle(color: Colors.white,
                                              fontSize: 19)),
                                    )),
                              ),
                              icons(context)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
    ));
  }

  Widget icons(BuildContext context) {
    var switchLabelPosition = false;
    var closeManually = false;
    var isDialOpen = ValueNotifier<bool>(false);
    var speedDialDirection = SpeedDialDirection.up;
    var childrenButtonSize = const Size(56.0, 56.0);
    return SpeedDial(
      activeBackgroundColor: Colors.red[700],
      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: IconThemeData(size: 22.0),
      icon: Icons.add,
      activeIcon: Icons.close,
      spacing: 3,
      openCloseDial: isDialOpen,
      childPadding: const EdgeInsets.all(5),
      spaceBetweenChildren: 4,
      buttonSize:
      const Size(56.0, 56.0),
      iconTheme: const IconThemeData(size: 22),
      labelTransitionBuilder: (widget, animation) => ScaleTransition(scale: animation,child: widget),
      childrenButtonSize: childrenButtonSize,
      visible: true,
      direction: speedDialDirection,
      switchLabelPosition: switchLabelPosition,
      closeManually: closeManually,
      renderOverlay: true,
      overlayColor: Colors.black,
      overlayOpacity: 0.5,
      onOpen: () => debugPrint('OPENING DIAL'),
      onClose: () => debugPrint('DIAL CLOSED'),
      useRotationAnimation: true,
      tooltip: 'Open Speed Dial',
      heroTag: 'speed-dial-hero-tag',
      foregroundColor: Colors.white,
      backgroundColor: Colors.red[700],
      isOpenOnStart: false,
      animationSpeed: 200,
      shape:  const RoundedRectangleBorder(),
      children: [
        SpeedDialChild(
          child: const Icon(Icons.accessibility),
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          label: 'First',
          onTap: () => debugPrint('FIRST CHILD'),
          onLongPress: () => debugPrint('FIRST CHILD LONG PRESS'),
        ),
        SpeedDialChild(
          child: const Icon(Icons.brush),
          backgroundColor: Colors.deepOrange,
          foregroundColor: Colors.white,
          label: 'Second',
          onTap: () => debugPrint('SECOND CHILD'),
        ),
        SpeedDialChild(
          child:  const Icon(Icons.margin),
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
          label: 'Show Snackbar',
          visible: true,
          onTap: () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text(("Third Child Pressed")))),
          onLongPress: () => debugPrint('THIRD CHILD LONG PRESS'),
        ),
      ],
    );
  }

  Widget services(BuildContext context, String serviceName, String image){
    return InkWell(
      child: Container(
        height: ScreenSize.getWidth(context:context) > 650 ? 200 : 125.0,
        width: ScreenSize.getWidth(context:context) > 650 ? 200 :  125.0,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 0.2),
          borderRadius: BorderRadius.circular(
              ScreenSize.getWidth(context:context) > 650 ? 100 : 90.0),
        ),
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(serviceName,
                      style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: ScreenSize.getWidth(context:context) > 650 ? 23 : 19),textAlign: TextAlign.center),
                ),
                Image.asset(image, height:
                ScreenSize.getWidth(context:context) > 650 ? 100 : 70)
              ],
            )),
      ),

      onTap: (){
      },
    );
  }
}
