import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

class LocationHome extends StatefulWidget {
  const LocationHome({super.key});

  @override
  State<LocationHome> createState() => _LocationHomeState();
}

class _LocationHomeState extends State<LocationHome> {
  LatLng currentLocation = LatLng(30, 40);
  bool loading = false;
  MapController controller = MapController();

  Future<void> getLocation() async {
    setState(() {
      loading = true;
    });
    bool enabled = await Geolocator.isLocationServiceEnabled();
    if (!enabled) {
      print('Location Service is off');
      return;
    }
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      Geolocator.requestPermission();
    }

    final LocationSettings locationSettings = LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 100,
    );

    // Position position = await Geolocator.getCurrentPosition(
    //   locationSettings: locationSettings,
    // );
    Geolocator.getPositionStream().listen((position) {
      setState(() {
        currentLocation = LatLng(position.latitude, position.longitude);
        loading = false;
      });
      controller.move(currentLocation, 10);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Map'), centerTitle: true),
      body: FlutterMap(
        mapController: controller,
        options: MapOptions(initialCenter: currentLocation),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'dev.fleaflet.flutter_map.example',
            // + many other options
          ),
          MarkerLayer(
            markers: [
              Marker(
                point: currentLocation,
                width: 80,
                height: 80,
                child: Icon(Icons.my_location, color: Colors.blue),
              ),
            ],
          ),
          // PolygonLayer(
          //   polygons: [
          //     Polygon(
          //       points: [LatLng(30, 40), LatLng(30.1, 40), LatLng(30, 40.1)],
          //       color: Colors.red,
          //       borderStrokeWidth: 3,
          //       pattern: StrokePattern.dotted(),
          //     ),
          //   ],
          // ),
          // PolylineLayer(
          //   polylines: [
          //     Polyline(
          //       points: [LatLng(30, 40), LatLng(30.1, 40), LatLng(30.2, 40.1)],
          //       color: Colors.blue,
          //       strokeWidth: 10,
          //       borderColor: Colors.red,
          //       borderStrokeWidth: 2,
          //     ),
          //   ],
          // ),
          // CircleLayer(
          //   circles: [
          //     CircleMarker(
          //       point: LatLng(51.50739215592943, -0.127709825533512),
          //       radius: 100,
          //       useRadiusInMeter: true,
          //     ),
          //   ],
          // ),
        ],
      ),
      floatingActionButton: loading
          ? CircularProgressIndicator()
          : FloatingActionButton(
              onPressed: getLocation,
              child: Icon(Icons.my_location),
            ),
    );
  }
}
