//
//  AppIconTitleView.swift
//  AppStore_SwiftUI
//
//  Created by Mohammad on 11/9/24.
//

import SwiftUI

struct AppIconTitleView: View {
    
    var result: Result
    
    var body: some View {
        HStack(spacing: 20) {
            AsyncImage(url: URL(string: result.artworkUrl512)) {
                image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
            } placeholder: {
                RoundedRectangle(cornerRadius: 16)
                    .frame(width: 80, height: 80)
            }
           
            VStack(alignment: .leading) {
                Text(result.trackName)
                    .lineLimit(1)
                    .font(.system(size: 20))
                Text(result.primaryGenreName)
                    .foregroundStyle(Color.gray)
                Text("STARS 30.0M")
            }
            Image(systemName: "icloud.and.arrow.down")
        }
    }
}
