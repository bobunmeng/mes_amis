//
//  FriendCategoryViewController.swift
//  MesAmis
//
//  Created by Bo Bunmeng on 1/16/20.
//  Copyright © 2020 Bo Bunmeng. All rights reserved.
//

import UIKit

class FriendCategoryViewController: UIViewController {

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
        self.tableView.register(FriendCategoryTableViewCell.nib, forCellReuseIdentifier: FriendCategoryTableViewCell.cellIdentifier)
    }

    // MARK: - IBActions
    @IBAction func addCategory(_ sender: UIBarButtonItem) {
        self.categories.append(FriendCategory(title: "New Task", orderRank: 1, icon: nil, color: nil))
    }
    
}

// MARK: - TableView Delegate & DataSource
extension FriendCategoryViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: FriendCategoryTableViewCell.cellIdentifier) else {
            return UITableViewCell()
        }
        let category = self.categories[indexPath.row]
        cell.textLabel?.text = category.title
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

// MARK: - View
extension FriendCategoryViewController: FriendCategoryView {
    
    func show(_ categories: [FriendCategory]) {
        self.categories = categories
    }
    
}
