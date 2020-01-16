import UIKit
import AVFoundation
import SpriteKit
import GameplayKit

let screenSize = UIScreen.main.bounds
var screenWidth: CGFloat?
var screenHeight: CGFloat?
class GameScene: SKScene {
    
    var planeSprite: Plane?
    var islandSprite: island?
    var cloudSprite: [Cloud] = []
    
    
    override func didMove(to view: SKView) {
        screenWidth = frame.width
        screenHeight = frame.height
        
        //adding plane here using this method
        self.planeSprite = Plane()
        self.planeSprite?.position = CGPoint(x: 0, y: -575) //set the position of the plane using coordinates of x and y.
        self.addChild(self.planeSprite!)
        
        //adding island
        self.islandSprite = island()
        //set the position of the island using coordinates of x and y.
        self.addChild(self.islandSprite!)
        
        //add one cloud
        for index in 0...3
        {
            let cloud: Cloud = Cloud()
            cloudSprite.append(cloud)
            self.addChild(cloudSprite[index])
        }
        
        
    }
    
    
    func touchDown(atPoint pos : CGPoint)
    {
        self.planeSprite?.TouchMove(newPos: CGPoint(x: pos.x, y: -575))
       
        }
    
    
    func touchMoved(toPoint pos : CGPoint)
    {
      self.planeSprite?.TouchMove(newPos: CGPoint(x: pos.x, y: -575))
        
    }
    
    func touchUp(atPoint pos : CGPoint)
    {
       self.planeSprite?.TouchMove(newPos: CGPoint(x: pos.x, y: -575))
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for t in touches {self.touchDown(atPoint: t.location(in: self))}
    }

    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for t in touches {self.touchMoved(toPoint: t.location(in: self))
    }
    }
    
       override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for t in touches {self.touchUp(atPoint: t.location(in: self))
    }
        }
    
       override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?)
    {
       for t in touches {self.touchUp(atPoint: t.location(in: self))
    }
        }
    
    
       override func update(_ currentTime: TimeInterval)
    {
        // Called before each frame is rendered
        self.planeSprite?.Update()
        self.islandSprite?.Update()
        for cloud in cloudSprite
        {
            cloud.Update()
        }
        
     
    }
}

