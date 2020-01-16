import SpriteKit
import GameplayKit
class Cloud: GameObject
{
    //constructor
         init()
         {
             super.init(imageString: "cloud", initialScale: 1.0)
             Start()
         }
         required init?(coder aDecoder: NSCoder) {
             fatalError()
         }
         
         override func CheckBounds() {
             if(self.position.y < -760){
                 self.Reset()
             }
             
         }
    
        func move()
        {
         self.position.y -= self.dy!
            self.position.x -= self.dx!
     }
     
         override func Reset()
         {
             self.position.y = 760
             let randomX: Int = (randomsource?.nextInt(upperBound: 614 + Int(self.halfwidth!)))! - (307 - Int(self.width!))
             self.position.x = CGFloat(randomX)
            self.dy = CGFloat((randomsource?.nextUniform())! * 5.0) + 5.0
            self.dx = CGFloat((randomsource?.nextUniform())! * -4.0) + 2.0
         }
     
         override func Start()
         {
             
             self.zPosition = 3
             self.Reset()
             self.dy = 5.0
            self.alpha = 0.5
             
             
         }
         override func Update() {
             self.move()
             self.CheckBounds()
         }
     }


