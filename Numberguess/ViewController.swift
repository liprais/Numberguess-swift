import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    var mystic = Number()
    
    @IBOutlet var myTextField:UITextField

    @IBOutlet var myResultTextField:UITextField

    @IBOutlet var myButton:UIButton
    
    @IBOutlet var myOtherButton:UIButton
    
    @IBOutlet var myans:UILabel
    
    @IBAction func buttonClicked() {
        refresh()
    }
        
    @IBAction func check() {
        println("touched")
        println(self.myTextField.text)
        mystic.guess = self.myTextField.text
        var ans = mystic.compare(mystic.target,n:mystic.guess)
        myResultTextField.text = ans
    }
    
    func revealans(){
        self.myans.text = mystic.target
    }
    
    func refresh() {
        mystic.refresh()
        revealans()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }


}

