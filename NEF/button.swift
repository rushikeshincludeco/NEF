//
//  button.swift
//  NEF
//
//  Created by include tech. on 12/12/16.
//  Copyright © 2016 include tech. All rights reserved.
//

import Foundation
import UIKit
import SnapKit


class Button: UIButton {
	let topBarView = UIView()
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
	}
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		self.layer.borderWidth = 1
		self.layer.borderColor = UIColor.lightGrayColor().CGColor
		topBarView.backgroundColor = UIColor(hex: 0xF0AF3C)
		self.addSubview(topBarView)
		topBarView.snp_makeConstraints { (make) -> Void in
			make.left.right.top.equalTo(self)
			make.height.equalTo(self).multipliedBy(0.10)
		}
	}
	
}
