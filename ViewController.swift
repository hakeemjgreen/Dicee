//  ViewController.swift
//  Dicee
//
//  Created by Hakeem Green on 10/4/22.
//

import UIKit

class ViewController: UIViewController {

    let viewBackground = UIImageView()
    let diceLogo = UIImageView()
    
    let diceOne = UIImageView()
    let diceTwo = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
}

extension ViewController{
    func style(){
        view.addSubview(viewBackground)
        view.addSubview(diceLogo)
        view.addSubview(diceOne)
        view.addSubview(diceTwo)
        // Do any additional setup after loading the view.
        
        diceLogo.translatesAutoresizingMaskIntoConstraints = false
        diceLogo.image = UIImage(named: "DiceeLogo")
        
        diceOne.translatesAutoresizingMaskIntoConstraints = false
        diceOne.image = UIImage(named: "DiceOne")
        
        diceTwo.translatesAutoresizingMaskIntoConstraints = false
        diceTwo.image = UIImage(named: "DiceTwo")
        
//        view.backgroundColor = .red
        viewBackground.translatesAutoresizingMaskIntoConstraints = false
        viewBackground.image = UIImage(named: "GreenBackground")
        viewBackground.contentMode = .scaleAspectFill
        
    }
    func layout(){
        NSLayoutConstraint.activate([
            diceLogo.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
//            diceLogo.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: 4),
            diceLogo.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 20)
        ])
        
        NSLayoutConstraint.activate([
            diceOne.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: 1),
            diceOne.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: 60)

        ])
        
        NSLayoutConstraint.activate([
            diceTwo.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: 1),
            diceTwo.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: -60)
        ])
        
        NSLayoutConstraint.activate([
            viewBackground.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            viewBackground.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            viewBackground.topAnchor.constraint(equalTo: view.topAnchor),
            viewBackground.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}
