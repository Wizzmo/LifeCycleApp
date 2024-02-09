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
        printMessage()
    }
    
    // Вызывается после того, как объекты были десериализованы из файла Interface Builder
    // и перед началомжизненного цикла ViewController
    override func awakeFromNib() {
        super.awakeFromNib()
        printMessage()
    }

    // Вызывается для создания представления, если оно еще не было создано
    /*
    override func loadView() {
        printMessage()
    }
    */
    
    // Вызывается после загрузки View в память
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "GreenVC"
        printMessage()
    }
    
    // Вызывается перед появлением view
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        printMessage()
    }
    
    // Вызывается автоматически системой Auto Layout, когда необходимо обновить ограничения в представлении
    override func updateViewConstraints() {
        super.updateViewConstraints()
        printMessage()
    }
    
    // Вызывается перед расстановкой subviews
    override func viewWillLayoutSubviews() {
        printMessage()
    }
    
    // Тут срабатывает Auto Layout
    
    // Вызывается после расстановки subviews
    override func viewDidLayoutSubviews() {
        printMessage()
    }
    
    // Вызывается после появлением view на экране
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        printMessage()
    }
    
    // Вызывается при изменении размеров view
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        printMessage()
        
        if size.height < size.width {
            print("The device is in landscape oriantation")
        } else {
            print("The device is in portrait oriantation")
        }
    }
    
    // Вызывается перед скрытием view
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        printMessage()
    }
    
    // Вызывается после скрытия view
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        printMessage()
    }
    
    // Вызывается после выгрузки view из памяти
    deinit {
        printMessage()
    }
}

extension UIViewController {
    func printMessage(function: String = #function) {
        print("\(title ?? ""): \(function)")
    }
}
