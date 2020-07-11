//
//  TempMovies.swift
//  Movies
//
//  Created by Jem Alvarez on 7/9/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import Foundation

struct TempMovies {
    static let moviesCards = [
        MovieCard(id: 123, poster_path: "joker", release_date: "2019", title: "Joker", vote_average: 8.2, overview: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", backdrop_path: "joker_backdrop"),
        MovieCard(id: 456, poster_path: "joker", release_date: "2019", title: "Joker", vote_average: 8.2, overview: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", backdrop_path: "joker_backdrop"),
        MovieCard(id: 789, poster_path: "joker", release_date: "2019", title: "Joker", vote_average: 8.2, overview: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", backdrop_path: "joker_backdrop"),
        MovieCard(id: 024, poster_path: "joker", release_date: "2019", title: "Joker", vote_average: 8.2, overview: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", backdrop_path: "joker_backdrop"),
        MovieCard(id: 680, poster_path: "joker", release_date: "2019", title: "Joker", vote_average: 8.2, overview: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", backdrop_path: "joker_backdrop"),
        MovieCard(id: 135, poster_path: "joker", release_date: "2019", title: "Joker", vote_average: 8.2, overview: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", backdrop_path: "joker_backdrop"),
        MovieCard(id: 791, poster_path: "joker", release_date: "2019", title: "Joker", vote_average: 8.2, overview: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", backdrop_path: "joker_backdrop"),
        MovieCard(id: 357, poster_path: "joker", release_date: "2019", title: "Joker", vote_average: 8.2, overview: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", backdrop_path: "joker_backdrop")
    ]
    
    static let movie =
        Movie(id: 258, backdrop_path: "joker_backdrop", genres: [Genre(id: 111, name: "Crime"), Genre(id: 222, name: "Thriller"), Genre(id: 333, name: "Drama")], overview: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", poster_path: "joker", release_date: "2019", runtime: 122, tagline: "Put on a happy face.", title: "Joker", vote_average: 8.2)
    
    static let cast = [
        CastCard(id: 073, character: "Arthur Fleck / Joker", name: "Joaquin Phoenix", profile_path: "joaquin_phoenix"),
        CastCard(id: 074, character: "Arthur Fleck / Joker", name: "Joaquin Phoenix", profile_path: "joaquin_phoenix"),
        CastCard(id: 075, character: "Arthur Fleck / Joker", name: "Joaquin Phoenix", profile_path: "joaquin_phoenix"),
        CastCard(id: 076, character: "Arthur Fleck / Joker", name: "Joaquin Phoenix", profile_path: "joaquin_phoenix"),
        CastCard(id: 077, character: "Arthur Fleck / Joker", name: "Joaquin Phoenix", profile_path: "joaquin_phoenix"),
        CastCard(id: 078, character: "Arthur Fleck / Joker", name: "Joaquin Phoenix", profile_path: "joaquin_phoenix"),
        CastCard(id: 079, character: "Arthur Fleck / Joker", name: "Joaquin Phoenix", profile_path: "joaquin_phoenix"),
        CastCard(id: 070, character: "Arthur Fleck / Joker", name: "Joaquin Phoenix", profile_path: "joaquin_phoenix"),
        CastCard(id: 071, character: "Arthur Fleck / Joker", name: "Joaquin Phoenix", profile_path: "joaquin_phoenix"),
        CastCard(id: 072, character: "Arthur Fleck / Joker", name: "Joaquin Phoenix", profile_path: "joaquin_phoenix")
    ]
    
    static let person = Person(id: 976, birthday: "1974-10-28", name: "Joaquin Phoenix", gender: 2, biography: "Joaquin Rafael Phoenix (born October 28, 1974) is an American actor and producer. He has received numerous awards and nominations, including an Academy Award, a Grammy Award, and two Golden Globe Awards. As a child, Phoenix started acting in television with his brother River and sister Summer. His first major film role was in SpaceCamp (1986). During this period, he was credited as Leaf Phoenix, a name he gave himself. He later went back to his original name and received positive reviews for his supporting work in the comedy-drama film To Die For (1995) and the period film Quills (2000). He received wider attention for his portrayal of Commodus in the historical drama film Gladiator (2000), for which he was nominated for the Academy Award for Best Supporting Actor. He subsequently earned Best Actor nominations for portraying musician Johnny Cash in Walk the Line (2005), an alcoholic war veteran in The Master (2012), and the title character in Joker (2019), winning for the latter. His other films include the horror films Signs (2002) and The Village (2004), the historical drama Hotel Rwanda (2004), the romantic drama Her (2013), the crime satire Inherent Vice (2014), and the psychological thriller You Were Never Really Here (2017), winning the Cannes Film Festival Award for Best Actor for the latter. Phoenix has also ventured into directing music videos, as well as producing films and television shows. For recording the soundtrack to Walk the Line, he won the Grammy Award for Best Compilation Soundtrack for Visual Media. He is a social activist and has lent his support to several charities and humanitarian organizations. He is on the board of directors for The Lunchbox Fund, a non-profit organization which provides daily meals to school students in the South African town of Soweto. He is also known for his animal rights advocacy; he has been a vegan since the age of three and often campaigns with PETA and In Defense of Animals. For his lifelong dedication to animal rights, he was named PETA's Person of the Year in 2019. Description above from the Wikipedia article Joaquin Phoenix, licensed under CC-BY-SA, full list of contributors on Wikipedia.", place_of_birth: "San Juan, Puerto Rico", profile_path: "joaquin_phoenix")
    
    static let credits = [
        Credit(id: 011, name: "Joker", release_date: "2019", poster_path: "joker"),
        Credit(id: 011, name: "Joker", release_date: "2019", poster_path: "joker"),
        Credit(id: 011, name: "Joker", release_date: "2019", poster_path: "joker"),
        Credit(id: 011, name: "Joker", release_date: "2019", poster_path: "joker"),
        Credit(id: 011, name: "Joker", release_date: "2019", poster_path: "joker"),
        Credit(id: 011, name: "Joker", release_date: "2019", poster_path: "joker"),
        Credit(id: 011, name: "Joker", release_date: "2019", poster_path: "joker"),
        Credit(id: 011, name: "Joker", release_date: "2019", poster_path: "joker")
    ]
}
