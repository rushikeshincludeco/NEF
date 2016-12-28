//
//  rankingTableViewController.swift
//  NEF
//
//  Created by include tech. on 28/12/16.
//  Copyright © 2016 include tech. All rights reserved.
//

import UIKit
import GlyuckDataGrid

class rankingTableViewController: UIViewController, DataGridViewDataSource, DataGridViewDelegate{

	var tableView = DataGridView()
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		tableView.delegate      =   self
		tableView.dataSource    =   self
		self.view.addSubview(self.tableView)
		tableView.snp.makeConstraints { (make) -> Void in
			make.left.right.top.bottom.equalTo(view)
		}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

	func numberOfColumnsInDataGridView(_ dataGridView: DataGridView) -> Int {
		return 5
	}
	
	// And number of rows
	func numberOfRowsInDataGridView(_ dataGridView: DataGridView) -> Int {
		return 10
	}

	// Then you'll need to provide titles for columns headers
	func dataGridView(_ dataGridView: DataGridView, titleForHeaderForRow row: Int) -> String {
		return String(row + 1)
	}
	
	// And rows headers
	func dataGridView(_ dataGridView: DataGridView, titleForHeaderForColumn column: Int) -> String {

		switch column {
		case 0:
			return "No"
		case 1:
			return "Name"
		case 2:
			return "Rank"
		case 3:
			return "Team"
		case 4:
			return "Time"
		default:
			return "Sample"
		}
	}
	
	// And for text for content cells
	func dataGridView(_ dataGridView: DataGridView, textForCellAtIndexPath indexPath: IndexPath) -> String {

		switch indexPath.row {
		case 0:
			return String(indexPath.dataGridRow)
		case 1:
			return "Hello " + String(indexPath.dataGridRow)
		case 2:
			return String(indexPath.dataGridRow)
		case 3:
			return "Team A"
		case 4:
			return String(describing: NSDate())
		default:
			return "Sample"
		}
	}
	func dataGridView(_ dataGridView: DataGridView, widthForColumn column: Int) -> CGFloat {
		let width = UIScreen.main.bounds.size.width
		switch column {
		case 0:
			return width * 0.10
		case 1:
			return width * 0.40
		case 2:
			return width * 0.10
		case 3:
			return width * 0.20
		case 4:
			return width * 0.30
		default:
			return 0
		}
	}
}
