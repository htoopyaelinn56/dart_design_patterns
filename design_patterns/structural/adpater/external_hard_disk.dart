import 'internal_hard_disk.dart';

class ExternalHardDisk {
  String getData() {
    return 'Data from external hard disk';
  }
}

class HardDiskObjectAdapter extends InternalHardDisk {
  late final ExternalHardDisk _externalHardDisk;

  HardDiskObjectAdapter(ExternalHardDisk externalHardDisk) {
    _externalHardDisk = externalHardDisk;
  }

  @override
  String getData() {
    // doing conversion process for example reading from usb c to sata port
    return _externalHardDisk.getData();
  }
}

class HardDiskClassAdapter extends ExternalHardDisk
    implements InternalHardDisk {
  @override
  String getData() {
    // doing conversion process for example reading from usb c to sata port
    return super.getData();
  }
}
