//
//  ContentView.swift
//  SettingApp
//
//  Created by SangRae Kim on 2023/11/17.
//

import SwiftUI

struct ContentView: View {
    @State private var isAirPlaneMode: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    NavigationLink {
                        Text("프로필 화면")
                    } label: {
                        ProfileCell()
                    }
                }
                Section {
                    ToggleCell(imageName: "airplane", backgroundColor: .yellow, title: "에어플레인 모드")
                    NavigationLinkCell(imageName: "wifi", backgroundColor: .blue, title: "Wi-Fi", value: "iptime") {
                        Text("Wi-Fi 화면")
                    }
                    NavigationLinkCell(imageName: "chart.bar.fill", backgroundColor: .blue, title: "Bluetooth", value: "켬") {
                        Text("Bluetooth 화면")
                    }
                    NavigationLinkCell(imageName: "antenna.radiowaves.left.and.right", backgroundColor: .green, title: "셀룰러") {
                        Text("셀룰러 화면")
                    }
                    NavigationLinkCell(imageName: "personalhotspot", backgroundColor: .green, title: "개인용 핫스팟") {
                        Text("개인용 핫스팟 화면")
                    }
                }
                Section {
                    NavigationLinkCell(imageName: "bell.badge.fill", backgroundColor: .red, title: "알림") {
                        Text("알림 화면")
                    }
                    NavigationLinkCell(imageName: "speaker.wave.3.fill", backgroundColor: .red, title: "사운드 및 햅틱") {
                        Text("사운드 및 햅틱 화면")
                    }
                    NavigationLinkCell(imageName: "moon.fill", backgroundColor: .indigo, title: "집중 모드") {
                        Text("집중 모드 화면")
                    }
                    NavigationLinkCell(imageName: "hourglass", backgroundColor: .indigo, title: "스크린 타임") {
                        Text("스크린 타임 화면")
                    }
                }
                Section {
                    NavigationLinkCell(imageName: "gear", backgroundColor: .gray, title: "일반") {
                        Text("일반 화면")
                    }
                    NavigationLinkCell(imageName: "accessibility", backgroundColor: .blue, title: "손쉬운 사용") {
                        Text("손쉬운 사용 화면")
                    }
                    NavigationLinkCell(imageName: "hand.raised.fill", backgroundColor: .blue, title: "개인 정보 보호") {
                        Text("개인정보 보호 화면")
                    }
                }
            }
            .navigationTitle(Text("설정"))
        }
    }
    
    @ViewBuilder
    private func ProfileCell() -> some View {
        HStack {
            Text("SR")
                .font(.system(size: 25))
                .fontWeight(.bold)
                .frame(width: 60, height: 60)
                .background(.gray)
                .foregroundColor(.white)
                .cornerRadius(30)
            VStack(alignment: .leading, spacing: 4) {
                Text("SSang RRae")
                    .font(.system(size: 22))
                    .fontWeight(.regular)
                Text("Apple ID, iCloud, 미디어 및 구입")
                    .font(.system(size: 11))
            }.padding(.leading, 5)
        }
        .padding(.vertical, 5)
    }
    
    @ViewBuilder
    private func IconImage(imageName: String, backgroundColor: Color) -> some View {
        Image(systemName: imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 20, height: 20)
            .padding(.all, 4)
            .background(backgroundColor)
            .foregroundColor(.white)
            .cornerRadius(5)
    }
    
    @ViewBuilder
    private func ToggleCell(imageName: String, backgroundColor: Color, title: String) -> some View {
        HStack {
            IconImage(imageName: imageName, backgroundColor: backgroundColor)
            Toggle(title, isOn: $isAirPlaneMode)
        }
    }
    
    @ViewBuilder
    private func NavigationLinkCell<V: View>(imageName: String, backgroundColor: Color, title: String, value: String? = nil, destination: @escaping () -> V) -> some View {
        HStack {
            IconImage(imageName: imageName, backgroundColor: backgroundColor)
            if value != nil {
                NavigationLink {
                    destination()
                } label: {
                    HStack {
                        Text(title)
                        Spacer()
                        Text(value!)
                            .foregroundStyle(.gray)
                    }
                }
            } else {
                NavigationLink(title) {
                    destination()
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}
