//
//  TopView.swift
//  WeatherCollectionView
//
//  Created by Apple on 7/7/20.
//  Copyright © 2020 knb. All rights reserved.
//

import UIKit

class TopView: UIView {
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let cityLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hanoi"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 33)
        return label
    }()
    
    let currentWeatherLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sunny"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 18, weight: .light)
        return label
    }()
    
    let degreeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "33°"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 100, weight: .thin)
        return label
    }()
    
    let dateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Wednesday"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    let todayLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "TODAY"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        return label
    }()
    
    let leftBottomDegreeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "36"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    let rightBottomDegreeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "23"
        label.textColor = UIColor(white: 1, alpha: 0.5)
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLayout() {
        self.addSubview(containerView)
        self.addSubview(cityLabel)
        self.addSubview(currentWeatherLabel)
        self.addSubview(degreeLabel)
        self.addSubview(dateLabel)
        self.addSubview(todayLabel)
        self.addSubview(rightBottomDegreeLabel)
        self.addSubview(leftBottomDegreeLabel)
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: self.topAnchor),
            containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            cityLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 70),
            cityLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
//            cityLabel.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        NSLayoutConstraint.activate([
            currentWeatherLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 7),
            currentWeatherLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
//            currentWeatherLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        NSLayoutConstraint.activate([
            degreeLabel.topAnchor.constraint(equalTo: currentWeatherLabel.bottomAnchor, constant: 15),
            degreeLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
//            degreeLabel.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        NSLayoutConstraint.activate([
            dateLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            dateLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -15),
//            dateLabel.heightAnchor.constraint(equalToConstant: 20),
//            dateLabel.widthAnchor.constraint(equalToConstant: 110)
        ])
        
        NSLayoutConstraint.activate([
            todayLabel.leadingAnchor.constraint(equalTo: dateLabel.trailingAnchor, constant: 10),
            todayLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -15),
//            todayLabel.heightAnchor.constraint(equalToConstant: 16),
//            todayLabel.widthAnchor.constraint(equalToConstant: 60)
        ])
        
        NSLayoutConstraint.activate([
            rightBottomDegreeLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            rightBottomDegreeLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -15),
//            rightBottomDegreeLabel.heightAnchor.constraint(equalToConstant: 20),
//            rightBottomDegreeLabel.widthAnchor.constraint(equalToConstant: 30)
        ])
        
        NSLayoutConstraint.activate([
            leftBottomDegreeLabel.trailingAnchor.constraint(equalTo: rightBottomDegreeLabel.leadingAnchor, constant: -20),
            leftBottomDegreeLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -15),
//            leftBottomDegreeLabel.heightAnchor.constraint(equalToConstant: 20),
//            leftBottomDegreeLabel.widthAnchor.constraint(equalToConstant: 30)
        ])
    }
    
}
