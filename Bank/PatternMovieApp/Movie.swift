//
//  Movie.swift
//  PatternMovieApp
//
//  Created by Аlina Кovtunovich on 29.07.2024.
//

import Foundation

// Структура, представляющая фильм
struct Movie {
    let title: String
    let director: String
    
    static let exampleMovies = [
        Movie(title: "Inception", director: "Christopher Nolan"),
        Movie(title: "Interstellar", director: "Christopher Nolan"),
        Movie(title: "The Matrix", director: "The Wachowskis")
    ]
}
