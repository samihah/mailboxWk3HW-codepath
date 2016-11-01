//
//  MailboxViewController.swift
//  MailboxDemo-wk3HW
//
//  Created by Samihah Azim on 10/26/16.
//  Copyright © 2016 Samihah Azim. All rights reserved.
//

import UIKit

class MailboxViewController: UIViewController {

    @IBOutlet weak var messageView: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var messageImage: UIImageView!
    var messageOriginalCenter: CGPoint!
    
    @IBOutlet weak var rightIcons: UIView!
    @IBOutlet weak var leftIcons: UIView!
    @IBOutlet weak var laterIcon: UIImageView!
    @IBOutlet weak var listIcon: UIImageView!
    @IBOutlet weak var archiveIcon: UIImageView!
    @IBOutlet weak var deleteIcon: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //this is where I set up the scroll view
        scrollView.contentSize = CGSize(width: 375, height: 1202)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPanMessage(_ sender: UIPanGestureRecognizer) {
        
        // starting point
        if sender.state == .began {
            messageOriginalCenter = messageImage.center
        }
        else if sender.state == .changed {
            
            //define center point of things that will be affected
            let translation = sender.translation(in: self.messageView)
            let messageCenter = messageImage.center.x
            messageImage.center = CGPoint(x: messageOriginalCenter.x + translation.x, y: messageOriginalCenter.y)
            leftIcons.center.x = messageCenter - 50
            rightIcons.center.x = messageCenter + 50
            
            
            
            if messageCenter >= 167 && messageCenter <= 267 {messageView.backgroundColor = UIColor.lightGray}
                //archive
            else if messageCenter >= 268 && messageCenter <= 399 {messageView.backgroundColor = UIColor.green; archiveIcon.alpha = 1; deleteIcon.alpha = 0}
                //delete
            else if messageCenter >= 400 {messageView.backgroundColor = UIColor.red; deleteIcon.alpha = 1; archiveIcon.alpha = 0; laterIcon.alpha = 0; listIcon.alpha = 0}
                //later
            else if messageCenter <= 166 && messageCenter >= 03 {messageView.backgroundColor = UIColor.yellow; laterIcon.alpha = 1; listIcon.alpha = 0}
                //list
            else if messageCenter <= 02 {messageView.backgroundColor = UIColor.brown; listIcon.alpha = 1; laterIcon.alpha = 0; archiveIcon.alpha = 0; deleteIcon.alpha = 0}
            
        
        }
        else if sender.state == .ended {
            
            //after spending 3 hours on the .ended state without luck on the spring back in the gray state or showing the list view or later view, I've given up on that part of the requirements. It would be truly amazing if concepts were explained in class. The "how" part is being explained well with the labs, but what's missing are the "why" and "what." Ex: explanations on why you use .translate or why you have to define the center of your view in a local variable before calling it, and "what" a .translate is or what a CGPoint is and why we use it or why we use it with an exclamation mark. These explanations would make a world of difference in helping us learn Swift.

            
            }
    }


}

