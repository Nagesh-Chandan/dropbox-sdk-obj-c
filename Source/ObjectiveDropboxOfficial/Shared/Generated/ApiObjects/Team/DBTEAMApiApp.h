///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSerializableProtocol.h"

@class DBTEAMApiApp;

#pragma mark - API Object

///
/// The `ApiApp` struct.
///
/// Information on linked third party applications
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBTEAMApiApp : NSObject <DBSerializable>

#pragma mark - Instance fields

/// The application unique id
@property (nonatomic, readonly, copy) NSString * _Nonnull appId;

/// The application name
@property (nonatomic, readonly, copy) NSString * _Nonnull appName;

/// The application publisher name
@property (nonatomic, readonly) NSString * _Nullable publisher;

/// The publisher's URL
@property (nonatomic, readonly) NSString * _Nullable publisherUrl;

/// The time this application was linked
@property (nonatomic, readonly) NSDate * _Nullable linked;

/// Whether the linked application uses a dedicated folder
@property (nonatomic, readonly) NSNumber * _Nonnull isAppFolder;

#pragma mark - Constructors

///
/// Full constructor for the struct (exposes all instance variables).
///
/// @param appId The application unique id
/// @param appName The application name
/// @param isAppFolder Whether the linked application uses a dedicated folder
/// @param publisher The application publisher name
/// @param publisherUrl The publisher's URL
/// @param linked The time this application was linked
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithAppId:(NSString * _Nonnull)appId
                              appName:(NSString * _Nonnull)appName
                          isAppFolder:(NSNumber * _Nonnull)isAppFolder
                            publisher:(NSString * _Nullable)publisher
                         publisherUrl:(NSString * _Nullable)publisherUrl
                               linked:(NSDate * _Nullable)linked;

///
/// Convenience constructor (exposes only non-nullable instance variables with
/// no default value).
///
/// @param appId The application unique id
/// @param appName The application name
/// @param isAppFolder Whether the linked application uses a dedicated folder
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithAppId:(NSString * _Nonnull)appId
                              appName:(NSString * _Nonnull)appName
                          isAppFolder:(NSNumber * _Nonnull)isAppFolder;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `ApiApp` struct.
///
@interface DBTEAMApiAppSerializer : NSObject

///
/// Serializes `DBTEAMApiApp` instances.
///
/// @param instance An instance of the `DBTEAMApiApp` API object.
///
/// @return A json-compatible dictionary representation of the `DBTEAMApiApp`
/// API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBTEAMApiApp * _Nonnull)instance;

///
/// Deserializes `DBTEAMApiApp` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBTEAMApiApp` API object.
///
/// @return An instantiation of the `DBTEAMApiApp` object.
///
+ (DBTEAMApiApp * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
