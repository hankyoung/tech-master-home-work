//
//  TableViewCell.swift
//  WeatherCollectionView
//
//  Created by Apple on 7/7/20.
//  Copyright © 2020 knb. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let dateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Thursday"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    let iconImageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "day_rain")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let leftDegreeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "36"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    let rightDegreeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "23"
        label.textColor = UIColor(white: 1, alpha: 0.5)
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setupLayout()
    }
    
    func setupLayout() {
        self.addSubview(containerView)
        self.addSubview(dateLabel)
        self.addSubview(iconImageView)
        self.addSubview(rightDegreeLabel)
        self.addSubview(leftDegreeLabel)
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: self.topAnchor),
            containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
                
        NSLayoutConstraint.activate([
            dateLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            dateLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10)
        ])
        
        NSLayoutConstraint.activate([
            iconImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            iconImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            iconImageView.widthAnchor.constraint(equalToConstant: 20),
            iconImageView.heightAnchor.constraint(equalToConstant: 20)
        ])
                
        NSLayoutConstraint.activate([
            rightDegreeLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            rightDegreeLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10)
        ])
        
        NSLayoutConstraint.activate([
            leftDegreeLabel.trailingAnchor.constraint(equalTo: rightDegreeLabel.leadingAnchor, constant: -20),
            leftDegreeLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10)
        ])
    }
}
