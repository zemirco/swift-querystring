
import Foundation



/**
 * Query string
 */
public class QueryString {
    
    
    
    public init() {
        
    }
    
    
    
    /**
     * encode
     */
    public func encode() -> String {
        
        var mirror = reflect(self)
        var params = [String]()
        
        for var i = 0; i < mirror.count; i++ {
            let (name, child) = mirror[i]
            
            if child.valueType is String.Type {
                params.append("\(name)=\"\(child.value)\"")
            }
            
            else if child.valueType is Bool.Type {
                params.append("\(name)=\(child.value)")
            }
            
            else if child.valueType is Int.Type {
                params.append("\(name)=\(child.value)")
            }
            
            else if child.valueType is [String].Type {
                if let arr = child.value as? [String] {
                    var vals = arr.map() {"\"\($0)\""}
                    var values = ",".join(vals)
                    params.append("\(name)=[\(values)]")
                }
            }
            
            else {
                // handle optionals
                
                switch child.disposition {
                case .Optional:
                    var test = reflect(child.value)
                    if test.count > 0 && test[0].0 == "Some" {
                        println(name)
                        println(test[0].1.value)
                        println(test[0].1.valueType is String.Type)
                    }
                default:
                    break
                }
//                
//                if child.summary != "nil" {
//                    params.append("\(name)=\"\(child.summary)\"")
//                }
            }
        }
        
        return "&".join(params)
        
    }
    
}