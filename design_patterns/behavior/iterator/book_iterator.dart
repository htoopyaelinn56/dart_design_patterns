import 'book.dart';
import 'book_collection.dart';
import 'my_iterator.dart';

class BookIterator implements MyIterator<Book> {
  final List<Book> _books;

  BookIterator(this._books) : assert(_books.isNotEmpty);

  int index = -1;

  @override
  Book getCurrent() {
    if (index >= 0 && index < _books.length) {
      return _books[index];
    }
    throw Exception('iterator has not been moved');
  }

  @override
  bool moveNext() {
    index++;
    return index < _books.length;
  }
}
