//
//  ArticleDetailView.swift
//  F10-ProyectoBlog
//
//  Created by German David Vertel Narvaez on 4/05/24.
//

import SwiftUI

struct ArticleDetailView: View {
    
    var article: Article
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading, spacing: 8 ){
                Image(article.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(5)
                
                Group {
                    Text(article.title)
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.black)
                        .foregroundStyle(.red)
                        .multilineTextAlignment(.center)
                        .lineLimit(3)
                        .padding(.bottom, 0)
                    
                    Text("Creado por \(article.author)".uppercased())
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .padding(.bottom, 0)
                    
                    Text("\(article.url)".lowercased())
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .padding(.bottom, 0)
                    
                    
                }
                .padding(.bottom, 0)
                .padding(.horizontal, 16)
                
                
                Group{
                    Text("\(article.excerpt)")
                        .bold()
                    Text(article.content)
                        
                }
                .font(.body)
                .padding(16)
                .lineLimit(100)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                
            }
            
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    
    NavigationStack {
        ArticleDetailView(article: articles[0])
            .navigationTitle("Articulo")
    }
}


