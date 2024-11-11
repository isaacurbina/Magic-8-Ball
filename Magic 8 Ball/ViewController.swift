//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
	@IBOutlet weak var imageView: UIImageView!
		
	@IBAction func askButtonPressed(_ sender: Any) {
		imageView.image = ballArray[Int.random(in: 0 ... 4)]
		showImage()
	}
	
    private let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png")]

	@objc func showImage() {
			// Fade the image in (make it visible)
			UIView.animate(withDuration: 1.0, animations: {
				self.imageView.alpha = 1.0
			}) { _ in
				// After 3 seconds, fade the image out
				DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
					UIView.animate(withDuration: 1.0, animations: {
						self.imageView.alpha = 0.0
					})
				}
			}
		}

}

