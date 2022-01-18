//
//  ViewController.swift
//  Lesson5HomeOne
//
//  Created by user on 8/1/22.
//

import UIKit
import SnapKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    private lazy var tableView: UITableView = {
        let view = UITableView()
        view.dataSource = self
        view.delegate = self
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSubView()
    }
    
    private var names = ["Sasha", "Petya", "Ruslan", "Lydmila", "Vasya", "Leha", "Pasha", "Misha", "Oleg", "Katya"]
    
    private func setupSubView() {
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.top.bottom.right.left.equalToSuperview()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let index = indexPath.row
        
        let cell = UITableViewCell()
        
        cell.textLabel?.text = names[index]
        
        return cell
    }

}

