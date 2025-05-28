import 'device.dart';

class Radio implements Device {
  bool isTurnedOn = false;

  @override
  void turnOff() {
    isTurnedOn = false;
  }

  @override
  void turnOn() {
    isTurnedOn = true;
  }

  @override
  bool isEnabled() {
    return isTurnedOn;
  }
}
