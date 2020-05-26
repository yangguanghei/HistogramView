//
//  ViewController.swift
//  HistogramView
//
//  Created by FC on 2019/5/21.
//  Copyright © 2019年 JKB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .white
        
        
        let xValuesArr = ["待派单", "待接单", "已接单", "待审单"]
        let yValuesArr = ["85", "209", "185", "395"]
        let colors = [UIColor.red, UIColor.green, UIColor.blue, UIColor.black]
        
        let histogramView = FCHistogramView(frame: CGRect(x: 0, y: 88, width: view.width, height: 400), xValues: xValuesArr, yValues: yValuesArr, barW: 25, gapW: 40, yScaleV: 100, yAxisNum: 6, unitStr: "", barBgCorlors: colors)
        histogramView.backgroundColor = .white
        histogramView.unitLab.isHidden = true
        histogramView.maxVlue = 200
        histogramView.isShowEachYValus = true
        histogramView.isShowDotted = false
        view.addSubview(histogramView)
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }

}

