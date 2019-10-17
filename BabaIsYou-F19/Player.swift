

import Foundation
import SpriteKit


class Player: SKSpriteNode {
    var bulletPiece: SKSpriteNode!
  
    override init(texture: SKTexture?, color: UIColor, size: CGSize) {
        super.init(texture: texture, color: color, size: size)
 

        
    }
    
  
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
   
}
