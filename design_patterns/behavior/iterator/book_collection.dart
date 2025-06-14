import 'book.dart';
import 'book_iterator.dart';
import 'my_iterator.dart';

class BookCollection {
  final _list = <Book>[];

  void add(Book book){
    _list.add(book);
  }

  MyIterator<Book> getIterator(){
    return BookIterator(_list);
  }
}