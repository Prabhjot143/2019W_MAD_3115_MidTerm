//
//  StudentEntryViewController.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class StudentEntryViewController: UIViewController ,UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentArray.count
    }
    
    
    
    var studentArray:[Student] = []
    @IBOutlet weak var StudentEntryViewController : UITableView?
    override func viewDidLoad() {
        super.viewDidLoad()
        StudentEntryViewController?.delegate = self
        StudentEntryViewController?.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    }
    func loadStudentData()
    {
        
    }
    
    
    @IBOutlet weak var Studentid: UITextField!
    
    @IBOutlet weak var StudentName: UITextField!
    
    
    @IBOutlet weak var StudentGender: UITextField!
    
    @IBOutlet weak var Corse: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var BirthDate: UIDatePicker!
    
    @IBOutlet weak var percentage: UITextField!
    
    
    @IBOutlet weak var Grade: UITextField!
    
   
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
