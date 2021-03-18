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
    @IBAction func cancel(sender: AnyObject){
        dismiss(animated: false, completion: nil)
    }
    
    var detailItem: Book? {
        didSet {
            // Update the view
        }
    }
    
    func configureView() {
        if let myBook = detailItem {
            titleLabel.text = myBook.title
            authorLabel.text = myBook.author
            yearLabel.text = myBook.year
            descriptionTextView.text = myBook.description
        }
    }

        
    override func viewDidLoad() {
        super.viewDidLoad() // Do any additional setup after loading the view.
        configureView()
    }

        

}	
