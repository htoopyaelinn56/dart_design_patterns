import 'device.dart';

abstract class Remote {
  Device device;
  Remote(this.device);

  void turnOn();
  void turnOff();
}
