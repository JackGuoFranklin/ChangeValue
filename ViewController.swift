
import UIKit

class ViewController: UIViewController,ChangeValueDelegate{
    
    var btn = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.whiteColor()
        
        btn.setTitle("Change", forState:.Normal)
        btn.backgroundColor = UIColor.blueColor()
        btn.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
        btn.addTarget(self, action: #selector(change), forControlEvents: .TouchUpInside)
        self.view.addSubview(btn)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //    delegate
    func changeValue(value: String) {
        
        btn.setTitle(value, forState: .Normal)
        print("value:\(value)")
        
    }
    
    func change(){
        
        let vc = ChangeValueViewController()
        vc.delegate = self
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}
