//
//  FriendCategoryViewController.swift
//  MesAmis
//
//  Created by Bo Bunmeng on 1/16/20.
//  Copyright © 2020 Bo Bunmeng. All rights reserved.
//

import UIKit

class FriendCategoryViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    private lazy var presenter: FriendCategoryPresenter = { FriendCategoryPresenter(self) }()
    
    var categories: [FriendCategory] = [] {
        didSet {
            self.tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setup()
        
        self.presenter.fetchCategories()
    }
    
    private func setup() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.tableFooterView = UIView(frame: .zero)
        self.tableView.register(FriendCategoryTableViewCell.self, forCellReuseIdentifier: FriendCategoryTableViewCell.cellIdentifier)
    }

    // MARK: - Actions
    private func displayAddAlert() {
        let alert = UIAlertController(title: "Hello", message: "<Message>", preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder = "Title"
            textField.tag = 1000
        }
        alert.addAction(UIAlertAction(title: "Add", style: .default, handler: { (_) in
            guard let tfs = alert.textFields else { return }
            var name: String = ""
            for tf in tfs {
                if tf.tag == 1000 {
                    name = tf.text ?? ""
                    break
                }
            }
            self.categories.append(FriendCategory(title: name, orderRank: 1, icon: nil, iconColor: nil))
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    // MARK: - IBActions
    @IBAction func addCategory(_ sender: UIBarButtonItem) {
        self.displayAddAlert()
    }
    
}

// MARK: - TableView Delegate & DataSource
extension FriendCategoryViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: FriendCategoryTableViewCell.cellIdentifier) as? FriendCategoryTableViewCell else {
            return UITableViewCell()
        }
        let category = self.categories[indexPath.row]
        cell.configure(category)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
}

// MARK: - View
extension FriendCategoryViewController: FriendCategoryView {
    
    func show(_ categories: [FriendCategory]) {
        self.categories = categories
    }
    
}
