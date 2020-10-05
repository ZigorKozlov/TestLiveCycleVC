//
//  SecondViewController.swift
//  TestLiveCycleVC
//
//  Created by Игорь Козлов on 05.10.2020.
//  Copyright © 2020 Игорь Козлов. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    //Some property for test init time 
     var someProperty: String? {
        didSet{
            print("SomeProperty was inited")
        }
    }
    
    //1
    //Вызывается после команды, что нужно загрузить данный viewController
    //Нет достпа к собственному коду, разархиварование
    final override func awakeFromNib() {
        super.awakeFromNib()
        print("awakeFromNib")
    }
    
    //2
    //Вызывается посл етого как VC Был закгружен(выделена память, иницилизированы свойства)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        print("viewDidLoad")
    }
    
    //3
    //Вызывается перед появлением view на экране
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }
    
    
    //4
    //Вызывается перед тем, как размер view будет изменён под размер экрана
    override func viewWillLayoutSubviews() {
        print("viewWillLayoutSubviews")
    }
    
    
    //5
    //Вызывается после того, как размер view был изменён под размер экрана
    override func viewDidLayoutSubviews() {
        print("viewDidLayoutSubviews")
    }
    
    //6
    //срабатывает после появления view на экране
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
    
    //7
    //Вызывается перед тем, как view будет перевёрнут
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        print("viewWillTransition")
    }
    
    //8
    //вызывается перед тем, как view Исчезнет
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
    
    //9
    //Срабатывает после того как вью счазнет
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }
    
    //10
    //Выгрузка из памяти
    deinit {
        print("Second view is deinit")
    }
    
    //11
    //Срабатывает при ситуации, когда не хватает памяти на устройстве, нужен например для сохраниния данных или отправки сообщения, что память кончилась
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("didReceiveMemoryWarning")
    }
    
    //
    @IBAction func goBackPressed(_ sender: Any) {
            dismiss(animated: true, completion: nil)
        
    }
    
}
