//
//  WelcomeViewController.swift
//  Login2
//
//  Created by Elena Kolesova on 06.06.2021.
//

import Foundation
import UIKit

class WelcomeViewController: UIViewController {
    
    var user = ""

    @IBOutlet weak var welcomeLabel: UILabel!
    
    @IBAction func exitWelcomeAction(_ sender: Any) {
        dismiss(animated: true)
    }
    private let primaryColor = UIColor(
        red: 210/255,
        green: 109/255,
        blue: 18/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        red: 17/255,
        green: 148/255,
        blue: 230/255,
        alpha: 1
    )
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        welcomeLabel.text = "Welcome, \(user)!"
    }

}


// MARK: - Set background color
extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 1)
        gradient.endPoint = CGPoint(x: 1, y: 0)
        layer.insertSublayer(gradient, at: 0)
    }
}
