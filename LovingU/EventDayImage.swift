//
//  EventDayImage.swift
//  LovingU
//
//  Created by ketis on 2017. 8. 21..
//  Copyright © 2017년 ketis. All rights reserved.
//

import UIKit

class EventDayImage: UIViewController, UIScrollViewDelegate{

    @IBOutlet weak var PageControl: UIPageControl!
    @IBOutlet weak var SlideScrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        SlideScrollView.delegate = self
        let slides:[Slide] = createSlides()
        setupSlideScrollView(slides: slides)
        PageControl.numberOfPages = slides.count
        PageControl.currentPage = 0
        view.bringSubview(toFront: PageControl)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func createSlides() -> [Slide]{
        let slide1:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide1.SlideImage.image = UIImage(named: DetailEventImage[0])
        if(direction_number == 1 || direction_number == 2)
        {
            return [slide1]
        }
        let slide2:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide2.SlideImage.image = UIImage(named: DetailEventImage[1])
        let slide3:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide3.SlideImage.image = UIImage(named: DetailEventImage[2])
        let slide4:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide4.SlideImage.image = UIImage(named: DetailEventImage[3])
        let slide5:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide5.SlideImage.image = UIImage(named: DetailEventImage[4])
        let slide6:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide6.SlideImage.image = UIImage(named: DetailEventImage[5])
        if(direction_number==0){
            return [slide1,slide2,slide3,slide4,slide5,slide6]
        }
        let slide7:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide7.SlideImage.image = UIImage(named: DetailEventImage[6])
        let slide8:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide8.SlideImage.image = UIImage(named: DetailEventImage[7])
        let slide9:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide9.SlideImage.image = UIImage(named: DetailEventImage[8])
        let slide10:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide10.SlideImage.image = UIImage(named: DetailEventImage[9])
        let slide11:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide11.SlideImage.image = UIImage(named: DetailEventImage[10])
        return [slide1,slide2,slide3,slide4,slide5,slide6,slide7,slide8,slide9,slide10,slide11]
    }
    func setupSlideScrollView(slides: [Slide]){
        SlideScrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        SlideScrollView.contentSize = CGSize(width: view.frame.width * CGFloat(slides.count), height: view.frame.height)
        SlideScrollView.isPagingEnabled = true
        for i in 0 ..< slides.count {
            slides[i].frame = CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width
                , height: view.frame.height)
            SlideScrollView.addSubview(slides[i])
        }
        
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageIndex = round(scrollView.contentOffset.x/view.frame.width)
        PageControl.currentPage = Int(pageIndex)
        
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
