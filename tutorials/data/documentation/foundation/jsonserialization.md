<!--
{
  "availability" : [
    "iOS: 5.0.0 -",
    "iPadOS: 5.0.0 -",
    "macCatalyst: 13.1.0 -",
    "macOS: 10.7.0 -",
    "tvOS: 9.0.0 -",
    "visionOS: 1.0.0 -",
    "watchOS: 2.0.0 -"
  ],
  "documentType" : "symbol",
  "framework" : "Foundation",
  "identifier" : "/documentation/Foundation/JSONSerialization",
  "metadataVersion" : "0.1.0",
  "role" : "Class",
  "symbol" : {
    "kind" : "Class",
    "modules" : [
      "Foundation"
    ],
    "preciseIdentifier" : "c:objc(cs)NSJSONSerialization"
  },
  "title" : "JSONSerialization"
}
-->

# JSONSerialization

An object that converts between JSON and the equivalent Foundation objects.

```
class JSONSerialization
```

## Overview

You use the [`JSONSerialization`](/documentation/Foundation/JSONSerialization) class to convert JSON to Foundation objects and convert Foundation objects to JSON.

To convert a Foundation object to JSON, the object must have the following properties:

- The top level object is an ``doc://com.apple.foundation/documentation/Foundation/NSArray`` or ``doc://com.apple.foundation/documentation/Foundation/NSDictionary``, unless you set the ``doc://com.apple.foundation/documentation/Foundation/JSONSerialization/WritingOptions/fragmentsAllowed`` option.
- All objects are instances of ``doc://com.apple.foundation/documentation/Foundation/NSString``, ``doc://com.apple.foundation/documentation/Foundation/NSNumber``, ``doc://com.apple.foundation/documentation/Foundation/NSArray``, ``doc://com.apple.foundation/documentation/Foundation/NSDictionary``, or ``doc://com.apple.foundation/documentation/Foundation/NSNull``.
- All dictionary keys are instances of ``doc://com.apple.foundation/documentation/Foundation/NSString``.
- Numbers are neither `NaN` nor infinity.

Other rules may apply. Calling [`isValidJSONObject(_:)`](/documentation/Foundation/JSONSerialization/isValidJSONObject(_:)) or attempting a conversion are the definitive ways to tell if the [`JSONSerialization`](/documentation/Foundation/JSONSerialization) class can convert given object to JSON data.

> Note:
> On iOS 7 and later and macOS 10.9 and later, ``doc://com.apple.foundation/documentation/Foundation/JSONSerialization`` is thread safe.

## Topics

### Creating a JSON Object

[`jsonObject(with:options:)`](/documentation/Foundation/JSONSerialization/jsonObject(with:options:)-8demi)

Returns a Foundation object from given JSON data.

[`jsonObject(with:options:)`](/documentation/Foundation/JSONSerialization/jsonObject(with:options:)-3afap)

Returns a Foundation object from JSON data in a given stream.

[`JSONSerialization.ReadingOptions`](/documentation/Foundation/JSONSerialization/ReadingOptions)

Options used when creating Foundation objects from JSON data.

### Creating JSON Data

[`data(withJSONObject:options:)`](/documentation/Foundation/JSONSerialization/data(withJSONObject:options:))

Returns JSON data from a Foundation object.

[`writeJSONObject(_:to:options:error:)`](/documentation/Foundation/JSONSerialization/writeJSONObject(_:to:options:error:))

Writes a given JSON object to a stream.

[`JSONSerialization.WritingOptions`](/documentation/Foundation/JSONSerialization/WritingOptions)

Options for writing JSON data.

[`isValidJSONObject(_:)`](/documentation/Foundation/JSONSerialization/isValidJSONObject(_:))

Returns a Boolean value that indicates whether the serializer can convert a given object to JSON data.



---

Copyright &copy; 2026 Apple Inc. All rights reserved. | [Terms of Use](https://www.apple.com/legal/internet-services/terms/site.html) | [Privacy Policy](https://www.apple.com/privacy/privacy-policy)
