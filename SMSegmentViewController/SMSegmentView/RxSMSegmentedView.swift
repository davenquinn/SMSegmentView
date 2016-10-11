//
//  RxSMSegmentedView.swift
//  SMSegmentViewController
//
//  Created by George Tsifrikas on 16/09/16.
//  Copyright © 2016 si.ma. All rights reserved.
//

extension UISegmentedControl {
    
    /**
     Reactive wrapper for `selectedSegmentIndex` property.
     */
    public var rx_value: ControlProperty<Int> {
        return UIControl.rx_value(
            self,
            getter: { segmentedControl in
                segmentedControl.selectedSegmentIndex
            }, setter: { segmentedControl, value in
                segmentedControl.selectedSegmentIndex = value
            }
        )
    }
    
}
