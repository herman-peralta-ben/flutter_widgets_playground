import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const _zocalo = LatLng(19.4328, -99.1333);

// [!GoogleMapsConfig]
class GoogleMapsExampleScreen extends StatefulWidget {
  const GoogleMapsExampleScreen({super.key});

  @override
  State<GoogleMapsExampleScreen> createState() => _GoogleMapsExampleScreenState();
}

class _GoogleMapsExampleScreenState extends State<GoogleMapsExampleScreen> {
  late GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: (controller) => mapController = controller,
      initialCameraPosition: CameraPosition(target: _zocalo, zoom: 11.0),
      markers: {
        Marker(
          markerId: MarkerId("Mexico City"),
          position: _zocalo,
          infoWindow: InfoWindow(
            title: "Mexico City",
            snippet: _zocalo.toString(),
          ),
        ),
      },
    );
  }
}
