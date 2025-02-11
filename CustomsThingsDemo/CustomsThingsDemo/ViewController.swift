//
//  ViewController.swift
//  CustomsThingsDemo
//
//  Created by Arvaan Jeni on 21/11/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBSegueAction func prepareForSegue(_ coder: NSCoder) -> SecondViewController? {
           // Prepare data for SecondViewController
           let secondVC = SecondViewController(coder: coder)
           secondVC?.receivedData = "Data passed from ViewController"
           return secondVC
       }
}

@IBDesignable
class CustomButtons: UIButton {

    // @IBInspectable property to allow color changes from the storyboard
    @IBInspectable var maroColor: UIColor = .clear {
        didSet {
            // Update the button's background color when the property changes
            self.backgroundColor = maroColor
        }
    }
    
    @IBInspectable var borderColor: UIColor = .clear {
        didSet {
            // Update the button's background color when the property changes
            self.layer.borderColor = borderColor.cgColor
        }
    }

    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            // Update the button's background color when the property changes
            self.layer.borderWidth = borderWidth
        }
    }
    
     
    
    @IBInspectable var cornerReduis: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerReduis
        }
    }
    
    @IBInspectable var shedoColor: UIColor = .clear {
        didSet {
            self.layer.shadowColor = shedoColor.cgColor
            self.layer.shadowOffset = CGSize(width: 0, height: 3)
            self.layer.shadowOpacity = 1.0
            self.layer.shadowRadius = 10.0
            self.layer.masksToBounds = false
        }
    }
    
    // Overriding the init(frame:) to ensure background color is applied properly
    override init(frame: CGRect) {
        super.init(frame: frame)
        // Apply background color when button is initialized programmatically
       
    }

    // Overriding required init(coder:) to apply background color when loaded from storyboard
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        // Apply background color when button is loaded from storyboard
       
    }

    // Overriding awakeFromNib to ensure button setup is done correctly when loaded from storyboard
    override func awakeFromNib() {
        super.awakeFromNib()
        setupButton()
    }

    // This method is called when the button is loaded from the storyboard
    func setupButton() {
        // Ensure the background color is set when the button is loaded
        self.backgroundColor = maroColor
    }
}
