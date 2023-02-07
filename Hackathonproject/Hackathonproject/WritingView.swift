//
//  WritingView.swift
//  Hackathonproject
//
//  Created by 조근호 on 2023/02/07.
//
import SwiftUI
import PhotosUI
import Foundation

struct WriteView: View {
    
    @State var writetext: String = "내용을 입력해주세요."
    @State var writetittle = ""
    @State var writedetail = ""
    @State var photo: [PhotosPickerItem] = []
    @State var selectedImageData: [Data] = []
    
    var body: some View {
        
        VStack {
            HStack {
                Button(action: {
                }) {
                    Text("공유")
                        .padding()
                        .foregroundColor(Color.black)
                }
                Spacer()
                PhotosPicker (selection: $photo, maxSelectionCount: 5, matching: .images, label: {
                    Text("사진")
                        .foregroundColor(Color.black)
                        .padding()
                })
                .onChange(of: photo) { newItems in
                    for newItem in newItems {
                        Task {
                            if let data = try? await newItem.loadTransferable(type: Data.self) {
                                withAnimation(.default) {
                                    selectedImageData.append(data)
                                }
                            }
                        }
                    }
                }
                
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(selectedImageData, id: \.self) { img in
                        Image(uiImage: UIImage(data: img)!)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
                .padding(.leading)
            }
            TextField("글쓰기", text: $writetittle)
                .padding()
                .font(.title)
                .fontWeight(.light)
                .autocapitalization(.none)
                .disableAutocorrection(true)
            ZStack {
                if self.writedetail.isEmpty {
                    TextEditor(text: $writetext)
                        .font(.body)
                        .foregroundColor(.gray)
                        .disabled(true)
                        .fontWeight(.thin)
                        .padding()
                }
                TextEditor(text: $writedetail)
                    .font(.body)
                    .opacity(self.writedetail.isEmpty ? 0.25 : 1)
                    .autocapitalization(.none)
                    .padding()
                    .fontWeight(.thin)
                    .disableAutocorrection(true)
            }
            Spacer()
                .background(Color(.systemGray6).ignoresSafeArea())
        }
    }
    
}

struct WriteView_preview: PreviewProvider {
    static var previews: some View {
        WriteView()
    }
}
