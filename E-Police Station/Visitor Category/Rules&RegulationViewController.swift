//
//  Rules&RegulationViewController.swift
//  E-Police Station
//
//  Created by Apple on 25/12/23.
//

import UIKit

class Rules_RegulationViewController: UIViewController {
    
    @IBOutlet weak var MyScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MyScrollView.contentSize = CGSize(width: 0, height: 0)

                // Call your atomic scroll function
                atomicScroll(to: CGPoint(x: 0, y: 800), animated: true, duration: 15.0)
    }
    func atomicScroll(to point: CGPoint, animated: Bool, duration: TimeInterval) {
           // Use UIView animations to scroll smoothly to the desired point
           if animated {
               UIView.animate(withDuration: duration) {
                   self.MyScrollView.contentOffset = point
               }
           } else {
               // If not animated, simply set the content offset without animation
               self.MyScrollView.contentOffset = point
           }
       }
}
