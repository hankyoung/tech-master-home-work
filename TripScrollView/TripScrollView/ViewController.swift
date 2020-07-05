//
//  ViewController.swift
//  TripScrollView
//
//  Created by Apple on 7/5/20.
//  Copyright © 2020 knb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let horizonScrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.contentSize = CGSize(width: UIScreen.main.bounds.width * CGFloat(3), height: UIScreen.main.bounds.height)
        scrollView.bounces = false
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.isPagingEnabled = true
        return scrollView
    }()
    
    let pageControl: UIPageControl = {
        let control = UIPageControl()
        control.currentPage = 0
        control.pageIndicatorTintColor = .blue
        control.currentPageIndicatorTintColor = .white
        control.translatesAutoresizingMaskIntoConstraints = false
        return control
    }()
    
    let datas = getData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
        horizonScrollView.delegate = self
    }

    func setupLayout() {
        view.addSubview(horizonScrollView)
        view.addSubview(pageControl)
        addImagesToLayout()
        pageControl.numberOfPages = datas.count
        
        NSLayoutConstraint.activate([
            horizonScrollView.topAnchor.constraint(equalTo: view.topAnchor),
            horizonScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            horizonScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            horizonScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            pageControl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pageControl.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20)
        ])
    }
    
    func addImagesToLayout() {
        for (i, data) in datas.enumerated() {
            let view = IntroduceView()
            view.imageView.image = UIImage(named: data.imageName)
            view.label.text = data.labelText
            view.textView.text = data.introduceText
            view.frame = CGRect(x: UIScreen.main.bounds.width * CGFloat(i), y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            horizonScrollView.addSubview(view)
        }
    }
    
}

extension ViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageIndex = round(horizonScrollView.contentOffset.x / UIScreen.main.bounds.width)
        pageControl.currentPage = Int(pageIndex)
    }
}
