//
//  ScreenshotRow.swift
//  AppStore_SwiftUI
//
//  Created by Mohammad on 11/9/24.
//

import SwiftUI

struct ScreenshotRow: View {
    
    var size: CGSize
    var result: Result
    
    var body: some View {
        let width = (size.width - 4 * 16) / 3
        
        HStack(spacing: 16) {
            ForEach(result.screenshotUrls.prefix(3), id: \.self) { screenshotUrls in
                AsyncImage(url: URL(string: screenshotUrls)) { image in
                    image
                        .resizable()
                        .scaledToFill()
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                } placeholder: {
                    RoundedRectangle(cornerRadius: 16)
                        .frame(width: width, height: 200)
                }
            }
        }
    }
}
