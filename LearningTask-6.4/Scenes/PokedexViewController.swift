//
//  PokedexViewController.swift
//  LearningTask-6.4
//
//  Created by jeovane.barbosa on 11/11/22.
//

import UIKit

class PokedexViewController: UIViewController {

    var pokeStore: PokemonStore?
    
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    func setupTableView(){
        tableview.tableHeaderView = HeaderView.com(titulo: "Pokédex")
        tableview.delegate = self
        tableview.dataSource = self
    }
}

extension PokedexViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokeStore?.todos.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableview.dequeueReusableCell(withIdentifier: "PokemonViewCell", for: indexPath) as? PokemonTableViewCell else{
            fatalError("Não foi possível recuperar célula para tabela")
        }
        let pokemon = pokeStore?.todos[indexPath.row]
        cell.setup(pokemon!)
        return cell
    }
    
    
    
}

extension PokedexViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}


