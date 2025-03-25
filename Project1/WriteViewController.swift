import UIKit

class WriteViewController: UIViewController {
    
    
    @IBOutlet weak var titleTextField: UITextField!
    
    
    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var lmage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func saveButton(_ sender: UIButton) {
        guard let title = titleTextField.text, !title.isEmpty else { return }

                
                let newMemo = Memo(title: title)
                memoList.append(newMemo)

                
                dismiss(animated: true, completion: nil)
            }
    
}
    
    
