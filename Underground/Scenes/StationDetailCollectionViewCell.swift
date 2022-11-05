//
//  StationDetailCollectionViewCell.swift
//  Underground
//
//  Created by YUJIN KWON on 2022/11/05.
//

import SnapKit
import UIKit

final class StationDetailCollectionViewCell: UICollectionViewCell {

    private lazy var lineLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15.0, weight: .bold)
        return label
    }()

    private lazy var timeRemainingLabel: UILabel = {
        let timeRemainingLabel = UILabel()
        timeRemainingLabel.font = .systemFont(ofSize: 15.0, weight: .medium)
        return timeRemainingLabel
    }()


    func setUp() {
        layer.cornerRadius = 12.0
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.2
        layer.shadowRadius = 10.0
        
        backgroundColor = .systemBackground
        
        [lineLabel, timeRemainingLabel].forEach { addSubview($0) }
        lineLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(16.0)
            $0.top.equalToSuperview().inset(16.0)
        }
        
        timeRemainingLabel.snp.makeConstraints {
            $0.leading.equalTo(lineLabel)
            $0.top.equalTo(lineLabel.snp.bottom).offset(16.0)
            $0.bottom.equalToSuperview().inset(16.0)
        }
        
        lineLabel.text = "이태원 방면"
        timeRemainingLabel.text = "효창공원앞 도착"
        
    }
}
