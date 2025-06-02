import 'expensive_object.dart';

class ExpensiveObjectFactory {
  final Map<String,ExpensiveObject> cache = {};

  ExpensiveObject createObject(String id) {
    if(cache.containsKey(id)){
      print('reused $id');
      return cache[id]!;
    }
    print('created $id');
    cache[id] = ExpensiveObject(id : id);
    return cache[id]!;
  }
}