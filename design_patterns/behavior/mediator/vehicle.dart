import 'mediator.dart';

abstract class Vehicle {
  final String licensePlate;
  final Mediator parkingMediator;

  Vehicle({required this.licensePlate, required this.parkingMediator});

  void park();

  void depart();
}
