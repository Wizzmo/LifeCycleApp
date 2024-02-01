//
//  ThirdVC.swift
//  LifeCycleApp
//
//  Created by Maxim Makarov on 29.01.2024.
//

import UIKit

final class GreenViewController: UIViewController {
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        printMessage()
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension UIViewController {
    func printMessage(function: String = #function) {
        print("\(title ?? ""): \(function)")
    }
}
