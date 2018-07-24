//
//  CustomAlert.swift
//  ModalView
//
//  Created by Aatish Rajkarnikar on 3/20/17.
//  Copyright © 2017 Aatish. All rights reserved.
//

import UIKit

public protocol HYAlertController:class {
    func alertViewDidClick(_ isOK:Bool)
}

public class HYAlertView: UIView, ModalPresentation {
    //MARK: API
    public weak var controller:HYAlertController?
    public func present(animated:Bool) {
        show(animated: animated)
    }
    
    //MARK: SubViews
    var backgroundView = UIView()
    lazy var dialogView:DialogView = {
        let bundle = Bundle(for: DialogView.self)
        let views = bundle.loadNibNamed("DialogView", owner:self, options: nil)
        let view:DialogView = views![0] as! DialogView
        return view
    }()
    
    //MARK: Internal Implementation
    func initialize(title:String, content:String, image:UIImage?,
                    cancelBtn:String?, okBtn:String?){
        dialogView.setDatas(title: title, content: content, image: image, cancelS: cancelBtn, okS: okBtn)
        setUpBackV()
        setUpDialogV()
    }
     private func setUpBackV() {
        backgroundView.frame = frame
        backgroundView.backgroundColor = UIColor.black
        backgroundView.alpha = 0.6
        backgroundView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTappedOnBackgroundView)))
        addSubview(backgroundView)
    }
    private func setUpDialogV() {
        dialogView.clipsToBounds = false
        dialogView.frame.origin = CGPoint(x: 32, y: frame.height)
        //dialogView.frame.size = CGSize(width:268, height:164)
        dialogView.backgroundColor = UIColor.white
        dialogView.layer.cornerRadius = 6
        addSubview(dialogView)
        dialogView.okBtn.addTarget(self, action: #selector(didTappedOnOkButton), for: .touchUpInside)
        dialogView.cancleBtn.addTarget(self, action: #selector(didTappedOnCancleButton), for: .touchUpInside)
    }
    
    //MARK: Three tap action
    @objc private func didTappedOnBackgroundView(){
        dismiss(animated: true)
    }
    @objc private func didTappedOnOkButton() {
        controller?.alertViewDidClick(true)
        dismiss(animated: true)
    }
    @objc private func didTappedOnCancleButton() {
        controller?.alertViewDidClick(false)
        dismiss(animated: true)
    }
    
    //MARK: Init BoilPlate
    convenience public init(_ title:String,_ content:String,_ image:UIImage?,
                            _ cancelBtn:String?,_ okBtn:String?) {
        self.init(frame: UIScreen.main.bounds)
        initialize(title: title, content: content, image: image, cancelBtn: cancelBtn, okBtn: okBtn)
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize(title:"Caution!" , content:"If you delete it, you can't restore it.", image:nil, cancelBtn:nil, okBtn:nil)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
