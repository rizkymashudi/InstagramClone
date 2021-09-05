//
//  Extensions.swift
//  InstagramClone
//
//  Created by Rizky Mashudi on 05/09/21.
//

import UIKit

extension UIView{
    
    // extend width from any UIView
    public var width: CGFloat{
        return frame.size.width
    }
    
    // extend height from any UIView
    public var height: CGFloat{
        return frame.size.height
    }
    
    // extend top from any UIView
    public var top: CGFloat{
        return frame.origin.y
    }
    
    // extend bottom from any UIView
    public var bottom: CGFloat{
        return frame.origin.y + frame.size.height
    }
    
    // extend left from any UIView
    public var left: CGFloat{
        return frame.origin.x
    }
    
    // extend right from any UIView
    public var right: CGFloat{
        return frame.origin.x + frame.size.width
    }
}
