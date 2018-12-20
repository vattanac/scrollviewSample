//
//  ViewController.swift
//  ScrolView2
//
//  Created by Vattanac on 12/20/18.
//  Copyright © 2018 vattanac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var imageView:UIImageView!
    var scrollView:UIScrollView!
    
    var image = UIImage(named: "a")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView = UIImageView(image: image)
        scrollView = UIScrollView(frame: view.bounds)
        scrollView.addSubview(imageView)
        scrollView.contentSize = imageView.bounds.size
        view.addSubview(scrollView)
        scrollView.delegate = self
    }


}
extension ViewController:UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("Now at TOP")
    }
    func scrollViewDidZoom(_ scrollView: UIScrollView) {
        print("Zoom finish")
    }
}

