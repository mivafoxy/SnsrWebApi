//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class ObjectValueModel: APIModel {

    public var objectId: Int?

    public var objectReceiveTime: String?

    public var objectValue: String?

    public init(objectId: Int? = nil, objectReceiveTime: String? = nil, objectValue: String? = nil) {
        self.objectId = objectId
        self.objectReceiveTime = objectReceiveTime
        self.objectValue = objectValue
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        objectId = try container.decodeIfPresent("objectId")
        objectReceiveTime = try container.decodeIfPresent("objectReceiveTime")
        objectValue = try container.decodeIfPresent("objectValue")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(objectId, forKey: "objectId")
        try container.encodeIfPresent(objectReceiveTime, forKey: "objectReceiveTime")
        try container.encodeIfPresent(objectValue, forKey: "objectValue")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ObjectValueModel else { return false }
      guard self.objectId == object.objectId else { return false }
      guard self.objectReceiveTime == object.objectReceiveTime else { return false }
      guard self.objectValue == object.objectValue else { return false }
      return true
    }

    public static func == (lhs: ObjectValueModel, rhs: ObjectValueModel) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
