// ============================================
//   Library Book Manager — Dart OOP Project
//   Author  : Awais
//   GitHub  : github.com/your-username
//   Concepts: Class, Object, Encapsulation,
//             Inheritance, Polymorphism
// ============================================

import 'dart:io';

// ─────────────────────────────────────────────
// BASE CLASS (Parent)
// ─────────────────────────────────────────────
class Book {
  String _title;
  String _author;
  int _year;
  bool _isAvailable;

  // Constructor
  Book(this._title, this._author, this._year, this._isAvailable);

  // Getters
  String get title => _title;
  String get author => _author;
  int get year => _year;
  bool get isAvailable => _isAvailable;

  // Setters
  set isAvailable(bool value) => _isAvailable = value;

  // Display book info — can be overridden
  void displayInfo() {
    String status = _isAvailable ? "✅ Available" : "❌ Borrowed";
    print("📖 $_title | By: $_author | Year: $_year | $status");
  }
}

// ─────────────────────────────────────────────
// CHILD CLASS 1 — Inheritance
// ─────────────────────────────────────────────
class EBook extends Book {
  String _fileFormat; // e.g. PDF, EPUB

  EBook(String title, String author, int year, this._fileFormat)
    : super(title, author, year, true);

  // Polymorphism — override parent method
  @override
  void displayInfo() {
    print(
      "💻 $title | By: $author | Year: $year | Format: $_fileFormat | ✅ Always Available",
    );
  }
}

// ─────────────────────────────────────────────
// CHILD CLASS 2 — Inheritance
// ─────────────────────────────────────────────
class ReferenceBook extends Book {
  String _subject;

  ReferenceBook(String title, String author, int year, this._subject)
    : super(title, author, year, true);

  // Polymorphism — override parent method
  @override
  void displayInfo() {
    print(
      "📕 $title | By: $author | Subject: $_subject | 🔒 Cannot be Borrowed",
    );
  }
}

// ─────────────────────────────────────────────
// LIBRARY CLASS — Encapsulation + Management
// ─────────────────────────────────────────────
class Library {
  String _libraryName;
  List<Book> _books = [];
  List<String> _borrowLog = [];

  Library(this._libraryName);

  // Add any type of book
  void addBook(Book book) {
    _books.add(book);
    print("\n✅ '${book.title}' added to $_libraryName.");
  }

  // Show all books
  void showAllBooks() {
    print("\n════════════════════════════════════");
    print("   📚 $_libraryName — All Books");
    print("════════════════════════════════════");
    if (_books.isEmpty) {
      print("No books in library.");
    } else {
      for (int i = 0; i < _books.length; i++) {
        print("${i + 1}. ");
        _books[i].displayInfo(); // Polymorphism in action!
      }
    }
    print("════════════════════════════════════");
  }

  // Borrow a book by title
  void borrowBook(String title) {
    print("\n🔍 Searching for '$title'...");
    for (var book in _books) {
      if (book.title.toLowerCase() == title.toLowerCase()) {
        if (book is ReferenceBook) {
          print("❌ Reference books cannot be borrowed.");
          return;
        }
        if (book.isAvailable) {
          book.isAvailable = false;
          _borrowLog.add(title);
          print("✅ You have borrowed '$title'. Please return within 7 days.");
        } else {
          print("❌ '$title' is already borrowed. Try again later.");
        }
        return;
      }
    }
    print("❌ Book '$title' not found.");
  }

  // Return a book by title
  void returnBook(String title) {
    print("\n🔍 Processing return for '$title'...");
    for (var book in _books) {
      if (book.title.toLowerCase() == title.toLowerCase()) {
        if (!book.isAvailable) {
          book.isAvailable = true;
          _borrowLog.remove(title);
          print("✅ '$title' returned successfully. Thank you!");
        } else {
          print("⚠️  '$title' was not borrowed.");
        }
        return;
      }
    }
    print("❌ Book '$title' not found.");
  }

  // Search book by title or author
  void searchBook(String query) {
    print("\n🔍 Search results for '$query':");
    bool found = false;
    for (var book in _books) {
      if (book.title.toLowerCase().contains(query.toLowerCase()) ||
          book.author.toLowerCase().contains(query.toLowerCase())) {
        book.displayInfo();
        found = true;
      }
    }
    if (!found) print("❌ No results found for '$query'.");
  }

  // Show borrow log
  void showBorrowLog() {
    print("\n📋 Currently Borrowed Books:");
    if (_borrowLog.isEmpty) {
      print("   No books are currently borrowed.");
    } else {
      for (var title in _borrowLog) {
        print("   • $title");
      }
    }
  }
}

// ─────────────────────────────────────────────
// MAIN MENU
// ─────────────────────────────────────────────
void main() {
  // Create Library
  Library lib = Library("City Public Library");

  // Add sample books
  lib.addBook(Book("Clean Code", "Robert Martin", 2008, true));
  lib.addBook(Book("The Pragmatic Programmer", "Andy Hunt", 1999, true));
  lib.addBook(Book("Dart Programming", "Kathy Walrath", 2021, true));
  lib.addBook(EBook("Flutter in Action", "Eric Windmill", 2020, "PDF"));
  lib.addBook(
    ReferenceBook("Oxford Dictionary", "Oxford Press", 2015, "Language"),
  );

  // Menu loop
  while (true) {
    print("""
╔══════════════════════════════════╗
║     📚 LIBRARY BOOK MANAGER      ║
╠══════════════════════════════════╣
║  1. Show All Books               ║
║  2. Borrow a Book                ║
║  3. Return a Book                ║
║  4. Search a Book                ║
║  5. Show Borrowed Books          ║
║  0. Exit                         ║
╚══════════════════════════════════╝
Enter your choice: """);

    String? input = stdin.readLineSync();

    switch (input) {
      case "1":
        lib.showAllBooks();
        break;
      case "2":
        stdout.write("Enter book title to borrow: ");
        String? title = stdin.readLineSync();
        if (title != null) lib.borrowBook(title);
        break;
      case "3":
        stdout.write("Enter book title to return: ");
        String? title = stdin.readLineSync();
        if (title != null) lib.returnBook(title);
        break;
      case "4":
        stdout.write("Enter title or author to search: ");
        String? query = stdin.readLineSync();
        if (query != null) lib.searchBook(query);
        break;
      case "5":
        lib.showBorrowLog();
        break;
      case "0":
        print("\n👋 Thank you for using Library Manager. Goodbye!");
        return;
      default:
        print("\n⚠️  Invalid choice. Please enter 0-5.");
    }
  }
}
