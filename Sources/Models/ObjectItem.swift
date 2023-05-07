//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class ObjectItem: APIModel {

    public var isEditable: Bool?

    public var isInitable: Bool?

    public var isShown: Bool?

    public var objectId: Int?

    public var objectInitValue: String?

    public init(isEditable: Bool? = nil, isInitable: Bool? = nil, isShown: Bool? = nil, objectId: Int? = nil, objectInitValue: String? = nil) {
        self.isEditable = isEditable
        self.isInitable = isInitable
        self.isShown = isShown
        self.objectId = objectId
        self.objectInitValue = objectInitValue
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        isEditable = try container.decodeIfPresent("isEditable")
        isInitable = try container.decodeIfPresent("isInitable")
        isShown = try container.decodeIfPresent("isShown")
        objectId = try container.decodeIfPresent("objectId")
        objectInitValue = try container.decodeIfPresent("objectInitValue")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(isEditable, forKey: "isEditable")
        try container.encodeIfPresent(isInitable, forKey: "isInitable")
        try container.encodeIfPresent(isShown, forKey: "isShown")
        try container.encodeIfPresent(objectId, forKey: "objectId")
        try container.encodeIfPresent(objectInitValue, forKey: "objectInitValue")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ObjectItem else { return false }
      guard self.isEditable == object.isEditable else { return false }
      guard self.isInitable == object.isInitable else { return false }
      guard self.isShown == object.isShown else { return false }
      guard self.objectId == object.objectId else { return false }
      guard self.objectInitValue == object.objectInitValue else { return false }
      return true
    }

    public static func == (lhs: ObjectItem, rhs: ObjectItem) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
