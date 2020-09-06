import UIKit

class MailTextViewController: UIViewController {
    
    var emailContentTextView: UITextView!
    
    var textFont: UIFont!
    var attributedText: NSMutableAttributedString!
    var setTextAttribute: [NSAttributedString.Key: Any]!
    
    func setBoldTextButtonAction(_ sender: UIButton) {
        
        attributedText = NSMutableAttributedString(attributedString: emailContentTextView.attributedText)
        textFont = UIFont.boldSystemFont(ofSize: 17)
        setTextAttribute = [NSAttributedString.Key.font: textFont as Any]
        attributedText.addAttributes(setTextAttribute, range: emailContentTextView.selectedRange)
        
        emailContentTextView.attributedText = attributedText
        
    }
    
    func setItalicTextButtonAction(_ sender: UIButton) {
        
        attributedText = NSMutableAttributedString(attributedString: emailContentTextView.attributedText)
        textFont = UIFont.italicSystemFont(ofSize: 17)
        setTextAttribute = [NSAttributedString.Key.font: textFont as Any]
        attributedText.addAttributes(setTextAttribute, range: emailContentTextView.selectedRange)
        
        emailContentTextView.attributedText = attributedText
        
    }
    
    func setUnderlineTextButtonAction(_ sender: UIButton) {
        
        attributedText = NSMutableAttributedString(attributedString: emailContentTextView.attributedText)
        attributedText.addAttribute(NSAttributedString.Key.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: emailContentTextView.selectedRange)
        
        emailContentTextView.attributedText = attributedText
        
    }
}
