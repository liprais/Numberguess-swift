import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    var mystic = Number()
    
    @IBOutlet var myTextField:UITextField!

    @IBOutlet var myResultTextField:UITextField!

    @IBOutlet var myButton:UIButton!
    
    @IBOutlet var myOtherButton:UIButton!
    
    @IBOutlet var myHistoryButton:UIButton!
    
    @IBOutlet var myWinBanner:UIView!
    
    @IBAction func buttonClicked() {
        UIrefresh()
    }
        
    @IBAction func check() {
        println("touched")
        println(self.myTextField.text)
        mystic.guess = self.myTextField.text
        var ans = mystic.compare(mystic.target,n:mystic.guess)
        myResultTextField.text = ans
        println(ans)
        println(mystic.target)
        if ans == "4A0B" {
            displaywin()
        }
    }
    
    func displaywin() {
        var alert = UIAlertController(
            title: "Oh Shit",
            message: "You Won!",
            preferredStyle: UIAlertControllerStyle.Alert
        )
        //FIXME,ugly!
        alert.addAction(
            UIAlertAction(
                title: "Play Again!",
                style: .Default,
                handler: {
                    action in
                    switch action.style{
                        case .Default:
                            self.UIrefresh()
                        break
                
                        case .Cancel:
                        println("cancel")
                        break
                
                        case .Destructive:
                        println("destructive")
                        break
                    }
                }
            )
        )
        self.presentViewController(alert, animated: true, completion: nil)


    }
    
    func UIrefresh() {
        mystic.refresh()
        self.myTextField.text = ""
        self.myResultTextField.text = ""
        println(mystic.target)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }


}

