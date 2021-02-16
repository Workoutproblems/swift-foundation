

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureTextField()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func configureTextField() {
        
        // these are all configured with enumerations
        myTextField.autocapitalizationType = .none
        myTextField.autocorrectionType = .yes
        myTextField.returnKeyType = .default
        myTextField.keyboardAppearance = .light
        myTextField.clearButtonMode = .never

    }


}

