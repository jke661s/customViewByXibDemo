//
//  CustomView.swift
//  CreateCustomViewByXib
//
//  Created by Jackie Wang on 7/6/21.
//

import UIKit

class CustomView: UIView {
    // MARK: - Components
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    
    // MARK: - Life cycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    fileprivate func commonInit() {
        Bundle.main.loadNibNamed(String(describing:CustomView.self),
                                 owner: self,
                                 options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleWidth,
                                        .flexibleHeight]
    }
}
