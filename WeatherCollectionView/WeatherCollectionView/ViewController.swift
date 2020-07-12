//
//  ViewController.swift
//  WeatherCollectionView
//
//  Created by Apple on 7/7/20.
//  Copyright © 2020 knb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let backgroundImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "weather-background")
        return imageView
    }()
    
    let topView: TopView = {
        let view = TopView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let upperLineView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(white: 1, alpha: 0.5)
        return view
    }()
    
    let centerCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.register(CollectionViewCell.self, forCellWithReuseIdentifier: "CollectionViewCell")
        collection.backgroundColor = .none
        collection.showsHorizontalScrollIndicator = false
        collection.bounces = false
        return collection
    }()
    
    let belowLineView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(white: 1, alpha: 0.5)
        return view
    }()
    
    let bottomTableView: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        table.showsVerticalScrollIndicator = false
        table.bounces = false
        return table
    }()
    
    let weatherData = getWeatherData()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        setupTopViewData()
        
        centerCollectionView.delegate = self
        centerCollectionView.dataSource = self
        
        bottomTableView.delegate = self
        bottomTableView.dataSource = self
        
        bottomTableView.backgroundView = nil
        bottomTableView.backgroundColor = .none
        bottomTableView.separatorStyle = .none
        
        if let flowLayout = centerCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.scrollDirection = .horizontal
        }
    }
    
    func setupTopViewData() {
        topView.cityLabel.text = weatherData.cityName
        topView.currentWeatherLabel.text = weatherData.nowWeather
        topView.dateLabel.text = weatherData.todayName
        topView.leftBottomDegreeLabel.text = weatherData.todayMinDegree
        topView.rightBottomDegreeLabel.text = weatherData.todayMaxDegree
    }

    func setupLayout() {
        view.addSubview(backgroundImage)
        view.addSubview(topView)
        view.addSubview(upperLineView)
        view.addSubview(centerCollectionView)
        view.addSubview(belowLineView)
        view.addSubview(bottomTableView)
        
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            topView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            topView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/2)
        ])
        
        NSLayoutConstraint.activate([
            upperLineView.topAnchor.constraint(equalTo: topView.bottomAnchor),
            upperLineView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
            upperLineView.heightAnchor.constraint(equalToConstant: 1/2)
        ])
        
        NSLayoutConstraint.activate([
            centerCollectionView.topAnchor.constraint(equalTo: topView.bottomAnchor),
            centerCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            centerCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            centerCollectionView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/6)
        ])
        
        NSLayoutConstraint.activate([
            belowLineView.topAnchor.constraint(equalTo: centerCollectionView.bottomAnchor),
            belowLineView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
            belowLineView.heightAnchor.constraint(equalToConstant: 1/2)
        ])
        
        NSLayoutConstraint.activate([
            bottomTableView.topAnchor.constraint(equalTo: centerCollectionView.bottomAnchor),
            bottomTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UITableViewDelegate, UITableViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return weatherData.hourWeather.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.topLabel.text = weatherData.hourWeather[indexPath.row].hour
        cell.iconImageView.image = UIImage(named: weatherData.hourWeather[indexPath.row].iconName)
        cell.bottomLabel.text = weatherData.hourWeather[indexPath.row].degree
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = CGSize(width: collectionView.bounds.height / 2, height: collectionView.bounds.height)
        return size
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weatherData.weekWeather.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = bottomTableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.dateLabel.text = weatherData.weekWeather[indexPath.row].day
        cell.iconImageView.image = UIImage(named: weatherData.weekWeather[indexPath.row].iconName)
        cell.leftDegreeLabel.text = weatherData.weekWeather[indexPath.row].minDegree
        cell.rightDegreeLabel.text = weatherData.weekWeather[indexPath.row].maxDegree
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 37
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.backgroundColor = .clear
    }
}

