export class User {
    constructor() {
        this.books = [];
    }

    borrow(book, library) {
        try {
            let booksInLibrary = library.getBooks();

            if (booksInLibrary.indexOf(book) === -1) {
                console.log("The book is not in the library.");
            } else {
                this.books.push(book);
                library.removeBook(book);
            }
        }
        catch (err) {
            console.error("Unexpected error: " + err);
        }
    }

    hasBook(book) {
        try {
            return this.books.indexOf(book) >= 0;
        }
        catch (err) {
            console.error("Unexpected error: " + err);
        }
    }

    return(book, library) {
        try {
            if (this.books.indexOf(book) < 0) {
                return false;
            } else {
                this.books = this.books.filter(b => b !== book);
                library.addBook(book);
                return true;
            }
        }
        catch (err) {
            console.error("Unexpected error: " + err);
        }
    }

    getBookNames() {
        try {
            let bookNames = [];
            this.books.forEach(book => {
                bookNames.push(book.name);
            });
            return bookNames;
        }
        catch (err) {
            console.error("Unexpected error: " + err);
        }
    }
}