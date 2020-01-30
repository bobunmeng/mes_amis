//
//  NewFriendCategoryViewController.swift
//  MesAmis
//
//  Created by Bo Bunmeng on 1/30/20.
//  Copyright © 2020 Bo Bunmeng. All rights reserved.
//

import UIKit

class NewFriendCategoryViewController: UIViewController {

    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var categoryImageView: CircleImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setup()
    }
    
    // MARK: - Actions
    
    @IBAction func cancel(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Methods
    
    private func setup() {
        self.titleTextField.backgroundColor = .systemGray6
        self.titleTextField.delegate = self
        
    }

}

// MARK: - UITextFieldDelegate

extension NewFriendCategoryViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.titleTextField.backgroundColor = .systemGray3
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.titleTextField.backgroundColor = .systemGray6
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if string == "\n" {
            textField.resignFirstResponder()
            return false
        }
        
        self.doneButton.isEnabled = !(textField.text ?? "").isEmpty || !string.isEmpty
        
        // Deleting case
        if string.count == 0 {
            let text = textField.text ?? ""
            if text.count == range.length {
                self.doneButton.isEnabled = false
            }
        }
        
        return true
    }
    
}
