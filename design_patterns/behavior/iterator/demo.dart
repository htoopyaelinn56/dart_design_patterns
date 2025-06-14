// https://refactoring.guru/design-patterns/iterator

import 'book.dart';
import 'book_collection.dart';

void main() {
  final bookCollection = BookCollection();
  final firstBook = Book(
    title: 'The Hitchhiker\'s Guide to the Galaxy',
    authorName: 'Douglas Adams',
  );
  final secondBook = Book(title: '1984', authorName: 'George Orwell');
  final thirdBook = Book(
    title: 'Pride and Prejudice',
    authorName: 'Jane Austen',
  );

  bookCollection.add(firstBook);
  bookCollection.add(secondBook);

  final iterator = bookCollection.getIterator();

  iterator.moveNext();
  print(iterator.getCurrent());

  iterator.moveNext();
  print(iterator.getCurrent());

  bookCollection.add(thirdBook);
  iterator.moveNext();
  print(iterator.getCurrent());
}
