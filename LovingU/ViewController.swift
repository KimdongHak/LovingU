//
//  ViewController.swift
//  LovingU
//
//  Created by ketis on 2017. 8. 21..
//  Copyright © 2017년 ketis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTabBar: UITabBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        myTabBar?.tintColor = UIColor.white
        myTabBar?.backgroundColor = UIColor.white
        tabBarItem.title = ""
        
        setTabBarItems()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func setTabBarItems(){
        let myTabBarItem1 = (self.myTabBar.items?[0])! as UITabBarItem
        myTabBarItem1.image = UIImage(named: "Icon-40")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        myTabBarItem1.title = "Event Day"

        let myTabBarItem2 = (self.myTabBar.items?[1])! as UITabBarItem
        myTabBarItem2.image = UIImage(named: "Icon-41")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        myTabBarItem2.title = "Favorite-Place"
        
        
        let myTabBarItem3 = (self.myTabBar.items?[2])! as UITabBarItem
        myTabBarItem3.image = UIImage(named: "Icon-42")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        myTabBarItem3.title = "GGuGGu's Work"
        
        let myTabBarItem4 = (self.myTabBar.items?[3])! as UITabBarItem
        myTabBarItem4.image = UIImage(named: "Icon-43")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        myTabBarItem4.title = "Making Film"
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

