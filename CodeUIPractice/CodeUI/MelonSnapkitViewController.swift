//
//  MelonSnapkitViewController.swift
//  CodeUIPractice
//
//  Created by sae hun chung on 2022/08/17.
//

import UIKit
import SnapKit

class MelonSnapkitViewController: UIViewController {
    
    lazy var songtitleLabel: UILabel = {
        let label = UILabel()
        
        label.textColor = .white
        label.font = .systemFont(ofSize: 25, weight: .medium)
        label.text = "Strawberry moon"
        label.snp.makeConstraints { make in
            make.height.equalTo(44)
        }
        
        return label
    }()
    
    lazy var albumSongListButton: UIButton = {
        let button = UIButton()
        
        button.tintColor = .white
        button.setImage(UIImage(systemName: "music.note.list"), for: .normal)
        button.snp.makeConstraints { make in
            make.width.height.equalTo(20)
        }
        
        return button
    }()
    
    lazy var titleStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [albumSongListButton, songtitleLabel])
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 12
        stackView.axis = .horizontal
        stackView.contentMode = .scaleToFill
        
        return stackView
    }()
    
    lazy var singerLabel: UILabel = {
        let label = UILabel()
        
        label.textColor = .lightGray
        label.font = .systemFont(ofSize: 17, weight: .regular)
        label.text = "아이유"
        
        return label
    }()
    
    
    let firstSideButton: UIButton = {
        let button = UIButton()
        
        button.setImage(UIImage(systemName: "chevron.down.circle"), for: .normal)
        button.tintColor = .lightGray
        button.backgroundColor = .clear
        
        return button
    }()
    
    let secondSideButton: UIButton = {
        let button = UIButton()
        
        button.setImage(UIImage(systemName: "line.horizontal.3.decrease.circle.fill"), for: .normal)
        button.tintColor = .lightGray
        button.backgroundColor = .clear
        
        return button
    }()

    let albumImageView: UIImageView = {
        let imageView = UIImageView()
        
        imageView.image = UIImage(named: "AKR20211019085651005_01_i_P4.jpg")
        
        return imageView
    }()

    let likeButton: UIButton = {
        let button = UIButton()
        
        let configure = UIImage.SymbolConfiguration(pointSize: 25)
        
        button.setImage(UIImage(systemName: "heart"), for: .normal)
        button.setPreferredSymbolConfiguration(configure, forImageIn: .normal)
        button.tintColor = .lightGray
        button.backgroundColor = .clear
        
        return button
    }()

    let likeCountLabel: UILabel = {
        let label = UILabel()
        
        
        
        return label
    }( )

//    let likeSongLabel: UILabel = { }( )
//
//    let instagramButton: UIButton = { }()
//
//    let lyricsLabel: UILabel = { }()
//
//    let shuffleButton: UIButton = { }()
//    let repeatButton: UIButton = { }()
//    let songslider: UISlider = { }()
//
//    let pauseAndPlayButton: UIButton = { }()
//    let nextSongButton: UIButton = { }()
//    let previousSongButton: UIButton = { }()
//
//    let soundButton: UIButton = { }()
    
    //MARK: viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureViewController()
        setLayout()
    }
    
    private func configureViewController() {
        
        [singerLabel, titleStackView, firstSideButton, secondSideButton, albumImageView, likeButton].forEach {
            view.addSubview($0)
        }
    }//:configureViewController
    
    private func setLayout() {
        
        titleStackView.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(24)
            make.height.equalTo(28)
//            make.trailing.leading.lessThanOrEqualTo(view).offset(20)
        }
        
        singerLabel.snp.makeConstraints { make in
            make.centerX.equalTo(titleStackView)
            make.top.equalTo(titleStackView.snp.bottom).offset(6)
        }
        
        firstSideButton.snp.makeConstraints { make in
            make.trailing.equalTo(view).offset(-8)
            make.centerY.equalTo(titleStackView)
            make.width.equalTo(firstSideButton.snp.height)
        }
        
        secondSideButton.snp.makeConstraints { make in
            make.centerX.equalTo(firstSideButton)
            make.top.equalTo(firstSideButton.snp.bottom).offset(8)
        }
        
        albumImageView.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.width.equalTo(view).multipliedBy(0.8)
            make.height.equalTo(albumImageView.snp.width)
            make.top.equalTo(singerLabel.snp.bottom).offset(70)
        }
        
        likeButton.snp.makeConstraints { make in
            make.leading.equalTo(albumImageView.snp.leading)
            make.top.equalTo(albumImageView.snp.bottom)
        }
        
    }//: setLayout
    

}
