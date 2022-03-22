//
//  ViewController.swift
//  ScrollViewWithAutoLayout
//
//  Created by Angel Zambrano on 3/22/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    let scrollView = UIScrollView()
    // this is the uiview that has the majority
    let contentView = UIView()
    let stackView = UIStackView(arrangedSubviews: [])
    
    let view1 = UIView()
    let view2 = UIView()
    let view3 = UIView()
    let view4 = UIView()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // adding scrollview
        view.addSubview(scrollView)
        scrollView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor)
        
        // set up for the content view
        contentView.backgroundColor = .blue
        
        scrollView.addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.anchor(top: scrollView.topAnchor, leading: scrollView.leadingAnchor, bottom: scrollView.bottomAnchor, trailing: scrollView.trailingAnchor)
        
        NSLayoutConstraint.activate([
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
//            contentView.heightAnchor.constraint(equalToConstant: 1000)
        ])
        
        
        // set up for stack view
        contentView.addSubview(stackView)
        stackView.axis = .vertical
        stackView.distribution = .fill
        
        stackView.anchor(top: contentView.topAnchor, leading: contentView.leadingAnchor, bottom: contentView.bottomAnchor, trailing: contentView.trailingAnchor)
        
       
        
        
        
        
//        // set up for views1
        view1.backgroundColor = .red
        view1.translatesAutoresizingMaskIntoConstraints = false
        
        view2.backgroundColor = .gray
        view2.translatesAutoresizingMaskIntoConstraints = false
       
        view3.backgroundColor = .brown
        view3.translatesAutoresizingMaskIntoConstraints = false
        
        view4.backgroundColor = .cyan
        view4.translatesAutoresizingMaskIntoConstraints = false
//
        stackView.addArrangedSubview(view1)
        stackView.addArrangedSubview(view2)
        stackView.addArrangedSubview(view3)
        stackView.addArrangedSubview(view4)



        NSLayoutConstraint.activate([
            view1.heightAnchor.constraint(equalToConstant: 200),
            view2.heightAnchor.constraint(equalToConstant: 200),
            view3.heightAnchor.constraint(equalToConstant: 200),
            view4.heightAnchor.constraint(equalToConstant: 200)
        ])
        
        
        
    }

    
    

}

