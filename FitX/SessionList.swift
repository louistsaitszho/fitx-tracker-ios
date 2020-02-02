//
//  SessionList.swift
//  FitX
//
//  Created by Louis Tsai on 1/26/20.
//  Copyright © 2020 Louis Tsai. All rights reserved.
//

import SwiftUI

struct SessionList: View {
    @EnvironmentObject var sessions: ObservableSessionData
    
    var body: some View {
        NavigationView {
            List(sessions.sessions) { session in
                NavigationLink(destination: SessionDetail(session: session)) {
                    SessionRow(session: session)
                }
            }
            .navigationBarTitle(Text("Sessions"))
            .navigationBarItems(trailing:
                NavigationLink(destination: SessionNew()) {
                    Image(systemName: "square.and.pencil")
                }
            )
        }
    }
}

struct SessionList_Previews: PreviewProvider {
    static var previews: some View {
        SessionList()
            .environmentObject(ObservableSessionData())
    }
}