//
//  KakaoTalkViewController.swift
//  CodeUIPractice
//
//  Created by sae hun chung on 2022/08/17.
//

import UIKit
import SnapKit

class KakaoTalkViewController: UIViewController {
    
    let xButton: UIButton = {
        print("xbutton")
        let button = UIButton(type: .system)

        let pointSize: CGFloat = 25
        let imageConfig = UIImage.SymbolConfiguration(pointSize: pointSize)
        
        button.setPreferredSymbolConfiguration(imageConfig, forImageIn: .normal)
        
        button.setImage(UIImage(systemName: "xmark"), for: .normal)
        button.tintColor = .white
        button.backgroundColor = .clear
        
        return button
    }()
        
    lazy var heartButton: UIButton = {
        
        let button = UIButton(type: .system)
        button.tintColor = .white
        button.backgroundColor = .clear
                
        button.setImage(UIImage(systemName: "heart.circle"), for: .normal)

        let pointSize: CGFloat = 25
        let imageConfig = UIImage.SymbolConfiguration(pointSize: pointSize)
        
        button.setPreferredSymbolConfiguration(imageConfig, forImageIn: .normal)
        
        button.snp.makeConstraints { make in
            make.width.equalTo(40)
        }
        return button
    }()

    lazy var dotButton: UIButton = {
        
        let button = UIButton(type: .system)
        button.tintColor = .white
        button.backgroundColor = .clear
        button.setImage(UIImage(systemName: "squareshape.split.2x2.dotted"), for: .normal)

        let pointSize: CGFloat = 25
        let imageConfig = UIImage.SymbolConfiguration(pointSize: pointSize)

        button.setPreferredSymbolConfiguration(imageConfig, forImageIn: .normal)

        button.snp.makeConstraints { make in
            make.width.equalTo(40)
        }
        return button
    }()
    
    lazy var settingButton: UIButton = {
        
        let button = UIButton(type: .system)
        button.tintColor = .white
        button.backgroundColor = .clear
        button.setImage(UIImage(systemName: "gear.circle"), for: .normal)
        
        let pointSize: CGFloat = 25
        let imageConfig = UIImage.SymbolConfiguration(pointSize: pointSize)

        button.setPreferredSymbolConfiguration(imageConfig, forImageIn: .normal)
        
        button.snp.makeConstraints { make in
            make.width.equalTo(40)
        }
        return button
    }()
    
    lazy var topStackView: UIStackView = {
       let stackView = UIStackView(arrangedSubviews: [heartButton, dotButton, settingButton])
        stackView.backgroundColor = .clear
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 8
        
        return stackView
    }()
    
    lazy var bottomStackLeftView: UIView = {
        let view = UIView()
        
        view.backgroundColor = .clear
        
        view.snp.makeConstraints { make in
            make.width.equalTo(66)
        }
        
        return view
    }()
    
    lazy var bottomStackCenterView: UIView = {
        let view = UIView()
        
        view.backgroundColor = .clear
        
        view.snp.makeConstraints { make in
            make.width.equalTo(66)
        }
        
        return view
    }()

    lazy var bottomStackRightView: UIView = {
        let view = UIView()
        
        view.backgroundColor = .clear
        
        view.snp.makeConstraints { make in
            make.width.equalTo(66)
        }
        
        return view
    }()

    lazy var chatImageView: UIImageView = {
       let imageView = UIImageView()
        
        imageView.image = UIImage(systemName: "bubble.right.fill")
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .clear
        
        return imageView
    }()
    
    lazy var chatLabel: UILabel = {
       let label = UILabel()
        label.text = "나와의 채팅"
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 12)
        label.backgroundColor = .clear
        return label
    }()
    
    lazy var bottomStackLeftButton: UIButton = {
        let button = UIButton(type: .system)
        
        button.backgroundColor = .clear
        button.setTitle("", for: .normal)
        
        return button
    }()
    
    //2.
    lazy var profileSetImageView: UIImageView = {
       let imageView = UIImageView()
        
        imageView.image = UIImage(systemName: "pencil")
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .clear
        
        return imageView
    }()
    
    lazy var profileSetLabel: UILabel = {
       let label = UILabel()
        label.text = "프로필 편집"
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 12)
        label.backgroundColor = .clear
        return label
    }()
    
    lazy var bottomStackCenterButton: UIButton = {
        let button = UIButton(type: .system)
        
        button.backgroundColor = .clear
        button.setTitle("", for: .normal)
        
        return button
    }()
    
    //3.
    lazy var storyImageView: UIImageView = {
       let imageView = UIImageView()
        
        imageView.image = UIImage(systemName: "quote.opening")
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .clear
        
        return imageView
    }()
    
    lazy var storyLabel: UILabel = {
       let label = UILabel()
        label.text = "카카오스토리"
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 12)
        label.backgroundColor = .clear
        return label
    }()
    
    lazy var bottomStackRightButton: UIButton = {
        let button = UIButton(type: .system)
        
        button.backgroundColor = .clear
        button.setTitle("", for: .normal)
        
        return button
    }()
    
    // 4.
    lazy var bottomStackView: UIStackView = {
       let stackView = UIStackView(arrangedSubviews: [bottomStackLeftView, bottomStackCenterView, bottomStackRightView])
        
        stackView.backgroundColor = .clear
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 44
        
        return stackView
    }()
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "person.crop.circle")
        imageView.tintColor = .lightGray
        imageView.backgroundColor = .clear
        imageView.layer.cornerRadius = 8
        imageView.clipsToBounds = true
        
        return imageView
    }()
    
    let seperateView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        
        return view
    }()
    
    let nameLabel: UILabel = {
       let label = UILabel()
        
        label.text = "카카오스토리"
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 16)
        label.backgroundColor = .clear
        
        return label
    }()

    
    // MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
        view.backgroundColor = .darkGray
        configureViewController()
        setConstraints()
    }
    
    private func configureViewController() {
        print(topStackView.arrangedSubviews)
        
        [bottomStackLeftButton, chatLabel, chatImageView].forEach {
            bottomStackLeftView.addSubview($0)
        }
        
        [bottomStackCenterButton, profileSetLabel, profileSetImageView].forEach {
            bottomStackCenterView.addSubview($0)
        }

        [bottomStackRightButton, storyLabel, storyImageView].forEach {
            bottomStackRightView.addSubview($0)
        }
        
        [xButton, topStackView, profileImageView, bottomStackView, seperateView, nameLabel].forEach {
            view.addSubview($0)
        }
        
    }//: configureViewController
    
    private func setConstraints() {
        
        profileImageView.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.width.height.equalTo(200)
            make.bottom.equalTo(nameLabel.snp.top).offset(-4)
        }
        
        nameLabel.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.bottom.equalTo(seperateView.snp.top).offset(-48)
        }

        xButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(12)
            make.leading.equalTo(view).offset(12)
            make.width.height.equalTo(44)
        }

        topStackView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(12)
            make.trailing.equalToSuperview().offset(-16)
            make.height.equalTo(40)
        }

        // MARK: BottomStackView
        bottomStackView.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-12)
            make.height.equalTo(56)
            make.centerX.equalTo(view)
        }
        
        chatImageView.snp.makeConstraints { make in
            make.top.equalTo(bottomStackLeftView)
            make.height.width.equalTo(28)
            make.centerX.equalTo(bottomStackLeftView)
        }
        
        chatLabel.snp.makeConstraints { make in
            make.height.equalTo(12)
            make.bottom.equalTo(bottomStackLeftView.snp.bottom)
            make.trailing.leading.equalTo(bottomStackLeftView)
        }

        bottomStackLeftButton.snp.makeConstraints { make in
            make.edges.equalTo(bottomStackLeftView)
        }
        
        profileSetImageView.snp.makeConstraints { make in
            make.top.equalTo(bottomStackCenterView)
            make.height.width.equalTo(28)
            make.centerX.equalTo(bottomStackCenterView)
        }
        
        profileSetLabel.snp.makeConstraints { make in
            make.height.equalTo(12)
            make.bottom.equalTo(bottomStackCenterView.snp.bottom)
            make.trailing.leading.equalTo(bottomStackCenterView)
        }

        bottomStackCenterButton.snp.makeConstraints { make in
            make.edges.equalTo(bottomStackCenterView)
        }

        storyImageView.snp.makeConstraints { make in
            make.top.equalTo(bottomStackRightView)
            make.height.width.equalTo(28)
            make.centerX.equalTo(bottomStackRightView)
        }

        storyLabel.snp.makeConstraints { make in
            make.height.equalTo(12)
            make.bottom.equalTo(bottomStackRightView.snp.bottom)
            make.trailing.leading.equalTo(bottomStackRightView)
        }

        bottomStackRightButton.snp.makeConstraints { make in
            make.edges.equalTo(bottomStackRightView)
        }
        
        seperateView.snp.makeConstraints { make in
            make.height.equalTo(0.5)
            make.leading.trailing.equalTo(view)
            make.bottom.equalTo(bottomStackView.snp.top).offset(-34)
        }


    }//: setConstraints

}
