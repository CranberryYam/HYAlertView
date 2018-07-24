//
//  DialogView.swift
//  ModalView
//
//  Created by Honglin Yi on 3/5/18.
//  Copyright © 2018 Aatish. All rights reserved.
//

import UIKit

class DialogView: UIView {

    @IBOutlet weak var animalV: UIImageView!
    @IBOutlet weak var cancleBtn: UIButton!
    @IBOutlet weak var smallL: UILabel!
    @IBOutlet weak var okBtn: UIButton!
    @IBOutlet weak var bigL: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cancleBtn.layer.cornerRadius = cancleBtn.bounds.height/2
        okBtn.layer.cornerRadius = okBtn.bounds.height/2
        okBtn.backgroundColor = UIColor(red: 242.0/225.0, green: 66.0/225.0, blue: 83.0/225.0, alpha: 1.0)
    }
    func setDatas(title:String,content:String,image:UIImage?,
                  cancelS:String?,okS:String?) {
        bigL.text = title
        smallL.text = content
        if let image = image { animalV.image = image }
        if let cancelS = cancelS { cancleBtn.titleLabel?.text = cancelS }
        if let okS = okS { okBtn.titleLabel?.text = okS }
    }
    
}
