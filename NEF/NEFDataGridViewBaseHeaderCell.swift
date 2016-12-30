//
//  NEFDataGridViewBaseHeaderCell.swift
//  NEF
//
//  Created by include tech. on 28/12/16.
//  Copyright © 2016 include tech. All rights reserved.
//

import UIKit
import GlyuckDataGrid

open class NEFDataGridViewBaseHeaderCell: DataGridViewBaseHeaderCell {
	
	// MARK: - UIView
	open override static func initialize() {
		super.initialize()
		let appearance = DataGridViewColumnHeaderCell.appearance()
		appearance.backgroundColor = UIColor.white
		appearance.sortedBackgroundColor = UIColor(white: 220.0/255.0, alpha: 1)
		appearance.sortAscSuffix = " ↑"
		appearance.sortDescSuffix = " ↓"
		appearance.textLabelInsets = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 8)
		appearance.borderBottomColor = UIColor(white: 0.73, alpha: 1)
		appearance.borderBottomWidth = 1 / UIScreen.main.scale
		
		if let labelAppearance = UILabel.glyuck_appearanceWhenContained(in: DataGridViewColumnHeaderCell.self) {
			if #available(iOS 8.2, *) {
				labelAppearance.appearanceFont = UIFont.systemFont(ofSize: 12, weight: UIFontWeightRegular)
			} else {
				labelAppearance.appearanceFont = UIFont(name: "HelveticaNeue", size: 12)
			}
			labelAppearance.appearanceTextAlignment = .center
			labelAppearance.appearanceAdjustsFontSizeToFitWidth = true
			labelAppearance.appearanceMinimumScaleFactor = 0.5
			labelAppearance.appearanceNumberOfLines = 0
		}
	}

	
	// MARK: - Custom methods
	
	open override func didTap(_ gesture: UITapGestureRecognizer) {
		dataGridView.collectionViewDelegate.collectionView(dataGridView.collectionView, didTapHeaderForColumn: indexPath.index)
	}
}
