//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class DeviceDescriptionModel: APIModel {

    public var deviceModelName: String?

    public var deviceModelType: Int?

    public var deviceUuid: String?

    public init(deviceModelName: String? = nil, deviceModelType: Int? = nil, deviceUuid: String? = nil) {
        self.deviceModelName = deviceModelName
        self.deviceModelType = deviceModelType
        self.deviceUuid = deviceUuid
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        deviceModelName = try container.decodeIfPresent("deviceModelName")
        deviceModelType = try container.decodeIfPresent("deviceModelType")
        deviceUuid = try container.decodeIfPresent("deviceUuid")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(deviceModelName, forKey: "deviceModelName")
        try container.encodeIfPresent(deviceModelType, forKey: "deviceModelType")
        try container.encodeIfPresent(deviceUuid, forKey: "deviceUuid")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? DeviceDescriptionModel else { return false }
      guard self.deviceModelName == object.deviceModelName else { return false }
      guard self.deviceModelType == object.deviceModelType else { return false }
      guard self.deviceUuid == object.deviceUuid else { return false }
      return true
    }

    public static func == (lhs: DeviceDescriptionModel, rhs: DeviceDescriptionModel) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
