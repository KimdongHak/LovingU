//
//  EventDay.swift
//  LovingU
//
//  Created by ketis on 2017. 8. 21..
//  Copyright © 2017년 ketis. All rights reserved.
//

import UIKit
var direction_number = 0
var collection_main = ["20170805_01","20170812_01","Heart","20170819_01"]
var collection_label = ["20170805 대학로", "20170812 강남역", "20170813 건국대학교", "20170819 강남역"]
var collection_1_20170805 = ["20170805_01","20170805_02","20170805_03","20170805_04","20170805_05","20170805_06"] // 6개
var collection_2_20170812 = ["20170812_01"] // 1개
var collection_3_20170813 = ["Heart"] // 1개
var collection_4_20170819 = ["20170819_01","20170819_02","20170819_03","20170819_04","20170819_05","20170819_06","20170819_07","20170819_08","20170819_09","20170819_10","20170819_11"] // 11개
var DetailEventImage = [""]
class EventDay: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    @IBOutlet weak var EventCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        EventCollectionView.dataSource = self
        EventCollectionView.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collection_main.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "EventCell", for: indexPath) as! EventDayCell
        cell.EventImage.image = UIImage(named: collection_main[indexPath.row])
        cell.EventLabel.text = collection_label[indexPath.row]
        cell.EventLabel.font = UIFont(name: cell.EventLabel.font.fontName, size: 10)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        DetailEventImage.removeAll()
        switch(indexPath.row)
        {
        case 0:
            DetailEventImage = collection_1_20170805
            direction_number = 0
            break
        case 1:
            DetailEventImage = collection_2_20170812
            direction_number = 1
            break
        case 2:
            DetailEventImage = collection_3_20170813
            direction_number = 2
            break
        case 3:
            direction_number = 3
            DetailEventImage = collection_4_20170819
            break
        default :
            break
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
