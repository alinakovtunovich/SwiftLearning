//
//  MovieService.swift
//  PatternMovieApp
//
//  Created by Аlina Кovtunovich on 29.07.2024.
//

import Foundation

// Сервис для работы с фильмами, использующий Dependency Injection
class MovieService {
    private let moviemanager: MovieManager
    
    // init с dependency
    init(moviemanager: MovieManager) {
        self.moviemanager = moviemanager
    }
    
    // метод для добавления фильма
    func addMovie(title: String, director: String) {
        let movie = Movie(title: title, director: director)
        moviemanager.addMovie(movie)
    }
    
    // получение списка фильмов
    func getMovies() -> [Movie] {
        moviemanager.getMovies()
    }
}
