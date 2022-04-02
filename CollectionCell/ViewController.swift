//
//  ViewController.swift
//  CollectionCell
//
//  Created by Gianni Crivello on 4/1/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as! CollectionTableViewCell
        
        cell.configure(with: models)
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0
    }
    
    
    @IBOutlet var table: UITableView!
    
    var models = [Model]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        models.append(Model(text: "First", imageName: "image_1"))
        models.append(Model(text: "second", imageName: "image_2"))
        models.append(Model(text: "third", imageName: "image_3"))
        models.append(Model(text: "fourth", imageName: "image_4"))
        models.append(Model(text: "First", imageName: "image_1"))
        models.append(Model(text: "second", imageName: "image_2"))
        models.append(Model(text: "third", imageName: "image_3"))
        models.append(Model(text: "fourth", imageName: "image_4"))
        models.append(Model(text: "First", imageName: "image_1"))
        models.append(Model(text: "second", imageName: "image_2"))
        models.append(Model(text: "third", imageName: "image_3"))
        models.append(Model(text: "fourth", imageName: "image_4"))


        
        table.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.identifier)
        table.delegate = self
        table.dataSource = self
        // Do any additional setup after loading the view.
    }

}

struct Model {
    var text: String
    var imageName: String
    
    init(text: String, imageName: String) {
        self.text = text
        self.imageName = imageName
    }
}

