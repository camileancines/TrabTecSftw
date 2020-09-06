import UIKit

class MailTextViewController: UIViewController {
    
    var emailContentTextView: UITextView!
    
    func setBoldTextButtonAction(_ sender: UIButton) {
        
        let attributedText = NSMutableAttributedString(attributedString: emailContentTextView.attributedText)
        
        let textFont = UIFont.boldSystemFont(ofSize: 17)
        
        let setTextAttribute: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: textFont]
        
        attributedText.addAttributes(setTextAttribute, range: emailContentTextView.selectedRange)
        
        emailContentTextView.attributedText = attributedText
        
        
    }
    
    func setItalicTextButtonAction(_ sender: UIButton) {
        
        let attributedText = NSMutableAttributedString(attributedString: emailContentTextView.attributedText)
        
        let textFont = UIFont.italicSystemFont(ofSize: 17)
        
        let setTextAttribute: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: textFont]
        
        attributedText.addAttributes(setTextAttribute, range: emailContentTextView.selectedRange)
        
        emailContentTextView.attributedText = attributedText
        
        
    }
    
    func setUnderlineTextButtonAction(_ sender: UIButton) {
        
        let attributedText = NSMutableAttributedString(attributedString: emailContentTextView.attributedText)
        
        attributedText.addAttribute(NSAttributedString.Key.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: emailContentTextView.selectedRange)
        
        emailContentTextView.attributedText = attributedText
        
    }
}
