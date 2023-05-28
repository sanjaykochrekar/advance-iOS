// Delegation pattern in swift
// Simple implementaion of delegate pattern
// to communicate from tableViewCell to ViewController
// (You can also do same using callbacks)


import Foundation



//Create protocol with delegate method
protocol TipicalTableViewCellDelegate {
    func knowButtonTappedInCell()
}


class ViewController: TipicalTableViewCellDelegate {
    
    
    var tipicalTableViewCell: TipicalTableViewCell?
    
    init() {
        tipicalTableViewCell = TipicalTableViewCell()
        
        //assign delegate to self
        tipicalTableViewCell?.delegate = self
    }
    
    //Delegate method implementaion
    func knowButtonTappedInCell() {
        print("Printing this message from view controller!!!!")
    }
}




class TipicalTableViewCell {
    
    var delegate: TipicalTableViewCellDelegate?
    var timer: Timer?
    
    init() {
        // Added timer to mimic button touch event
        let times = Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(self.buttonClick), userInfo: nil, repeats: true)
    }
    
    @objc func buttonClick() {
        // Delegate method is called here
        delegate?.knowButtonTappedInCell()
    }
    
}


let viewController = ViewController()
