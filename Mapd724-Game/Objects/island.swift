import SpriteKit
import GameplayKit
class island: GameObject
{
     //constructor
        init()
        {
            super.init(imageString: "island", initialScale: 2.0)
            Start()
        }
        required init?(coder aDecoder: NSCoder) {
            fatalError()
        }
        
        override func CheckBounds() {
            if(self.position.y < -715){
                self.Reset()
            }
            
        }
   
       func move()
       {
        self.position.y -= self.dy!
    }
    
        override func Reset()
        {
            self.position.y = 715
            let randomX: Int = (randomsource?.nextInt(upperBound: 614 + Int(self.halfwidth!)))! - (307 - Int(self.width!))
            self.position.x = CGFloat(randomX)
        }
    
        override func Start()
        {
            
            self.zPosition = 1
            self.Reset()
            self.dy = 5.0
            
            
        }
        override func Update() {
            self.move()
            self.CheckBounds()
        }
    }


