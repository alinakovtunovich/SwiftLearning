//
//  MovieManager.swift
//  PatternMovieApp
//
//  Created by Аlina Кovtunovich on 29.07.2024.
//

import Foundation

// Класс, управляющий фильмами c Observer
class MovieManager {
    private var movies: [Movie] = []
    
    // метод для добавления фильма в список
    func addMovie(_ movie: Movie) {
        movies.append(movie)
        // отправляем уведомлении об изменении списка фильмов с помощью NotificationCenter
        NotificationCenter.default.post(name: Notification.Name("MovieAdded"), object: nil)
    }
    // Notification Center — это механизм, осуществляющий доставку данных о событиях
    // до подписанных на эти события наблюдателей (observers)
    
    
    // метод для получения списка фильмов
    func getMovies() -> [Movie] {
        return movies
    }
}
