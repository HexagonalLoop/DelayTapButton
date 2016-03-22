//
//  SafeTapButton.swift
//
//  Created by Gaurav Keshre on 3/23/16.
//  Copyright © 2016 Gaurav Keshre. All rights reserved.
//

import Foundation
import UIKit
typealias TouchTouple = (Set<UITouch>, UIEvent?)


class DelayTapButton: UIButton {
	private var timer: NSTimer?
	private var info_ : TouchTouple?
	
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
		print(sender.userInfo)
		guard let touple = info_ else{
			return
		}
		super.touchesEnded(touple.0, withEvent: touple.1)
	}
	
	private func cleanUp(){
		timer?.invalidate()
		timer = nil
		info_ = nil
		
	}
	// MARK: - Overriden Methods
	/* ------------------------------------------------------------ */
	
	override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
		timer?.invalidate()
		timer = nil
		self.info_ = (touches, event)
		timer = NSTimer.scheduledTimerWithTimeInterval(_waitTimeInterval, target: self, selector: "action:", userInfo: nil, repeats: false)
	}
	
	override func didMoveToSuperview() {
		cleanUp()
	}
	override func removeFromSuperview() {
		cleanUp()
	}
}
