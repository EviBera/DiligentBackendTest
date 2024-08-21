export class User {
    constructor() {
        this.books = [];
    }

    borrow(book, library) {
        try {
            if (library.getBooks().includes(book)) {
                this.books.push(book);
                library.removeBook(book);
            } else {
                console.log("The book is not in the library.");
            }
        }
        catch (err) {
            console.error("Unexpected error: " + err);
        }
    }

    hasBook(book) {
        try {
            return this.books.includes(book);
        }
        catch (err) {
            console.error("Unexpected error: " + err);
        }
    }

    return(book, library) {
        try {
            if (this.hasBook(book)) {
                this.books = this.books.filter(b => b !== book);
                library.addBook(book);
                return true;
            } else {
                return false;
            }
        }
        catch (err) {
            console.error("Unexpected error: " + err);
        }
    }

    getBookNames() {
        try {
            return this.books.map(book => book.name);
        }
        catch (err) {
            console.error("Unexpected error: " + err);
        }
    }
}