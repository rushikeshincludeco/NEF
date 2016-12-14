//
//  ViewController.swift
//  NEF
//
//  Created by include tech. on 12/12/16.
//  Copyright © 2016 include tech. All rights reserved.
//

import UIKit
import SnapKit


class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		self.navigationController?.navigationBar.topItem?.title = "NEF"
		
		let topContainerView = UIView()
		topContainerView.backgroundColor = UIColor.blackColor()
		self.view.addSubview(topContainerView)
		topContainerView.snp_makeConstraints { (make) -> Void in
			make.width.equalTo(view)
			make.height.equalTo(view).multipliedBy(0.40)
			make.top.equalTo(view)
		}
		
		let btnTopLeft = Button()
		btnTopLeft.setTitle("Top Left", forState: .Normal)
		btnTopLeft.setTitleColor(UIColor.redColor(), forState: .Normal)
		self.view.addSubview(btnTopLeft)
		btnTopLeft.snp_makeConstraints { (make) -> Void in
			make.left.equalTo(view)
			make.width.equalTo(view.snp_width).multipliedBy(0.50)
			make.height.equalTo(150)
			make.top.equalTo(topContainerView.snp_bottom).offset(1)
		}
		
		let btnTopRight = Button()
		btnTopRight.setTitle("Top Right", forState: .Normal)
		btnTopRight.setTitleColor(UIColor.redColor(), forState: .Normal)
		self.view.addSubview(btnTopRight)
		btnTopRight.snp_makeConstraints { (make) -> Void in
			make.left.equalTo(btnTopLeft.snp_right).offset(1)
			make.width.equalTo(view.snp_width).multipliedBy(0.50)
			make.height.equalTo(150)
			make.top.equalTo(topContainerView.snp_bottom).offset(1)
		}
		
		let btnMiddleLeft = Button()
		btnMiddleLeft.setTitle("Middle Left", forState: .Normal)
		btnMiddleLeft.setTitleColor(UIColor.redColor(), forState: .Normal)
		self.view.addSubview(btnMiddleLeft)
		btnMiddleLeft.snp_makeConstraints { (make) -> Void in
			make.left.equalTo(view)
			make.height.equalTo(btnTopLeft.snp_height).multipliedBy(0.60)
			make.width.equalTo(view.snp_width).multipliedBy(0.50)
			make.top.equalTo(btnTopLeft.snp_bottom).offset(1)
		}
		
		let btnMiddleRight = Button()
		btnMiddleRight.setTitle("Middle Right", forState: .Normal)
		btnMiddleRight.setTitleColor(UIColor.redColor(), forState: .Normal)
		self.view.addSubview(btnMiddleRight)
		btnMiddleRight.snp_makeConstraints { (make) -> Void in
			make.left.equalTo(btnMiddleLeft.snp_right).offset(1)
			make.height.equalTo(btnTopLeft.snp_height).multipliedBy(0.60)
			make.width.equalTo(view.snp_width).multipliedBy(0.50)
			make.top.equalTo(btnTopRight.snp_bottom).offset(1)
		}
		
		let btnLowerLeft = Button()
		btnLowerLeft.setTitle("Lower Left", forState: .Normal)
		btnLowerLeft.setTitleColor(UIColor.redColor(), forState: .Normal)
		self.view.addSubview(btnLowerLeft)
		btnLowerLeft.snp_makeConstraints { (make) -> Void in
			make.left.equalTo(view)
			make.width.equalTo(view.snp_width).multipliedBy(0.50)
			make.height.equalTo(btnTopLeft.snp_height).multipliedBy(0.45)
			make.top.equalTo(btnMiddleLeft.snp_bottom).offset(1)
		}
		
		let btnLowerRight = Button()
		btnLowerRight.setTitle("Lower Right", forState: .Normal)
		btnLowerRight.setTitleColor(UIColor.redColor(), forState: .Normal)
		self.view.addSubview(btnLowerRight)
		btnLowerRight.snp_makeConstraints { (make) -> Void in
			make.left.equalTo(btnLowerLeft.snp_right).offset(1)
			make.width.equalTo(view.snp_width).multipliedBy(0.50)
			make.height.equalTo(btnTopLeft.snp_height).multipliedBy(0.45)
			make.top.equalTo(btnMiddleRight.snp_bottom).offset(1)
		}
		
		let btnBottomLeft = Button()
		btnBottomLeft.setTitle("Bottom Left", forState: .Normal)
		btnBottomLeft.setTitleColor(UIColor.redColor(), forState: .Normal)
		self.view.addSubview(btnBottomLeft)
		btnBottomLeft.snp_makeConstraints { (make) -> Void in
			make.left.equalTo(view)
			make.width.equalTo(view.snp_width).multipliedBy(0.50)
			make.height.equalTo(btnTopLeft.snp_height).multipliedBy(0.30)
			make.top.equalTo(btnLowerLeft.snp_bottom).offset(1)
		}
		
		let btnBottomRight = Button()
		btnBottomRight.setTitle("Bottom Right", forState: .Normal)
		btnBottomRight.setTitleColor(UIColor.redColor(), forState: .Normal)
		self.view.addSubview(btnBottomRight)
		btnBottomRight.snp_makeConstraints { (make) -> Void in
			make.left.equalTo(btnBottomLeft.snp_right).offset(1)
			make.width.equalTo(view.snp_width).multipliedBy(0.50)
			make.height.equalTo(btnTopLeft.snp_height).multipliedBy(0.30)
			make.top.equalTo(btnLowerRight.snp_bottom).offset(1)
		}

		
	}
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

extension UIColor {
	
	convenience init(hex: Int) {
		let red = CGFloat((hex & 0xFF0000) >> 16) / 255.0
		let green = CGFloat((hex & 0xFF00) >> 8) / 255.0
		let blue = CGFloat(hex & 0xFF) / 255.0
		self.init(red: red, green: green, blue: blue, alpha: 1.0)
	}
}

