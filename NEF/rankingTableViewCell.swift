//
//  rankingTableViewCell.swift
//  NEF
//
//  Created by include tech. on 28/12/16.
//  Copyright © 2016 include tech. All rights reserved.
//

import UIKit
import SnapKit

class rankingTableViewCell: UITableViewCell {

	var numberLabel = UILabel ()
	var numberSeparator = UIView()
	var nameLabel = UILabel ()
	var teamLabel = UILabel ()
	var timeLabel = UILabel ()
	var rankLabel = UILabel ()
	
	override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
        // Initialization code
		
		self.contentView.addSubview(numberLabel)
		numberLabel.snp.makeConstraints { (make) -> Void in
			make.centerY.equalTo(self.contentView)
			make.left.equalTo(self.contentView).offset(10)
		}
		
		self.contentView.addSubview(numberSeparator)
		numberSeparator.snp.makeConstraints { (make) -> Void in
			make.left.equalTo(numberLabel)
		}
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
