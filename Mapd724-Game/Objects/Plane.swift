import SpriteKit
class Plane: GameObject
{
    //constructor
    init()
    {
        super.init(imageString: "plane", initialScale: 2.0)
        Start()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    override func CheckBounds()
    {
        //right boundary
        if(self.position.x >= 307 - self.halfwidth!)
        {
            self.position.x = 307 - self.halfwidth!
        }
        
        //left boundary
        if(self.position.x <= -307 + self.halfwidth!)
        {
            self.position.x = -307 + self.halfwidth!
        }
    }
    override func Reset()
    {
        
    }
    override func Start() {
        self.zPosition = 2
        
    }
    override func Update() {
        self.CheckBounds()
        
    }
    func TouchMove(newPos: CGPoint)
    {
        self.position = newPos
    }
}
