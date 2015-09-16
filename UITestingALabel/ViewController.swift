import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!

    @IBAction func buttonPressed(sender: UIButton) {
        myLabel.text = sender.titleLabel?.text
    }

}

