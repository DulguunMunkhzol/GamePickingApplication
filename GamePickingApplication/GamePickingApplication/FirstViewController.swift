//
//  FirstViewController.swift
//  GamePickingApplication
//
//  Created by Dulguun Munkhzol on 5/1/24.
//

import Foundation
import UIKit

class FirstViewController : UITableViewController {
    
    var RandomIndex = 0
    
    override func viewDidLoad() {
        fillArray()
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var indexPath = tableView.indexPathForSelectedRow
        
        var GamePickerRow = GameObjectArray[indexPath!.row]
        
        var destinationController = segue.destination as! ViewController
        destinationController.segueGameChildHolder = GamePickerRow
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return GameObjectArray.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //var cell = UITableViewCell()
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")

        let cellIndex = indexPath
        var GamePickerRow = GameObjectArray[indexPath.row]
        cell!.textLabel!.text =  GamePickerRow.GameName
        cell!.detailTextLabel!.text = "Price:  " + GamePickerRow.GamePrice
        cell!.imageView!.image = UIImage(named : GamePickerRow.GameImageLogo)
        return cell!
    }
    
    
    
    
    var GameObjectArray = [Games]()

    func convertBytesToImages(ImageName:String) -> UIImage{
        var img = UIImage()
        
        var imageUrl = URL(string: ImageName)
        
        let dataBytes = try? Data(contentsOf: imageUrl!)
        print(dataBytes ?? "error no image at \(imageUrl)")
        
        img = UIImage(data: dataBytes!)!
        
        return img
    }
    
    
    
    func fillArray(){
        let game0 = Games()
        game0.GameName = "PacMan"
        game0.GamePrice = "Free"
        game0.GameType = "Single Player"
        game0.GameDescription = "Pacman was originally created in Japan, in 1980, Maze runner game. The player plays as pac-man to avoid ghosts and gain as many points as possible. Once pac-man eats a fruit the ghost become edible and gives more points"
        game0.GameImageFull = "pacman1.jpeg"
        game0.GameImageLogo =  "pacmanLogo.png"
        game0.GameWebsite = "https://freepacman.org/"
        GameObjectArray.insert(game0, at: 0)
        
        let game1 = Games()
        game1.GameName = "Tetris"
        game1.GamePrice = "Free"
        game1.GameType = "Single player / multiplayer"
        game1.GameDescription = "Tetris was created in Russia, in 1985. In Tetris the player must place the dropping blocks and organize them so that the blocks create horizontal line, which will be deleted and gain points. The Tetris is an infinite game that can be played until you lose."
        game1.GameImageFull = "tetris1.jpg"
        game1.GameImage1 = "tetris3.jpeg"
        game1.GameImage2 = "tetris2.png"
        game1.GameImageLogo =  "tetrisLogo.png"
        game1.GameWebsite = "https://tetr.io/"

        GameObjectArray.append(game1)
        
        let game2 = Games()
        game2.GameName = "Chess"
        game2.GamePrice = "Free"
        game2.GameType = "Single player / multiplayer"
        game2.GameDescription = "Chess is a two-player, strategy game, where the players must defeat the opposing team’s king. each of the peaces of players have different roles and ways to move. Chess is a highly competitive game that has close to infinite number of ways to play."
        game2.GameImageFull = "chess1.jpg"
        game2.GameImage1 = "chess2.jpeg"
        game2.GameImageLogo =  "ChessLogo.png"
        game2.GameWebsite = "https://www.chess.com/"

        GameObjectArray.append(game2)
        
        let game3 = Games()
        game3.GameName = "Minecraft"
        game3.GamePrice = "Deluxe - 39.99$ / Normal - 29.99$"
        game3.GameType = "Single player / multiplayer"
        game3.GameDescription = "Minecraft is 2011 sandbox game where the player has free rein on close to everything. The game is about a block person called Steve who have found himself alone in the zombie driven world, where he can do anything he wants. In the game the main objective is to build, explore and kill the ender dragon."
        game3.GameImageFull = "minecraft2.jpeg"
        game3.GameImage2 = "minecraft3.jpeg"
        game3.GameImage1 = "minecraft1.png"
        game3.GameImageLogo =  "minecraftLogo.png"
        game3.GameWebsite = "https://www.minecraft.net/en-us"

        GameObjectArray.append(game3)
        
        let game4 = Games()
        game4.GameName = "FNAF"
        game4.GamePrice = "4.99$"
        game4.GameType = "Single player"
        game4.GameDescription = "FNAF is a horror game where the security guard must survive in his room for 5 nights, from the animatronic monsters called, bonny, chicka, foxy and Freddy. The game has many versions and iterations, books and more. It is a huge franchise full of lore and crazy mini games."
        game4.GameImageFull = "fnaf1.jpeg"
        game4.GameImage2 = "fnaf2.png"
        game4.GameWebsite = "https://store.steampowered.com/app/319510/Five_Nights_at_Freddys/"
        game4.GameImageLogo = "FNAFLogo.png"
        GameObjectArray.append(game4)
        
        let game5 = Games()
        game5.GameName = "Rocket League"
        game5.GamePrice = "Free"
        game5.GameType = "Multiplayer"
        game5.GameDescription = "Rocket league is a game of soccer played by cars. The game is full of fun with multiple cars and interesting cosmetics to customize your car. In the game you must score against your opponent by ramming the soccer ball with your car. It is a fun game with full of excitement"
        game5.GameImageFull = "rocketLeague2.jpeg"
        game5.GameImage1 = "rocketLeague3.jpeg"
        game5.GameImage2 = "rocketLeague1.png"
        game5.GameImageLogo = "RocketLeagueLogo.png"
        game5.GameWebsite = "https://www.rocketleague.com/en"
        GameObjectArray.append(game5)
        
        let game6 = Games()
        game6.GameName = "Hollow knight"
        game6.GamePrice = "15$"
        game6.GameType = "singlePlayer"
        game6.GameDescription = "Hollow knight is beautifully made platformed, where the player jumps and kills all sorts of enemies and gain new abilities, full of many different types of bosses. The main objective of the game is to defeat all bosses to reach the hollow knight in order to defeat and release the kingdom from his curse"
        game6.GameImageFull = "hollowKnight3.jpeg"
        game6.GameImage2 = "hollowKnight1.png"
        game6.GameImageLogo = "HollowKnightLogo.png"
        game6.GameWebsite = "https://www.hollowknight.com/"
        GameObjectArray.append(game6)
        
        let game7 = Games()
        game7.GameName = "Sims 4"
        game7.GamePrice = "Free"
        game7.GameType = "singlePlayer"
        game7.GameDescription = "Sims is a game where you create your own free life inside a game. The game has several customizations and character creations, you can add more add-ons to enriched the game and make the game so much more. One of the most prominent parts of the game is to build your own house, get a job and run all sorts of expirements that you could potentially bring it to life!"
        game7.GameImageFull = "sims1.jpeg"
        game7.GameImage1 = "sims3.png"
        game7.GameImageLogo = "sims4Logo.png"
        game7.GameWebsite = "https://www.ea.com/games/the-sims/the-sims-4"
        GameObjectArray.append(game7)
        
        let game8 = Games()
        game8.GameName = "Pokemon"
        game8.GamePrice = "59.99$ +"
        game8.GameType = "singlePlayer"
        game8.GameDescription = "Pokemon is a huge franchise with multiple games made by Nintendo. In each of the game, the player must catch cute, cool, and weird monsters called Pokemon to build the best team In order to become champion of the region. To become champion the player must defeat 8 gym leaders, the rival team and many challengers"
        game8.GameImageFull = "pokemon1.jpeg"
        game8.GameImage2 = "pokemon2.png"
        game8.GameImageLogo = "PokemonLogo.png"
        game8.GameWebsite = "https://www.pokemon.com/us"
        
        GameObjectArray.append(game8)
        
    }
    
}
