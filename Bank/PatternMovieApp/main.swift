//
//  main.swift
//  PatternMovieApp
//
//  Created by Аlina Кovtunovich on 29.07.2024.
//

import Foundation

// использование Singleton
let config = Config.shared
print("Источник данных: ", config)

// Observer (MovieManager) и Dependency Injection (MovieService)
let movieManager = MovieManager()
let movieService = MovieService(moviemanager: movieManager)

// добавление observer для уведомлений о добавлении нового фильма
NotificationCenter.default.addObserver(forName: Notification.Name("MovieAdded"), object: nil, queue: nil) { notification in
    print("observer - Добавлен новый фильм")
}

// добавление фильмов
for movie in Movie.exampleMovies {
    movieService.addMovie(title: movie.title, director: movie.director)
}

// получение списка фильмов
let movies = movieService.getMovies()

// вывод списка фильмов
print("Фильмы: ")
for movie in movies {
    print("Название: \(movie.title), режиссер: \(movie.director)")
}
