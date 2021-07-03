//
//  RedView.swift
//  SampleUIViewLifeCycle
//
//  Created by 岩本康孝 on 2021/07/03.
//

import UIKit

class RedView: UIView {
    
    override init(frame: CGRect) {
        print(NSStringFromClass(type(of:self)).components(separatedBy: ".")[1] + ":" + #function)
        super.init(frame: frame)
    }
    
    /// イニシャライザ（StoryBoardやIntefaceBuilderでの生成）
    required init?(coder aDecoder: NSCoder) {
        print(NSStringFromClass(type(of:self)).components(separatedBy: ".")[1] + ":" + #function)
        super.init(coder: aDecoder)
    }
    
    /// 制約の更新
    override func updateConstraints() {
        print(NSStringFromClass(type(of:self)).components(separatedBy: ".")[1] + ":" + #function)
        super.updateConstraints()
    }
}
