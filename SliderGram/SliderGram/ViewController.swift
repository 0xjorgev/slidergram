//
//  ViewController.swift
//  SliderGram
//
//  Created by Jorge Mendoza on 5/16/18.
//  Copyright © 2018 Jorge Mendoza. All rights reserved.
//

import UIKit
import PureLayout

class ViewController: UIViewController {

    var slider:SliderCollection?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .blue
        print("ViewDidLoad!")
        
        createViews()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createViews(){
        
        slider = SliderCollection()
        
        self.slider?.setup = SliderSetup(horizontalPadding: 0.0
            , verticalPadding: 0.0
            , topOffset: 40.0
            , bottomOffset: 0.0
            , verticalSize: .twentyFive
            , innerTopOffset: nil
            , innerBottomOffset: nil
            , innerPaddingOffset: nil
            , imageAspect:.scaleAspectFill
            , backgroundColor: nil)
        
        self.view.addSubview((slider?.view)!)
        
        setupConstraints()
    }

}

extension ViewController {
    func setupConstraints() {
        
        //Move this someplace else
        slider?.view?.autoPinEdge(.top, to: .top, of: self.view, withOffset: CGFloat(self.slider?.setup?.topOffset ?? 0.0))
        slider?.view?.autoPinEdge(.left, to: .left, of: self.view, withOffset: CGFloat(self.slider?.setup?.horizontalPadding ?? 0.0))
        slider?.view?.autoPinEdge(.right, to: .right, of: self.view, withOffset: CGFloat(-(self.slider?.setup?.horizontalPadding ?? 0.0)))
        
        let size:Float = (self.slider?.setup?.verticalSize?.rawValue ?? 100)
        
        let vSize = (UIScreen.main.bounds.height)*CGFloat(size/100.0)
        
        print("vSize: \(vSize)")
        
        slider?.view?.autoSetDimension(.height, toSize: vSize)
    }
}

