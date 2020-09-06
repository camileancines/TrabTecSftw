import UIKit

class MailTextViewController: UIViewController {
    
    var emailBodyTextView: UITextView!
    
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
}
