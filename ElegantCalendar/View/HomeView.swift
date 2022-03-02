//
//  HomeView.swift
//  ElegantCalendar
//
//  Created by Kyungyun Lee on 02/03/2022.
//

import SwiftUI

struct HomeView: View {
    
    @State var currentDate : Date = Date()
    
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 20) {
                CustomDatePicker(currentDate: $currentDate)
                // Custom DatePicker
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
