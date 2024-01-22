// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

class CustomerRideAccepted extends StatefulWidget {
  const CustomerRideAccepted({super.key});

  @override
  State<CustomerRideAccepted> createState() => _CustomerRideAcceptedState();
}

class _CustomerRideAcceptedState extends State<CustomerRideAccepted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Driver coming to you location',
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
        ),
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Container(
              width: 45,
              height: 45,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black, //remove this when you add image.
              ),
              // child: imageCache(
              //   width: 120,
              //   height: 120,
              //   fit: BoxFit.cover,
              //   imageUrl: "imageUrl goes here",
              //),
            ),
          )
        ],
        centerTitle: false,
        elevation: 0,
      ),
      body: Column(
        children: [
          khali(),
          acceptedCard(),
        ],
      ),
    );
  }
}

// Widget mapBack() {
//   return Expanded(
//     child: GoogleMap(
//       controller: _model.googleMapsController,
//       onCameraIdle: (latLng) => _model.googleMapsCenter = latLng,
//       initialLocation: _model.googleMapsCenter ??=
//           LatLng(13.106061, -59.613158),
//       markerColor: GoogleMarkerColor.violet,
//       mapType: MapType.normal,
//       style: GoogleMapStyle.standard,
//       initialZoom: 14,
//       allowInteraction: true,
//       allowZoom: true,
//       showZoomControls: true,
//       showLocation: true,
//       showCompass: false,
//       showMapToolbar: false,
//       showTraffic: false,
//       centerMapOnMarkerTap: true,
//     ),
//   );
// }

Widget khali() {
  return Expanded(
      flex: 1,
      child: Container(
        width: double.infinity,
        //height: 130,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
      ));
}

Widget acceptedCard() {
  return Expanded(
    flex: 2,
    child: Container(
      child: Column(
        children: [
          riderCard(),
          // rideAccepting(),
        ],
      ),
    ),
  );
}

Widget riderCard() {
  return Expanded(
    flex: 1,
    child: Column(
      children: [
        Container(
          width: double.infinity,
          height: 100,
          decoration: const BoxDecoration(
            color: Colors.amber,
            boxShadow: [
              BoxShadow(
                blurRadius: 3,
                color: Colors.white,
                offset: Offset(0, -1),
              )
            ],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(0),
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                child: Container(
                  decoration: const BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'driver name',
                                style: TextStyle(
                                    //fontFamily: 'poppins',
                                    fontSize: 27,
                                    fontWeight: FontWeight.w600),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.grade_outlined,
                                    //color: Colors.yellow,
                                    size: 24,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        ' 4.5',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 60,
                                      ),
                                      Text(
                                        'RS.200.00',
                                        style: TextStyle(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          'https://picsum.photos/seed/84/600',
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        acceptedRide(),
      ],
    ),
  );
}

Widget acceptedRide() {
  return Expanded(
    flex: 2,
    child: Container(
      width: double.infinity,
      height: 40,
      decoration: const BoxDecoration(
        //color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 3,
            color: Colors.white,
            offset: Offset(0, -1),
          )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          acceptedRidesBox(),
        ],
      ),
    ),
  );
}

Widget acceptedRidesBox() {
  return Container(
    width: double.infinity,
    //height: 400,
    //color: Colors.green,
    // decoration: BoxDecoration(
    //   color: Colors.black,
    //   borderRadius: BorderRadius.circular(2),
    //),
    child: Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 335,
          height: 150,
          decoration: const BoxDecoration(
              //color: Colors.white,
              ),
          child: const Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    'Car Details',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                //mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Car Name : ',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'Fortuner',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              Row(
                //mainAxisSize: MainAxisSize.max,
                children: [
                  // Icon(
                  //   Icons.settings_outlined,
                  //   color: Colors.,
                  //   size: 24,
                  // ),
                  Text(
                    'Car Number : ',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  ),

                  Text(
                    'tr10 9876',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ],
          ),
        ),
        // SizedBox(
        //   height: 10,
        // ),
        Container(
          width: 335,
          height: 67,
          // decoration: BoxDecoration(
          //   color: Colors.white,
          // ),
          child: const Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.radio_button_unchecked,
                      color: Colors.black,
                      size: 24,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Text(
                        '21 neon St. Park Avenue,CA',
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.pin_drop,
                      color: Colors.black,
                      size: 24,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Text(
                        'cermon earth space center',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: 360,
          height: 52,
          //margin: EdgeInsets.all(15.0),
          //padding: EdgeInsets.all(3.0),
          decoration: BoxDecoration(
            border: Border.all(color: const Color.fromRGBO(255, 211, 0, 0.8)),
            borderRadius: BorderRadius.circular(6),
            color: Colors.grey.withOpacity(0.1),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  //width: 330,
                  height: 100,
                  // decoration: BoxDecoration(
                  //   color: Colors.white,
                  // ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 38, 0),
                        child: Text(
                          'Ride Complete',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Text(
                        '09-01-2024',
                        style: TextStyle(color: Colors.black),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(9, 0, 0, 0),
                        child: Text(
                          '07:28PM',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
              width: 130,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.grey.shade200),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                          color: Color.fromRGBO(255, 211, 0, 0.8),
                          style: BorderStyle.solid),
                    ),
                  ),
                ),
                // style: ElevatedButton.styleFrom(
                //   backgroundColor: Color.fromRGBO(255, 211, 0, 0.8),

                // ),

                onPressed: () {},
                child: const Text(
                  'CANCEL',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
              width: 130,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(255, 211, 0, 0.8)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                // style: ElevatedButton.styleFrom(
                //   backgroundColor: Color.fromRGBO(255, 211, 0, 0.8),

                // ),

                onPressed: () {},
                child: const Text(
                  'CALL',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
