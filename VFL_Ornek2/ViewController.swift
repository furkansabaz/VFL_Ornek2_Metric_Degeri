//
//  ViewController.swift
//  VFL_Ornek2
//
//  Created by Furkan Sabaz on 4.06.2019.
//  Copyright © 2019 Furkan Sabaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let kirmiziView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    let maviView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .blue
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(kirmiziView)
        view.addSubview(maviView)
        let viewTumu = ["kirmiziView" : kirmiziView, "maviView" : maviView]
        
        let olculer = ["yukseklik" : view.frame.size.height / 4 , "genislik" : view.frame.size.width / 3 , "ust" : view.frame.size.height / 4 ]
        
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-ust-[kirmiziView(yukseklik)]|", options: [], metrics: olculer, views: viewTumu))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-ust-[maviView(yukseklik)]|", options: [], metrics: olculer, views: viewTumu))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[kirmiziView(genislik)]-[maviView(genislik)]-10-|", options: [], metrics: olculer, views: viewTumu))
        
        
        
    }


}

