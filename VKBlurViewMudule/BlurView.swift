//
//  BlurView.swift
//  BlurView
//
//  Created by Vikash Kumar on 19/03/17.
//  Copyright © 2017 Vikash Kumar. All rights reserved.
//

import UIKit

 public class BlurView: UIView {
    @IBInspectable public var cornerRadius: CGFloat = 0.0

   override public  func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setBlurEffect(blurEffectStyle: UIBlurEffectStyle) {
        self.backgroundColor = UIColor.clear
        let blurEffect = UIBlurEffect(style: blurEffectStyle)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        //always fill the view
        blurEffectView.frame = self.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(blurEffectView)
        self.sendSubview(toBack: blurEffectView)
        
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = true
        
    }

}

 public class BlurViewLight: BlurView {

   public override init(frame: CGRect) {
        super.init(frame: frame)
        setBlurEffect(blurEffectStyle: .light)
    }
    
   public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
   public override func awakeFromNib() {
        super.awakeFromNib()
        setBlurEffect(blurEffectStyle: .light)
    }
    
}

public class BlurViewExtraLight: BlurView {
    
   public override init(frame: CGRect) {
        super.init(frame: frame)
        setBlurEffect(blurEffectStyle: .extraLight)
    }
    
   public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
   public override func awakeFromNib() {
        super.awakeFromNib()
        setBlurEffect(blurEffectStyle: .extraLight)
    }
    
}

public class BlurViewDark: BlurView {
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setBlurEffect(blurEffectStyle: .dark)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        setBlurEffect(blurEffectStyle: .dark)
    }
    
}

