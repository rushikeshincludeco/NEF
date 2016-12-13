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
			make.height.equalTo(view).multipliedBy(0.35)
			make.top.equalTo(view)
		}
		
		let btnTopLeft = Button()
		btnTopLeft.setTitle("Top Left", forState: .Normal)
		btnTopLeft.setTitleColor(UIColor.redColor(), forState: .Normal)
		self.view.addSubview(btnTopLeft)
		btnTopLeft.snp_makeConstraints { (make) -> Void in
			make.left.equalTo(view)
			make.width.equalTo(view.snp_width).multipliedBy(0.50)
			make.height.equalTo(100)
			make.top.equalTo(topContainerView.snp_bottom)
		}
		
		let btnTopRight = Button()
		btnTopRight.setTitle("Top Right", forState: .Normal)
		btnTopRight.setTitleColor(UIColor.redColor(), forState: .Normal)
		self.view.addSubview(btnTopRight)
		btnTopRight.snp_makeConstraints { (make) -> Void in
			make.left.equalTo(btnTopLeft.snp_right)
			make.right.equalTo(view)
			make.width.equalTo(view.snp_width).multipliedBy(0.50)
			make.height.equalTo(100)
			make.top.equalTo(topContainerView.snp_bottom)
		}
		
		let btnMiddleLeft = Button()
		btnMiddleLeft.setTitle("Middle Left", forState: .Normal)
		btnMiddleLeft.setTitleColor(UIColor.redColor(), forState: .Normal)
		self.view.addSubview(btnMiddleLeft)
		btnMiddleLeft.snp_makeConstraints { (make) -> Void in
			make.left.equalTo(view)
			make.height.equalTo(100)
			make.width.equalTo(view.snp_width).multipliedBy(0.50)
			make.top.equalTo(btnTopLeft.snp_bottom)
		}
		
		let btnMiddleRight = Button()
		btnMiddleRight.setTitle("Middle Right", forState: .Normal)
		btnMiddleRight.setTitleColor(UIColor.redColor(), forState: .Normal)
		self.view.addSubview(btnMiddleRight)
		btnMiddleRight.snp_makeConstraints { (make) -> Void in
			make.left.equalTo(btnMiddleLeft.snp_right)
			make.right.equalTo(view)
			make.height.equalTo(100)
			make.width.equalTo(view.snp_width).multipliedBy(0.50)
			make.top.equalTo(btnTopRight.snp_bottom)
		}
		
		let btnLowerLeft = Button()
		btnLowerLeft.setTitle("Lower Left", forState: .Normal)
		btnLowerLeft.setTitleColor(UIColor.redColor(), forState: .Normal)
		self.view.addSubview(btnLowerLeft)
		btnLowerLeft.snp_makeConstraints { (make) -> Void in
			make.left.equalTo(view)
			make.width.equalTo(view.snp_width).multipliedBy(0.50)
			make.height.equalTo(100)
			make.top.equalTo(btnMiddleLeft.snp_bottom)
		}
		
		let btnLowerRight = Button()
		btnLowerRight.setTitle("Lower Right", forState: .Normal)
		btnLowerRight.setTitleColor(UIColor.redColor(), forState: .Normal)
		self.view.addSubview(btnLowerRight)
		btnLowerRight.snp_makeConstraints { (make) -> Void in
			make.left.equalTo(btnLowerLeft.snp_right)
			make.width.equalTo(view.snp_width).multipliedBy(0.50)
			make.right.equalTo(view)
			make.height.equalTo(100)
			make.top.equalTo(btnMiddleRight.snp_bottom)
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

