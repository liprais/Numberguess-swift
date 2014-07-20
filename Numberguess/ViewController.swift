import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    var mystic = Number()
    
    @IBOutlet var myTextField:UITextField

    @IBOutlet var myResultTextField:UITextField

    @IBOutlet var myButton:UIButton
    
    @IBOutlet var myOtherButton:UIButton
    
    @IBOutlet var myHistoryButton:UIButton
    
    @IBAction func buttonClicked() {
        UIrefresh()
    }
        
    @IBAction func check() {
        println("touched")
        println(self.myTextField.text)
        mystic.guess = self.myTextField.text
        var ans = mystic.compare(mystic.target,n:mystic.guess)
        myResultTextField.text = ans
        if ans == mystic.target {
            displaywin()
        }
    }
    
    @IBAction func displaywin() {
        
    }
    
    func UIrefresh() {
        mystic.refresh()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }


}

