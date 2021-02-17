import Foundation 
import ObjectMapper
import AlamofireObjectMapper

class Name: Mappable {
    
    var key: NSNumber?
    var startTime: String?
    var endTime: String?
    var resourceId: NSNumber?
    var customerFirstName: String?
    var customerLastName: String?
    var customerMiddleName: String?
    
    required init?(map: Map){
    }
    
    func mapping(map: Map) {
        key <- map["key"]
        startTime <- map["StartTime"]
        endTime <- map["EndTime"]
        resourceId <- map["ResourceId"]
        customerFirstName <- map["CustomerFirstName"]
        customerLastName <- map["CustomerLastName"]
        customerMiddleName <- map["CustomerMiddleName"]
    }
}
-------
{
    "key": 1212,
    "StartTime": "11:22",
    "EndTime": "00:99:09",
    "ResourceId": 12121,
    "CustomerFirstName": "name",
    "CustomerLastName": "names",
    "CustomerMiddleName": "nothing",
}
