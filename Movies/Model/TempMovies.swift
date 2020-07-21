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
    
    static let movieCast = [
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
    
    static let movieCredits = [
        Credit(id: 011, name: "Joker", release_date: "2019", poster_path: "joker"),
        Credit(id: 012, name: "Joker", release_date: "2019", poster_path: "joker"),
        Credit(id: 013, name: "Joker", release_date: "2019", poster_path: "joker"),
        Credit(id: 014, name: "Joker", release_date: "2019", poster_path: "joker"),
        Credit(id: 015, name: "Joker", release_date: "2019", poster_path: "joker"),
        Credit(id: 016, name: "Joker", release_date: "2019", poster_path: "joker"),
        Credit(id: 017, name: "Joker", release_date: "2019", poster_path: "joker"),
        Credit(id: 018, name: "Joker", release_date: "2019", poster_path: "joker")
    ]
    
    static let tvCards = [
        TVCard(id: 123, name: "Space Force", poster_path: "space_force", backdrop_path: "space_force_backdrop", vote_average: 7.1),
        TVCard(id: 456, name: "Space Force", poster_path: "space_force", backdrop_path: "space_force_backdrop", vote_average: 7.1),
        TVCard(id: 789, name: "Space Force", poster_path: "space_force", backdrop_path: "space_force_backdrop", vote_average: 7.1),
        TVCard(id: 012, name: "Space Force", poster_path: "space_force", backdrop_path: "space_force_backdrop", vote_average: 7.1),
        TVCard(id: 345, name: "Space Force", poster_path: "space_force", backdrop_path: "space_force_backdrop", vote_average: 7.1),
        TVCard(id: 678, name: "Space Force", poster_path: "space_force", backdrop_path: "space_force_backdrop", vote_average: 7.1),
        TVCard(id: 901, name: "Space Force", poster_path: "space_force", backdrop_path: "space_force_backdrop", vote_average: 7.1),
        TVCard(id: 234, name: "Space Force", poster_path: "space_force", backdrop_path: "space_force_backdrop", vote_average: 7.1)
    ]
    
    static let tv = TV(id: 012, backdrop_path: "space_force_backdrop", genres: [Genre(id: 123, name: "Comedy")], overview: "A four-star general begrudgingly teams up with an eccentric scientist to get the U.S. military's newest agency — Space Force — ready for lift-off.", poster_path: "space_force", first_air_date: "2020", episode_run_time: [30, 32], name: "Space Force", vote_average: 7.1, number_of_seasons: 1)
    
    static let tvCast = [
        CastCard(id: 073, character: nil, name: "Steve Carell", profile_path: "steve_carell"),
        CastCard(id: 074, character: nil, name: "Steve Carell", profile_path: "steve_carell"),
        CastCard(id: 075, character: nil, name: "Steve Carell", profile_path: "steve_carell"),
        CastCard(id: 076, character: nil, name: "Steve Carell", profile_path: "steve_carell"),
        CastCard(id: 077, character: nil, name: "Steve Carell", profile_path: "steve_carell"),
        CastCard(id: 078, character: nil, name: "Steve Carell", profile_path: "steve_carell"),
        CastCard(id: 079, character: nil, name: "Steve Carell", profile_path: "steve_carell"),
        CastCard(id: 070, character: nil, name: "Steve Carell", profile_path: "steve_carell"),
        CastCard(id: 071, character: nil, name: "Steve Carell", profile_path: "steve_carell"),
        CastCard(id: 072, character: nil, name: "Steve Carell", profile_path: "steve_carell"),
        CastCard(id: 063, character: nil, name: "Steve Carell", profile_path: "steve_carell"),
        CastCard(id: 064, character: nil, name: "Steve Carell", profile_path: "steve_carell"),
        CastCard(id: 065, character: nil, name: "Steve Carell", profile_path: "steve_carell"),
        CastCard(id: 066, character: nil, name: "Steve Carell", profile_path: "steve_carell"),
        CastCard(id: 067, character: nil, name: "Steve Carell", profile_path: "steve_carell"),
        CastCard(id: 068, character: nil, name: "Steve Carell", profile_path: "steve_carell"),
        CastCard(id: 069, character: nil, name: "Steve Carell", profile_path: "steve_carell"),
        CastCard(id: 060, character: nil, name: "Steve Carell", profile_path: "steve_carell"),
        CastCard(id: 061, character: nil, name: "Steve Carell", profile_path: "steve_carell"),
        CastCard(id: 062, character: nil, name: "Steve Carell", profile_path: "steve_carell")
    ]
    
    static let searchMovies = [
        Search(id: 456, backdrop_path: "joker_backdrop", profile_path: nil, vote_average: 8.2, release_date: "2019", title: "Joker", name: nil, media_type: "movie"),
        Search(id: 567, backdrop_path: "joker_backdrop", profile_path: nil, vote_average: 8.2, release_date: "2019", title: "Joker", name: nil, media_type: "movie"),
        Search(id: 678, backdrop_path: "joker_backdrop", profile_path: nil, vote_average: 8.2, release_date: "2019", title: "Joker", name: nil, media_type: "movie")
    ]
    
    static let searchTv = [
        Search(id: 123, backdrop_path: "space_force_backdrop", profile_path: nil, vote_average: 7.1, release_date: nil, title: nil, name: "Space Force", media_type: "tv"),
        Search(id: 234, backdrop_path: "space_force_backdrop", profile_path: nil, vote_average: 7.1, release_date: nil, title: nil, name: "Space Force", media_type: "tv"),
        Search(id: 345, backdrop_path: "space_force_backdrop", profile_path: nil, vote_average: 7.1, release_date: nil, title: nil, name: "Space Force", media_type: "tv")
    ]
    
    static let searchPerson = [
        Search(id: 789, backdrop_path: nil, profile_path: "steve_carell", vote_average: nil, release_date: nil, title: nil, name: "Steve Carell", media_type: "person"),
        Search(id: 890, backdrop_path: nil, profile_path: "steve_carell", vote_average: nil, release_date: nil, title: nil, name: "Steve Carell", media_type: "person"),
        Search(id: 901, backdrop_path: nil, profile_path: "steve_carell", vote_average: nil, release_date: nil, title: nil, name: "Steve Carell", media_type: "person")
    ]
}
