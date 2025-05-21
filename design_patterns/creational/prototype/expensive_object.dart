/// an object that is expensive to create
class ExpensiveObject {
  final String dataFromServer;
  final String dataFromFileSystem;

  ExpensiveObject({
    required this.dataFromServer,
    required this.dataFromFileSystem,
  });

  factory ExpensiveObject._clone(ExpensiveObject target) {
    return ExpensiveObject(
      dataFromFileSystem: target.dataFromFileSystem,
      dataFromServer: target.dataFromServer,
    );
  }

  ExpensiveObject clone() {
    return ExpensiveObject._clone(this);
  }
}
