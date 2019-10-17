//
//  GameScene.swift
//  BabaIsYou-F19
//
//  Created by Parrot on 2019-10-17.
//  Copyright © 2019 Parrot. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    
//var player:Player = Player(imageNamed: "rabbit64")
    
  /**  var upArrow:SKSpriteNode!
    var downArrow:SKSpriteNode!
    var leftArrow:SKSpriteNode!
    var rightArrow:SKSpriteNode!
     var arrowTouched:String = ""
    **/
    
    
    // fake changes to check commitsss
    var player:SKSpriteNode!
    let PLAYER_SPEED:CGFloat = 20
    
    
    
    override func didMove(to view: SKView) {
        self.physicsWorld.contactDelegate = self
        
//        self.player = (self.childNode(withName: "player") as! SKSpriteNode)
        self.player = self.childNode(withName: "player") as? SKSpriteNode
        
     /**   self.player = Player(imageNamed: "rabbit64")
        self.player.size.width = self.size.width/11
        self.player.size.height = self.size.height/11
        self.player.position = CGPoint(x: self.size.width/8, y: self.size.height / 15)
        addChild(self.player)
        
        
        
        
        self.leftArrow = SKSpriteNode(imageNamed: "left")
        self.leftArrow.size = CGSize(width: self.size.width/25, height: self.size.height/20)
        self.leftArrow.position = CGPoint(x: 100, y: 250)
        addChild(self.leftArrow)
        
        self.downArrow = SKSpriteNode(imageNamed: "down")
        self.downArrow.size = CGSize(width: self.size.height/20 , height: self.size.width/30)
        self.downArrow.position = CGPoint(x: self.leftArrow.position.x + self.leftArrow.size.width*1.5, y: self.leftArrow.position.y - self.leftArrow.size.height*1.5)
        addChild(self.downArrow)
        
        self.rightArrow = SKSpriteNode(imageNamed: "right")
        self.rightArrow.size = CGSize(width: self.size.width/25, height: self.size.height/20)
        self.rightArrow.position = CGPoint(x: self.downArrow.position.x + self.leftArrow.size.width*1.5, y: self.leftArrow.position.y)
        addChild(self.rightArrow)
        
        self.upArrow = SKSpriteNode(imageNamed: "up")
        self.upArrow.size = CGSize(width: self.size.height/20, height: self.size.width/30)
        self.upArrow.position = CGPoint(x: self.downArrow.position.x, y: self.leftArrow.position.y + self.leftArrow.size.height*1.5)
        addChild(self.upArrow)
        **/
        
    }
    
    
   
    
   
    func didBegin(_ contact: SKPhysicsContact) {
        print("Something collided!")
    }
    
    
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
  /**  func movePlayer(){
        
        if ((self.arrowTouched == "up")&&(self.player.position.y < self.size.height)){
            let playerMove = SKAction.moveBy(x: 0, y: 30, duration: 0.01)
            self.player.run(playerMove)
            self.player.zRotation = .pi / 2
        }
        else if (self.arrowTouched == "down")&&(self.player.position.y > 0){
            let playerMove = SKAction.moveBy(x: 0, y: -30, duration: 0.01)
            self.player.run(playerMove)
            self.player.zRotation = .pi / -2
        }
        else if (self.arrowTouched == "left")&&(self.player.position.x > 0 ){
            let playerMove = SKAction.moveBy(x: -30, y: 0, duration: 0.01)
            self.player.run(playerMove)
            self.player.zRotation = .pi
            //self.player.position.x = self.player.position.x - 10
        }
        else if (self.arrowTouched == "right")&&(self.player.position.x < self.size.width){
            let playerMove = SKAction.moveBy(x: 30, y: 0, duration: 0.01)
            self.player.run(playerMove)
            self.player.zRotation = 0
            //self.player.position.x = self.player.position.x + 10
        }**/
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
        
       
        let mouseTouch = touches.first
        if (mouseTouch == nil) {
            return
        }
        let location = mouseTouch!.location(in: self)
        
      
        let nodeTouched = atPoint(location).name
       
        if (nodeTouched == "up") {
            self.player.position.y = self.player.position.y + PLAYER_SPEED
        }
        else if (nodeTouched == "down") {
        
            self.player.position.y = self.player.position.y - PLAYER_SPEED
        }
        else if (nodeTouched == "left") {
            // move left
            self.player.position.x = self.player.position.x - PLAYER_SPEED
        }
        else if (nodeTouched == "right") {
            // move right
            self.player.position.x = self.player.position.x + PLAYER_SPEED
        }

        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
}
