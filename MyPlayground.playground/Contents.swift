import UIKit

class MailTextViewController: UIViewController {
    
    var emailTextField: UITextField!
    var phoneTextField: UITextField!
    var subjectTextField: UITextField!
    var emailBodyTextView: UITextView!
    var boldButton: UIButton!
    var italicButton: UIButton!
    var underlineButton: UIButton!
    var sendButton: UIButton!
    
    func boldButtonAction(_ sender: UIButton) {
        
        let attributedText = NSMutableAttributedString(attributedString: emailBodyTextView.attributedText)
        
        let font = UIFont.boldSystemFont(ofSize: 17)
        
        let attribute: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: font]
        
        attributedText.addAttributes(attribute, range: emailBodyTextView.selectedRange)
        
        emailBodyTextView.attributedText = attributedText
        
        
    }
    
    func italicButtonAction(_ sender: UIButton) {
        
        let attributedText = NSMutableAttributedString(attributedString: emailBodyTextView.attributedText)
        
        let font = UIFont.italicSystemFont(ofSize: 17)
        
        let attribute: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: font]
        
        attributedText.addAttributes(attribute, range: emailBodyTextView.selectedRange)
        
        emailBodyTextView.attributedText = attributedText
        
        
    }
    
    func underlineButtonAction(_ sender: UIButton) {
        
        let attributedText = NSMutableAttributedString(attributedString: emailBodyTextView.attributedText)
        
        attributedText.addAttribute(NSAttributedString.Key.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: emailBodyTextView.selectedRange)
        
        emailBodyTextView.attributedText = attributedText
        
    }
    
    func sendButtonAction(_ sender: UIButton) {
        
        emailTextField.text = ""
        phoneTextField.text = ""
        subjectTextField.text = ""
        emailBodyTextView.text = ""
        
        print("e-mail sended!")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        boldButton.layer.cornerRadius = 10
        italicButton.layer.cornerRadius = 10
        underlineButton.layer.cornerRadius = 10
        sendButton.layer.cornerRadius = 10
        
        emailBodyTextView.layer.cornerRadius = 10
        emailBodyTextView.layer.borderWidth = 1
        
        emailTextField.layer.borderWidth = 1
        emailTextField.layer.cornerRadius = 10
        phoneTextField.layer.borderWidth = 1
        phoneTextField.layer.cornerRadius = 10
        subjectTextField.layer.borderWidth = 1
        subjectTextField.layer.cornerRadius = 10
        
        phoneTextField.delegate = self
        
    }
    
}

extension MailTextViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if let phoneText = phoneTextField.text {
            
            if phoneTextField.text!.count == 0 {
                phoneTextField.text = "+\(phoneText)"
            } else if phoneTextField.text!.count == 3 {
                phoneTextField.text = "\(phoneText)("
            } else if phoneTextField.text!.count == 6 {
                phoneTextField.text = "\(phoneText))"
            }
        }
        
        if phoneTextField.text!.count > 15 {
            return false
        }
        return true
    }
    
    
}
