//
//  DataBase.swift
//  Instagram
//
//  Created by Cindy Bajoni on 11/07/2022.
//

import Foundation

var storiesUser: [Stories] = [Stories(picture: "lille", name: "📸"), Stories(picture: "jedusor", name: "🐈‍⬛"), Stories(picture: "malta", name: "🇲🇹"), Stories(picture: "maroc", name: "🇲🇦")]

var users: [Users] = [Users(username: "Cindie 🌺", userbio: "Lilloise • 30 ans • \n • Enjoy the little things 🌻", userpic: "img8", userarobas: "cindoushka", isPrivate: true, isOnline: true, isCurrentUser: true, followers: 328, follows: 234, stories: storiesUser)]


var publications: [Publications] = [Publications(pic: "img1", desc: "Love quote sign. ❣️ \n #lovequote #qotd #quotesign #quoteboard", publishedBy: users[0], likedBy: [], commentaires: [], date: "5 Juillet 2022"),
                                    Publications(pic: "img2", desc: "Montmartre ⛪️🌿", publishedBy: users[0], likedBy: [], commentaires: [], date: "6 Juin 2022"),
                                    Publications(pic: "img3", desc: "Lille 3000 🌱", publishedBy: users[0], likedBy: [], commentaires: [], date: "14 Mai 2022"),
                                    Publications(pic: "img4", desc: "Friendship goal 🦆", publishedBy: users[0], likedBy: [], commentaires: [], date: "24 Avril 2022"),
                                    Publications(pic: "img5", desc: "30 ans sinon rien. 🌸 \n Un peu en retard, merci les amis pour la présence et les présents. 💝 Une excellente soirée sur le thème des années 90 à vos côtés qui aide à faire passer la pilule des 30 ans 😅 \n Much Love. 💜", publishedBy: users[0], likedBy: [], commentaires: [], date: "18 Aril 2022"),
                                    Publications(pic: "img6", desc: "Let yourself bloom. 🌷🌺", publishedBy: users[0], likedBy: [], commentaires: [], date: "6 Avril 2022"),
                                    Publications(pic: "img7", desc: "ℒife is good ☀️🌴🇲🇦", publishedBy: users[0], likedBy: [], commentaires: [], date: "21 Mars 2022"),
                                    Publications(pic: "img8", desc: "Ce que j’étais hier, je le serai demain. \n | V. Hugo |", publishedBy: users[0], likedBy: [], commentaires: [], date: "4 Mars 2022"),
                                    Publications(pic: "img9", desc: "Les petits loups 🐺🤍", publishedBy: users[0], likedBy: [], commentaires: [], date: "29 Novembre 2021"),
                                    Publications(pic: "img10", desc: "Happy 20th La Piscine de Roubaix 🎂 \n -> swipe tout à droite pour découvrir le premier portrait du Roi Jedusor Ier 👑😝", publishedBy: users[0], likedBy: [], commentaires: [], date: "13 Novembre 2021"),
                                    Publications(pic: "img11", desc: "🛥🌳☀️", publishedBy: users[0], likedBy: [], commentaires: [], date: "22 Septembre 2021"),
                                    Publications(pic: "img12", desc: "W e l c o m e H o m e … Scorpius « Pius »  ou « Titou » 🖤", publishedBy: users[0], likedBy: [], commentaires: [], date: "25 Août 2021"),
                                    Publications(pic: "img13", desc: "Entourez-vous des bonnes personnes. \n Des personnes qui vous poussent vers le haut, vous soutiennent et vous apportent de la joie. 🙏🏼♥️", publishedBy: users[0], likedBy: [], commentaires: [], date: "14 Août 2021"),
                                    Publications(pic: "img14", desc: "Know your fuckin worth. 👊🏼", publishedBy: users[0], likedBy: [], commentaires: [], date: "30 Juillet 2021"),
                                    Publications(pic: "img15", desc: "Take a deep breath. 🌸", publishedBy: users[0], likedBy: [], commentaires: [], date: "19 Juillet 2021"),
                                    Publications(pic: "img16", desc: "💚🤍❤️ CAMPIONI D’EUROPA 🏆🏆🌟🌟🌟🌟", publishedBy: users[0], likedBy: [], commentaires: [], date: "14 Juillet 2021"),
                                    Publications(pic: "jedusor", desc: "Mon Jedusor au pays des merveilles 💭🥰", publishedBy: users[0], likedBy: [], commentaires: [], date: "18 Juin 2021"), Publications(pic: "lille", desc: "Lille, pleine de vie à nouveau. ❤️‍🔥", publishedBy: users[0], likedBy: [], commentaires: [], date: "7 Juin 2021")]
