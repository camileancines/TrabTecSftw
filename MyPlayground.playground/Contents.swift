import UIKit

class MailTextViewController: UIViewController {
    
    //MARK: - Componente da tela: TextView onde o texto do e-mail será digitado.
    var emailContentTextView: UITextView!
    
    //MARK: - Componentes de texto:
    var textFont: UIFont!
    var attributedText: NSMutableAttributedString!
    var setTextAttribute: [NSAttributedString.Key: Any]!
    
    //MARK: - Funções para atribuição da ação de  cada botão.
    
    //MARK: - Ação do botão que atribui 'negrito' ao texto selecionado.
    func setBoldTextButtonAction(_ sender: UIButton) {
        
        textFont = UIFont.boldSystemFont(ofSize: 17)
        attributedText = NSMutableAttributedString(attributedString: emailContentTextView.attributedText)
        setTextAttribute = [NSAttributedString.Key.font: textFont as Any]
        attributedText.addAttributes(setTextAttribute, range: emailContentTextView.selectedRange)
        
        emailContentTextView.attributedText = attributedText
        
    }
    
    //MARK: - Ação do botão que atribui 'itálico' ao texto selecionado.
    func setItalicTextButtonAction(_ sender: UIButton) {
        
        textFont = UIFont.italicSystemFont(ofSize: 17)
        attributedText = NSMutableAttributedString(attributedString: emailContentTextView.attributedText)
        setTextAttribute = [NSAttributedString.Key.font: textFont as Any]
        attributedText.addAttributes(setTextAttribute, range: emailContentTextView.selectedRange)
        
        emailContentTextView.attributedText = attributedText
        
    }
    
    //MARK: - Ação do botão que atribui 'sublinhado' ao texto selecionado.
    func setUnderlineTextButtonAction(_ sender: UIButton) {
        
        attributedText = NSMutableAttributedString(attributedString: emailContentTextView.attributedText)
        attributedText.addAttribute(NSAttributedString.Key.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: emailContentTextView.selectedRange)
        
        emailContentTextView.attributedText = attributedText
        
    }
}
