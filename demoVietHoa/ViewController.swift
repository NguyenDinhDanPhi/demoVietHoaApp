//
//  ViewController.swift
//  demoVietHoa
//
//  Created by dan phi on 23/02/2023.
//

import UIKit

class ViewController: UIViewController {
    
    private var myLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello".localized()
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 32)
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myLabel)
        myLabel.frame = view.bounds
    }


}

extension String {
    func localized() -> String {
        return NSLocalizedString(self,
                                 tableName: "Localizable",
                                 bundle: .main,
                                 value: self,
                                 comment: self)
    }
}
