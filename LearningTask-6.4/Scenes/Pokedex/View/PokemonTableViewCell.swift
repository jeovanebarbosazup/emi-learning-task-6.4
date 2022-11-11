//
//  PokemonTableViewCell.swift
//  LearningTask-6.4
//
//  Created by jeovane.barbosa on 11/11/22.
//

import UIKit

class PokemonTableViewCell: UITableViewCell {

    @IBOutlet weak var tipoView: TipoDePokemonView!
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var pokemonImageView: UIImageView!
    @IBOutlet weak var evolucoesLabel: UILabel!
    
    
    func setup(_ pokemon: Pokemon){
        nomeLabel.text = pokemon.nome
        pokemonImageView.image = UIImage(named: pokemon.referencia)
        tipoView.set(pokemon.tipo)
        evolucoesLabel.text = pokemon.evolucoes?
            .map {$0.nome}
            .joined(separator: ", ") ?? "N/A"
        
    }

    override func prepareForReuse() {
        nomeLabel.text = nil
        evolucoesLabel.text = nil
        pokemonImageView.image = nil
    }
}
