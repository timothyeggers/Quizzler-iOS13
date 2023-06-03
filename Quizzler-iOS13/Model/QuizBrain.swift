//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Timothy Eggers on 11/20/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "A slug's blood is green.", a: "True", c: ["True", "False"]),
        Question(q: "Approximately one quarter of human bones are in the feet.", a: "True", c: ["True", "False"]),
        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True", c: ["True", "False"]),
        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True", c: ["True", "False"]),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False", c: ["True", "False"]),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True", c: ["True", "False"]),
        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False", c: ["True", "False"]),
        Question(q: "Google was originally called 'Backrub'.", a: "True", c: ["True", "False"]),
        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True", c: ["True", "False"]),
        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False", c: ["True", "False"]),
        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False", c: ["True", "False"]),
        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True", c: ["True", "False"]),
        Question(q: "Which is the largest organ in the human body?", a: "Skin", c: ["Heart", "Skin", "Large Intestine"]),
        Question(q: "Five dollars is worth how many nickels?", a: "100", c: ["25", "50", "100"]),
        Question(q: "What do the letters in the GMT time zone stand for?", a: "Greenwich Mean Time", c: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"]),
        Question(q: "What is the French word for 'hat'?", a: "Chapeau", c: ["Chapeau", "Écharpe", "Bonnet"]),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: "Watch", c: ["Notebook", "Handkerchief", "Watch"]),
        Question(q: "How would one say goodbye in Spanish?", a:  "Adiós", c: ["Au Revoir", "Adiós", "Salir"]),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", a: "Orange", c: ["Green", "Orange", "Blue"]),
        Question(q: "What alcoholic drink is made from molasses?", a: "Rum", c: ["Rum", "Whisky", "Gin"]),
        Question(q: "What type of animal was Harambe?", a: "Gorilla", c: ["Panda", "Gorilla", "Crocodile"]),
        Question(q: "Where is Tasmania located?", a: "Australia", c: ["Indonesia", "Australia", "Scotland"])
        ]
    
    var questionNumber = 0
    
    var correctAnswers = 0
    
    mutating func nextQuestion() {
        questionNumber += 1
        
        if questionNumber >= quiz.count {
            questionNumber = 0
            correctAnswers = 0
        }
    }
    
    func getQuestionChoice(_ index: Int) -> String? {
        if index < quiz[questionNumber].choices.count {
            return quiz[questionNumber].choices[index]
        }
        return nil
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getQuizProgress() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    func getScore() -> Int {
        return correctAnswers
    }
    
    mutating func checkAnswer(_ userAnswer: String?) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            correctAnswers += 1
            return true
        }
        return false
    }
}
