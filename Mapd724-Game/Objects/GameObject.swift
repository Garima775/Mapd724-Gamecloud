import SpriteKit
import GameplayKit

class GameObject: SKSpriteNode, GameProtocol
{
    //Instance members
    var dx: CGFloat?
    var dy: CGFloat?
    var width: CGFloat?
    var height: CGFloat?
    var halfheight: CGFloat?
    var halfwidth: CGFloat?
    var scale: CGFloat?
    var isColliding:Bool?
    var randomsource: GKARC4RandomSource?
    var randomDist: GKRandomDistribution?
    
    //constructor
    
    init(imageString: String, initialScale:CGFloat)
    {
        //initialise the object with an image
        let texture = SKTexture(imageNamed: imageString)
        let color = UIColor.clear
        super.init(texture: texture, color:color, size:texture.size())
        self.scale = initialScale
        self.setScale(scale!)
        self.width = texture.size().width * self.scale!
        self.height = texture.size().height * self.scale!
        self.halfwidth = self.width! * 0.5
        self.halfheight = self.height! * 0.5
        self.isColliding = false
        self.name = imageString
        randomsource = GKARC4RandomSource()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func Reset() {
        
    }
    
    public func CheckBounds() {
        
    }
    
    public func Start() {
        
    }
    
    public func Update() {
        
    }
    
    
}
