//
//  Uilt.swift
//  UpDownGame
//
//  Created by lee sang hyun on 12/15/24.
//

import UIKit

class Util {
    /**
     이미지 크기 재정의
     @param image 원본 이미지
     @param targetSize 복사본 이미지 크기
     */
    static func resizeImage(image: UIImage, targetSize: CGSize) -> UIImage? {
        let renderer = UIGraphicsImageRenderer(size: targetSize)
        return renderer.image { _ in
            image.draw(in: CGRect(origin: .zero, size: targetSize))
        }
    }
    
    static func resizeImageWithAspect(image: UIImage, targetSize: CGSize) -> UIImage? {
        let widthRatio = targetSize.width / image.size.width
        let heightRatio = targetSize.height / image.size.height
        let scale = min(widthRatio, heightRatio) // Aspect Fit
        let newSize = CGSize(width: image.size.width * scale, height: image.size.height * scale)

        return resizeImage(image: image, targetSize: newSize)
    }
}
