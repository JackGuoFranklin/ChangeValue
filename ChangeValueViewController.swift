

import UIKit

protocol ChangeValueDelegate {
    
    func changeValue(value:String)
    
}

class ChangeValueViewController: UIViewController {
    
    var delegate:ChangeValueDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.whiteColor()
        
        self.delegate?.changeValue("ok")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
