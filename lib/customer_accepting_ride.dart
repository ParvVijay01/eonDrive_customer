// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class CustomerRideAccepting extends StatefulWidget {
  const CustomerRideAccepting({super.key});

  @override
  State<CustomerRideAccepting> createState() => _CustomerRideAcceptingState();
}

class _CustomerRideAcceptingState extends State<CustomerRideAccepting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Looking for riders near you',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
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
        children: [khali(), newCard()],
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
      //flex: 2,
      child: Container(
    width: double.infinity,
    height: 100,
    decoration: const BoxDecoration(
      color: Colors.white,
    ),
  ));
}

Widget newCard() {
  return Expanded(
    //flex: 1,
    child: Container(
      child: Column(
        children: [
          rideamount(),
          // rideAccepting(),
        ],
      ),
    ),
  );
}

Widget rideamount() {
  return Expanded(
    flex: 1,
    child: Column(
      children: [
        Container(
          width: double.infinity,
          height: 80,
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
          child: const Row(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ride Placed',
                      style:
                          TextStyle(fontSize: 27, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Rs.200.00',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        rideAccepting(),
      ],
    ),
  );
}

Widget rideAccepting() {
  return Expanded(
    flex: 2,
    child: Container(
      width: double.infinity,
      height: 40,
      decoration: const BoxDecoration(
        //color: Colors.amber,
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
          topLeft: Radius.circular(26),
          topRight: Radius.circular(16),
        ),
      ),
      child: Column(
        children: [
          activeRideCard(),
        ],
      ),
    ),
  );
}

Widget activeRideCard() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    child: Container(
      width: double.infinity,
      height: 200,
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
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 2),
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
                        padding: EdgeInsetsDirectional.fromSTEB(10, 5, 0, 0),
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
          Container(
            width: 360,
            height: 52,
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(3.0),
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
                        Text(
                          'OTP :',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 38, 0),
                          child: Text(
                            '123456',
                            style: TextStyle(color: Colors.black),
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
        ],
      ),
    ),
  );
}
