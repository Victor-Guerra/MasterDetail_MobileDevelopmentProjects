//
//  DetailedViewController.swift
//  BookStore
//
//  Created by user190856 on 3/5/21.
//
import UIKit

class DetailedViewController: UIViewController {
    // MARK: Properties
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var pagesLabel: UILabel!
    @IBOutlet weak var readSwitch: UISwitch!
    @IBAction func cancel(sender: AnyObject){
        dismiss(animated: false, completion: nil)
    }
    var delegate: BookStoreDelegate? = nil;
    var myBook = Book()
    
    var detailItem: Book? {
        didSet {
            // Update the view
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "editDetail" {
            if let controller = segue.destination as? AddViewController {
                controller.delegate = delegate;
                controller.editBook = true;
                controller.book = myBook;
            }
        }
    }
    
    func configureView() {
        if let detailBook = detailItem {
            myBook = detailBook;
            titleLabel.text = myBook.title
            authorLabel.text = myBook.author
            yearLabel.text = myBook.year
            descriptionTextView.text = myBook.description
            pagesLabel.text = String(myBook.pages)
        
            if myBook.readThisBook {
                readSwitch.isOn = true
            } else {
                readSwitch.isOn = false
            }
        }
    }

        
    override func viewDidLoad() {
        super.viewDidLoad() // Do any additional setup after loading the view.
        configureView()
    }
    @IBAction func deleteBook(_ sender: UIBarButtonItem) {
        let alertController = UIAlertAction(title: "Warning", message: "Delete this book?", preferredStyle: .alert);
            let noAction = UIAlertAction(title:"No", style: .cancel) { (action) in
                print("Cancel");
            }
            
            alertController.addAction(noAction);
            
            let yesAction = UIAlertAction(title: "Yes", style: .destructive) { (action) in
                self.delegate?.deleteBook(self);
            }
            
            alertController.addAction(yesAction);
            
            present(alertController, animated:false, completion: nil);
        }
        

}	
