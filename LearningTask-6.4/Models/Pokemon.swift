//
//  Pokemon.swift
//  LearningTask-6.4
//
//  Created by jeovane.barbosa on 11/11/22.
//

import Foundation

struct Pokemon {
    let referencia: String
    let nome: String
    let tipo: [Tipo]
    let evolucoes: [Pokemon]?
    
    init(referencia: String, nome: String, tipo: [Tipo], evolucoes: [Pokemon]? = nil) {
        self.referencia = referencia
        self.nome = nome
        self.tipo = tipo
        self.evolucoes = evolucoes
    }
}

enum Tipo: String{
    case grama = "Grama"
    case fogo = "Fogo"
    case eletrico = "Elétrico"
    case voador = "Voador"
    case agua = "Água"
    case venenoso = "Venenoso"
    case gelo = "Gelo"
    case psiquico = "Psíquico"
    case normal = "Normal"
}

