//
//  BookStore.swift
//  BookStore
//
//  Created by user190856 on 3/5/21.
//

import Foundation

class BookStore {
    var bookList: [Book] = []
    
    init() {
        var newBook = Book()
        newBook.title = "Dream Search for the Unknown Kadath"
        newBook.author = "H. P. Lovecraft"
        newBook.year = "1943"
        newBook.description = """
        Randolph Carter wants to start dreaming of such illustrous places as he did when he was young, but as he does, he remembers dreaming of a city beautiful above all else and he is determined to find it once again.
        """
        bookList.append(newBook)
        
        newBook = Book()
        newBook.title = "Dunwich Horror, The"
        newBook.author = "H. P. Lovecraft"
        newBook.year = "1929"
        newBook.description = """
        Fishermen fish men who are weird and hate normal people in Dunwich.
        """
        bookList.append(newBook)
        newBook = Book()
        newBook.title = "At the Mountains Of Madness"
        newBook.author = "H. P. Lovecraft"
        newBook.year = "1936"
        newBook.description = """
        Exploring the Antarctica reveals secrets far beyond in time we can't fathom their atiquity.
        """
        bookList.append(newBook)
        newBook = Book()
        newBook.title = "Silver Key, The"
        newBook.author = "H. P. Lovecraft"
        newBook.year = "1929"
        newBook.description = """
        Randolph Carter is in search of the dreams he used to have in his youth, he goes back to his childhood home only to never come back.
        """
        bookList.append(newBook)
        newBook = Book()
        newBook.title = "Cats of Ulthar, The"
        newBook.author = "H. P. Lovecraft"
        newBook.year = "1920"
        newBook.description = """
        There are tales from Ulthar, the city where none may harm a cat, otherwise, their destiny is unsure.
        """
        bookList.append(newBook)
        
        
        self.sortBooks()
    }
    
    func sortBooks() {
        for book in bookList {
            print(book.title)
        }
        print("Despues: ")
        var cambio = true
        while cambio == true {
            for i in 0...self.bookList.count - 2 {
                cambio = false
                if bookList[i].title.first! > bookList[i + 1].title.first! {
                    let temp: Book = bookList[i]
                    bookList[i] = bookList[i + 1]
                    bookList[i + 1] = temp
                    cambio = true
                }
            }
        }
        for book in bookList {
            print(book.title)
        }    }
}
