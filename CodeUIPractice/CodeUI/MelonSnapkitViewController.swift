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
        
        return label
    }()
    
    lazy var albumSongListButton: UIButton = {
        let button = UIButton()
        
        button.tintColor = .white
        button.setImage(UIImage(systemName: "music.note.list"), for: .normal)
        
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
        
        label.text = "101,345"
        label.textColor = .white
        label.font = .systemFont(ofSize: 18, weight: .medium)
        
        return label
    }( )

    let likeSongLabel: UILabel = {
        let label = UILabel()
        
        label.text = "유사곡"
        label.textColor = .lightGray
        label.font = .systemFont(ofSize: 15, weight: .regular)
        
        return label
        
    }( )

    let instagramButton: UIButton = {
        let button = UIButton()
        
        button.tintColor = .systemGreen
        button.setImage(UIImage(systemName: "camera"), for: .normal)
        
        return button
    }()

    let lyricsView: UIView = {
        let view = UIView()
        
        view.backgroundColor = .clear
        
        return view
    }()
    
    lazy var lyricsLabel: UILabel = {
        let label = UILabel()
        
        label.textColor = .lightGray
        label.font = .systemFont(ofSize: 17)
        label.textAlignment = .center
        label.numberOfLines = 2
        label.text = """
        달이 익어가니 서둘러 젊은 피야
        민들레 한 송이 들고
        """
        label.backgroundColor = .clear
        return label
    }()

    let shuffleButton: UIButton = {
        let button = UIButton()
        
        let configure = UIImage.SymbolConfiguration(pointSize: 20)
        button.tintColor = .lightGray
        button.setImage(UIImage(systemName: "repeat"), for: .normal)
        button.setPreferredSymbolConfiguration(configure, forImageIn: .normal)
        
        return button
    }()
    
    let repeatButton: UIButton = {
        let button = UIButton()
        
        let configure = UIImage.SymbolConfiguration(pointSize: 20)
        button.tintColor = .lightGray
        button.setImage(UIImage(systemName: "shuffle"), for: .normal)
        button.setPreferredSymbolConfiguration(configure, forImageIn: .normal)
        
        return button
    }()
    
    let songslider: UISlider = {
        let slider = UISlider()
        
        slider.tintColor = .systemGreen
        slider.maximumValue = 1
        slider.minimumValue = 0
        slider.value = 0.5
        
        return slider
    }()
    
    let startTimeLabel: UILabel = {
        let label = UILabel()
        
        label.text = "0:04"
        label.textColor = .systemGreen
        label.font = .systemFont(ofSize: 10)
        
        return label
    }()
    
    let endTimeLabel: UILabel = {
        let label = UILabel()
        
        label.text = "1:00"
        label.textColor = .systemGreen
        label.font = .systemFont(ofSize: 10)
        
        return label
    }()
    
    lazy var pauseAndPlayButton: UIButton = {
        let button = UIButton()
        
        let configure = UIImage.SymbolConfiguration(pointSize: 30)
        button.tintColor = .white
        button.setImage(UIImage(systemName: "pause.fill"), for: .normal)
        button.setPreferredSymbolConfiguration(configure, forImageIn: .normal)
        
        return button
    }()
    
    lazy var nextSongButton: UIButton = {
        let button = UIButton()
        
        let configure = UIImage.SymbolConfiguration(pointSize: 30)
        button.tintColor = .white
        button.setImage(UIImage(systemName: "forward.end.fill"), for: .normal)
        button.setPreferredSymbolConfiguration(configure, forImageIn: .normal)
        
        return button

    }()

    lazy var previousSongButton: UIButton = {
        let button = UIButton()
        
        let configure = UIImage.SymbolConfiguration(pointSize: 30)
        button.tintColor = .white
        button.setImage(UIImage(systemName: "backward.end.fill"), for: .normal)
        button.setPreferredSymbolConfiguration(configure, forImageIn: .normal)
        
        return button
    }()

    lazy var mySongListButton: UIButton = {
        let button = UIButton()
        
        let configure = UIImage.SymbolConfiguration(pointSize: 30)
        button.tintColor = .white
        button.setImage(UIImage(systemName: "music.note.list"), for: .normal)
        button.setPreferredSymbolConfiguration(configure, forImageIn: .normal)
        
        return button

    }()

    lazy var volumeButton: UIButton = {
        let button = UIButton()
        
        let configure = UIImage.SymbolConfiguration(pointSize: 30)
        button.tintColor = .white
        button.setImage(UIImage(systemName: "speaker.wave.2"), for: .normal)
        button.setPreferredSymbolConfiguration(configure, forImageIn: .normal)
        
        return button

    }()
    
    lazy var bottomStackView: UIStackView = {
       let stackView = UIStackView(arrangedSubviews: [mySongListButton, previousSongButton, pauseAndPlayButton, nextSongButton, volumeButton])
        
        stackView.axis = .horizontal
        stackView.spacing = 50
        stackView.distribution = .equalSpacing
        stackView.alignment = .fill
        
        return stackView
    }()
    
    //MARK: viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureViewController()
        setLayout()
    }
    
    private func configureViewController() {
        
        lyricsView.addSubview(lyricsLabel)
        
        [singerLabel, titleStackView, firstSideButton, secondSideButton, albumImageView, likeButton, likeCountLabel, likeSongLabel, instagramButton, lyricsView, bottomStackView, shuffleButton, repeatButton, songslider, startTimeLabel, endTimeLabel].forEach {
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
            make.top.equalTo(albumImageView.snp.bottom).offset(16)
            make.height.equalTo(28)
            make.width.equalTo(likeButton.snp.height)
        }
        
        likeCountLabel.snp.makeConstraints { make in
            make.leading.equalTo(likeButton.snp.trailing).offset(4)
            make.centerY.equalTo(likeButton)
            make.height.equalTo(likeButton.snp.height)
        }
        
        instagramButton.snp.makeConstraints { make in
            make.trailing.equalTo(albumImageView.snp.trailing)
            make.top.equalTo(albumImageView.snp.bottom).offset(16)
            make.height.equalTo(instagramButton.snp.width)
            
        }
        
        likeSongLabel.snp.makeConstraints { make in
            make.centerY.equalTo(instagramButton)
            make.trailing.equalTo(instagramButton.snp.leading).offset(-12)
        }
        
        
        lyricsView.snp.makeConstraints { make in
            make.trailing.equalTo(view).offset(-80)
            make.leading.equalTo(view).offset(80)
            make.bottom.equalTo(songslider.snp.top).offset(-16) // TODO: 나중에 변경
            make.top.equalTo(albumImageView.snp.bottom).offset(55) //TODO: offset 55
        }
        
        lyricsLabel.snp.makeConstraints { make in
            make.leading.trailing.equalTo(lyricsView)
            make.centerY.equalTo(lyricsView)
        }
        
        bottomStackView.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-12)
            make.leading.equalTo(view).offset(20)
            make.trailing.equalTo(view).offset(-20)
        }
        
        repeatButton.snp.makeConstraints { make in
            make.leading.equalTo(view).offset(20)
            make.width.equalTo(shuffleButton.snp.width)
            make.bottom.equalTo(bottomStackView.snp.top).offset(-32)
        }
        
        shuffleButton.snp.makeConstraints { make in
            make.trailing.equalTo(view).offset(-20)
            make.centerY.equalTo(repeatButton)
        }
        
        songslider.snp.makeConstraints { make in
            make.leading.equalTo(repeatButton.snp.trailing).offset(3)
            make.trailing.equalTo(shuffleButton.snp.leading).offset(-3)
            make.top.equalTo(repeatButton.snp.top)
            
        }
        
        startTimeLabel.snp.makeConstraints { make in
            make.bottom.equalTo(repeatButton.snp.bottom)
            make.width.equalTo(endTimeLabel.snp.width)
            make.top.equalTo(songslider.snp.bottom)
            make.leading.equalTo(songslider.snp.leading)
        }
        
        endTimeLabel.snp.makeConstraints { make in
            make.bottom.equalTo(repeatButton.snp.bottom)
            make.width.equalTo(endTimeLabel.snp.width)
            make.trailing.equalTo(songslider.snp.trailing)
        }
        
    }//: setLayout
    

}
