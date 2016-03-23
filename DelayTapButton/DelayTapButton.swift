//
//  SafeTapButton.swift
//
//  Created by Gaurav Keshre on 3/23/16.
//  Copyright © 2016 Gaurav Keshre. All rights reserved.
//

import Foundation
import UIKit
typealias TouchTouple = (Set<UITouch>, UIEvent?)


@IBDesignable class DelayTapButton: UIButton {
	
	private var timer: NSTimer?
	
	@IBInspectable var waitTimeInterval: Float = 0.5
	
	private var _waitTimeInterval: NSTimeInterval{
		return NSTimeInterval(waitTimeInterval)
	}
	
	// MARK: - LifeCycle Methods
	/* ------------------------------------------------------------ */
	
	deinit{
		cleanUp()
	}
	
	// MARK: - Private Helper Methods
	/* ------------------------------------------------------------ */
	
	
	func action(sender: NSTimer){
		self.sendActionsForControlEvents(UIControlEvents.TouchUpInside)
	}
	
	private func cleanUp(){
		timer?.invalidate()
		timer = nil
	}
	// MARK: - Overriden Methods
	/* ------------------------------------------------------------ */
	
	override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
		
		timer?.invalidate()
		timer = nil
		timer = NSTimer.scheduledTimerWithTimeInterval(_waitTimeInterval, target: self, selector: "action:", userInfo: nil, repeats: false)
		
		self.highlighted = false
	}
	
	override func didMoveToSuperview() {
		cleanUp()
	}
	override func removeFromSuperview() {
		cleanUp()
	}
}
