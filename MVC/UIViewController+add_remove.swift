//
//  UIViewController+add_remove.swift
//  
//
//  Created by Benjamin Hall on 02/07/2018.
//

import UIKit

@nonobjc extension UIViewController {

    // MARK: - Add child ViewController
    func add(_ child: UIViewController, frame: CGRect? = nil) {
        // Add child vc to parent
        addChildViewController(child)
        
        // Set frame of child within parent
        if let frame = frame {
            child.view.frame = frame
        }
        
        // Add childs view to parents view (the superview)
        view.addSubview(child.view)
        // Pass control to the child vc
        child.didMove(toParentViewController: self)
    }
    
    // MARK: - Remove child ViewController
    func remove() {
        // Resign control back to parent vc
        willMove(toParentViewController: nil)
        // Remove child vc view from superview
        view.removeFromSuperview()
        // Remoce child vc from parent vc
        removeFromParentViewController()
    }
    
    
}
