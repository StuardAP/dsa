class Book {
  final String title;
  final String author;
  final int publishYear;
  final double rating;
  Book({
    required this.title,
    required this.author,
    required this.publishYear,
    required this.rating,
  });


  @override
  String toString() {
    return 'Book(title: $title, author: $author, publishYear: $publishYear, rating: $rating)';
  }
}

typedef Comparator<T> = int Function(T a, T b);

void main() {
  final books = [
    Book(
        title: 'The Hobbit', author: 'Tolkien', publishYear: 1937, rating: 4.7),
    Book(title: 'Dune', author: 'Herbert', publishYear: 1965, rating: 4.6),
    Book(title: '1984', author: 'Orwell', publishYear: 1949, rating: 4.8),
  ];
  //TODO: Implement By year of publication (ascending)
  Comparator<Book> publishYearComparator;
  publishYearComparator =
      (Book a, Book b) => a.publishYear.compareTo(b.publishYear);
  books.sort(publishYearComparator);
  print(books);
  //TODO: Implement By rating (descending)
  Comparator<Book> ratingComparator;
  ratingComparator = (a, b) => b.rating.compareTo(a.rating);
  books.sort(ratingComparator);
  print(books);
  //TODO: Implement By author and then title
  authorTitleComparator(Book a, Book b) {
    final authorCompare = a.author.compareTo(b.author);
    return authorCompare != 0 ? authorCompare : a.title.compareTo(b.title);
  }
  books.sort(authorTitleComparator);
  print(books);
}
