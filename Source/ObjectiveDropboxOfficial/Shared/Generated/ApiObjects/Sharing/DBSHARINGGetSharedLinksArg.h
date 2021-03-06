///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSerializableProtocol.h"

@class DBSHARINGGetSharedLinksArg;

#pragma mark - API Object

///
/// The `GetSharedLinksArg` struct.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBSHARINGGetSharedLinksArg : NSObject <DBSerializable>

#pragma mark - Instance fields

/// See `getSharedLinks` description.
@property (nonatomic, readonly) NSString * _Nullable path;

#pragma mark - Constructors

///
/// Full constructor for the struct (exposes all instance variables).
///
/// @param path See `getSharedLinks` description.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithPath:(NSString * _Nullable)path;

///
/// Convenience constructor (exposes only non-nullable instance variables with
/// no default value).
///
///
/// @return An initialized instance.
///
- (nonnull instancetype)init;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `GetSharedLinksArg` struct.
///
@interface DBSHARINGGetSharedLinksArgSerializer : NSObject

///
/// Serializes `DBSHARINGGetSharedLinksArg` instances.
///
/// @param instance An instance of the `DBSHARINGGetSharedLinksArg` API object.
///
/// @return A json-compatible dictionary representation of the
/// `DBSHARINGGetSharedLinksArg` API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBSHARINGGetSharedLinksArg * _Nonnull)instance;

///
/// Deserializes `DBSHARINGGetSharedLinksArg` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBSHARINGGetSharedLinksArg` API object.
///
/// @return An instantiation of the `DBSHARINGGetSharedLinksArg` object.
///
+ (DBSHARINGGetSharedLinksArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
