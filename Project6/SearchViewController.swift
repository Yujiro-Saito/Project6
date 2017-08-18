//
//  SearchViewController.swift
//  Project6
//
//  Created by  Yujiro Saito on 2017/07/05.
//  Copyright © 2017年 yujiro_saito. All rights reserved.
//

import UIKit
import XLPagerTabStrip


class SearchViewController: ButtonBarPagerTabStripViewController,UINavigationBarDelegate {
    
    
    @IBOutlet weak var searchNavBar: UINavigationBar!
    
    @IBOutlet weak var categoryLabel: ButtonBarView!
    
    

    override func viewDidLoad() {
        
        let viewWidth = self.view.frame.width
        
        //バーの色
        settings.style.buttonBarBackgroundColor = UIColor(red: 240/255.0, green: 240/255.0, blue: 240/255.0, alpha: 1.0)
        //ボタンの色
        settings.style.buttonBarItemBackgroundColor = UIColor(red: 240/255.0, green: 240/255.0, blue: 240/255.0, alpha: 1.0)
        //セルの文字色
        settings.style.buttonBarItemTitleColor = UIColor.darkGray
        //セレクトバーの色
        settings.style.selectedBarBackgroundColor = UIColor(red: 31/255.0, green: 158/255.0, blue: 187/255.0, alpha: 1.0)

        
        
        
        //Font size
        settings.style.buttonBarItemFont = UIFont.systemFont(ofSize: 17)
        
        //Selected bar line height
        settings.style.selectedBarHeight = 5
        
        
        
        super.viewDidLoad()
        
        searchNavBar.delegate = self
        //バーの高さ
        self.searchNavBar.frame = CGRect(x: 0,y: 0, width: UIScreen.main.bounds.size.width, height: 60)
        
        self.view.bringSubview(toFront: searchNavBar)

    }

    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        //管理されるViewControllerを返す処理
        let popularVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "popular")
        let oneVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "one")
        let twoVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "two")
        let threeVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "three")
        //let fourVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "four")
        let fiveVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "five")
        
        
        let childViewControllers:[UIViewController] = [popularVC, oneVC, twoVC, threeVC,fiveVC]
        return childViewControllers
    }

}
