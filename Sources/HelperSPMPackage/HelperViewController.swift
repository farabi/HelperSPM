//
//  HelperViewController.swift
//  
//
//  Created by Saad Eloulladi on 27/01/2022.
//

import UIKit

public class HelperViewController: UIViewController {

    let someImageView: UIImageView = {
       let theImageView = UIImageView()
       theImageView.image = UIImage(named: "anImage", in: .module, with: nil)
       theImageView.translatesAutoresizingMaskIntoConstraints = false
       return theImageView
    }()

    public override func viewDidLoad() {
       super.viewDidLoad()

       view.addSubview(someImageView) //This add it the view controller without constraints
       someImageViewConstraints() //This function is outside the viewDidLoad function that controls the constraints
        
        view.backgroundColor = .white
    }

    // do not forget the `.isActive = true` after every constraint
    func someImageViewConstraints() {
        someImageView.widthAnchor.constraint(equalToConstant: 180).isActive = true
        someImageView.heightAnchor.constraint(equalToConstant: 180).isActive = true
        someImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        someImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 28).isActive = true
    }

}
