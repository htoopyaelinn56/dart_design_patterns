import 'mediator.dart';
import 'vehicle.dart';

class ParkingMediator implements Mediator {
  final List<Vehicle?> _parkedVehicles = List.filled(5, null);

  @override
  void parkVehicle(Vehicle vehicle) {
    for (int i = 0; i < _parkedVehicles.length; i++) {
      if (_parkedVehicles[i] == null) {
        _parkedVehicles[i] = vehicle;
        print('Vehicle (${vehicle.licensePlate}) parked at spot $i');
        return;
      }
    }
    print('No parking spots available');
  }

  @override
  void removeVehicle(Vehicle vehicle) {
    for (int i = 0; i < _parkedVehicles.length; i++) {
      if (_parkedVehicles[i] == vehicle) {
        _parkedVehicles[i] = null;
        print('Vehicle (${vehicle.licensePlate}) removed from spot $i');
        return;
      }
    }
    print('Vehicle not found in parking');
  }

  @override
  void drawParking() {
    print('Current parking status:');
    for (int i = 0; i < _parkedVehicles.length; i++) {
      if (_parkedVehicles[i] == null) {
        print('Spot $i: Empty');
      } else {
        print('Spot $i: Vehicle (${_parkedVehicles[i]!.licensePlate})');
      }
    }
  }
}
