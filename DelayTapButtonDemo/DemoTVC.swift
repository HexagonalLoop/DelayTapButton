//
//  DemoTVC.swift
//  SafeButtonDemo
//
//  Created by Gaurav Keshre on 3/22/16.
//  Copyright © 2016 Gaurav Keshre. All rights reserved.
//

import Foundation
import UIKit

class DemoTVC: UITableViewController {
	
	@IBOutlet weak var lblAction: UILabel!
	@IBOutlet weak var btnBlue: DelayTapButton!
	@IBOutlet weak var lblDelay: UILabel!
	//	var timer: NSTimer?
	
	override func viewDidLoad() {
		super.viewDidLoad()
		self.lblDelay.text = "\(0.5)"
		self.btnBlue.waitTimeInterval = Float(self.lblDelay.text!)!
	}
	
	@IBAction func handleSafeButton(sender: AnyObject) {
		let str = "Action : \(random())"
		self.lblAction.text = str
	}
	
	@IBAction func sliderAction(sender: UISlider) {
		self.lblDelay.text = "\(sender.value)"
		self.btnBlue.waitTimeInterval = Float(self.lblDelay.text!)!
		
	}
	
}