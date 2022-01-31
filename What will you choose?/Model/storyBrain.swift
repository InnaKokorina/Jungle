//
//  storyBrain.swift
//  What will you choose?
//
//  Created by Inna Kokorina on 31.01.2022.
//

import Foundation
struct StoryBrain {
    var stories = [
        Story(title: "Вы приехали с группой туристов в дикие джунгли исследовать местную природу. Неожиданно вы отстаете от группы и осаетесь одни. В кустах что то показалось...Что вы сделаете?",
              choice:["Очень интересно! пойду посмотрю)", "Достаете рацию и просите гида вернуться за вами!"],
              dest: [2,1]),
        Story(title: "Гид не отозвался, вы ищите пути куда можно убежать, тем временем из кустов доносится рычание!",
              choice: ["С замиранием стою на месте и жду что будет дальше","Бегу куда глаза гледят!"],
              dest: [2,3]),
        Story(title: "На вас прыгает огромная дикая кошка. Вы уклоняетесь, но зверь не отступает и подкрадывается ближе. Вы вспоминаете что у вас в рюкзаке, и достаете...",
              choice: ["Фотоаппарат! Это же леопард! Обожаю котиков!" ,"Хот-дог остался с завтрака! надо прикормить зверя!"],
              dest: [5,4]),
        Story(title: "Вы заблудились еще сильнее и позади слышно рычание! Осталось надеяться на чудо!",
              choice: ["The","End"],
              dest: [0,0]),
        Story(title: "Убегая сломя голову от хищницы вы обдумываете, что сосиски сейчас совсем не из мяса и кошка никогда не станет есть такую еду!",
              choice: ["The","End"],
              dest: [0,0]),
        Story(title: "Вы подходите полиже, делаете селфи с леопардом, на котором отчетливо видны огромные клыки животного.",
              choice: ["The","End"],
              dest: [0,0])
    ]
    
    var storyNumber = 0
    var choiceNumber = 0
    
    func getTitle() -> String {
        stories[storyNumber].title
    }
    
    func setButtonTitle(n:Int) -> String {
        stories[storyNumber].choice[n]
    }
    
    mutating func  getAnswer(userAnswer:String) {
        if stories[storyNumber].choice[0] == userAnswer {
            storyNumber = stories[storyNumber].dest[0]
        } else {
            storyNumber = stories[storyNumber].dest[1]
        }
    }
}

