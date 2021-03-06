///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGSharingFileAccessError.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBSHARINGSharingFileAccessError

#pragma mark - Constructors

- (instancetype)initWithNoPermission {
  self = [super init];
  if (self) {
    _tag = DBSHARINGSharingFileAccessErrorNoPermission;
  }
  return self;
}

- (instancetype)initWithInvalidFile {
  self = [super init];
  if (self) {
    _tag = DBSHARINGSharingFileAccessErrorInvalidFile;
  }
  return self;
}

- (instancetype)initWithIsFolder {
  self = [super init];
  if (self) {
    _tag = DBSHARINGSharingFileAccessErrorIsFolder;
  }
  return self;
}

- (instancetype)initWithInsidePublicFolder {
  self = [super init];
  if (self) {
    _tag = DBSHARINGSharingFileAccessErrorInsidePublicFolder;
  }
  return self;
}

- (instancetype)initWithInsideOsxPackage {
  self = [super init];
  if (self) {
    _tag = DBSHARINGSharingFileAccessErrorInsideOsxPackage;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBSHARINGSharingFileAccessErrorOther;
  }
  return self;
}

#pragma mark - Instance field accessors

#pragma mark - Tag state methods

- (BOOL)isNoPermission {
  return _tag == DBSHARINGSharingFileAccessErrorNoPermission;
}

- (BOOL)isInvalidFile {
  return _tag == DBSHARINGSharingFileAccessErrorInvalidFile;
}

- (BOOL)isIsFolder {
  return _tag == DBSHARINGSharingFileAccessErrorIsFolder;
}

- (BOOL)isInsidePublicFolder {
  return _tag == DBSHARINGSharingFileAccessErrorInsidePublicFolder;
}

- (BOOL)isInsideOsxPackage {
  return _tag == DBSHARINGSharingFileAccessErrorInsideOsxPackage;
}

- (BOOL)isOther {
  return _tag == DBSHARINGSharingFileAccessErrorOther;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBSHARINGSharingFileAccessErrorNoPermission:
    return @"DBSHARINGSharingFileAccessErrorNoPermission";
  case DBSHARINGSharingFileAccessErrorInvalidFile:
    return @"DBSHARINGSharingFileAccessErrorInvalidFile";
  case DBSHARINGSharingFileAccessErrorIsFolder:
    return @"DBSHARINGSharingFileAccessErrorIsFolder";
  case DBSHARINGSharingFileAccessErrorInsidePublicFolder:
    return @"DBSHARINGSharingFileAccessErrorInsidePublicFolder";
  case DBSHARINGSharingFileAccessErrorInsideOsxPackage:
    return @"DBSHARINGSharingFileAccessErrorInsideOsxPackage";
  case DBSHARINGSharingFileAccessErrorOther:
    return @"DBSHARINGSharingFileAccessErrorOther";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBSHARINGSharingFileAccessErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBSHARINGSharingFileAccessErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBSHARINGSharingFileAccessErrorSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBSHARINGSharingFileAccessErrorSerializer

+ (NSDictionary *)serialize:(DBSHARINGSharingFileAccessError *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isNoPermission]) {
    jsonDict[@".tag"] = @"no_permission";
  } else if ([valueObj isInvalidFile]) {
    jsonDict[@".tag"] = @"invalid_file";
  } else if ([valueObj isIsFolder]) {
    jsonDict[@".tag"] = @"is_folder";
  } else if ([valueObj isInsidePublicFolder]) {
    jsonDict[@".tag"] = @"inside_public_folder";
  } else if ([valueObj isInsideOsxPackage]) {
    jsonDict[@".tag"] = @"inside_osx_package";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else {
    @throw([NSException exceptionWithName:@"InvalidTag"
                                   reason:@"Object not properly initialized. Tag has an unknown value."
                                 userInfo:nil]);
  }

  return jsonDict;
}

+ (DBSHARINGSharingFileAccessError *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"no_permission"]) {
    return [[DBSHARINGSharingFileAccessError alloc] initWithNoPermission];
  } else if ([tag isEqualToString:@"invalid_file"]) {
    return [[DBSHARINGSharingFileAccessError alloc] initWithInvalidFile];
  } else if ([tag isEqualToString:@"is_folder"]) {
    return [[DBSHARINGSharingFileAccessError alloc] initWithIsFolder];
  } else if ([tag isEqualToString:@"inside_public_folder"]) {
    return [[DBSHARINGSharingFileAccessError alloc] initWithInsidePublicFolder];
  } else if ([tag isEqualToString:@"inside_osx_package"]) {
    return [[DBSHARINGSharingFileAccessError alloc] initWithInsideOsxPackage];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBSHARINGSharingFileAccessError alloc] initWithOther];
  }

  @throw([NSException
      exceptionWithName:@"InvalidTag"
                 reason:[NSString stringWithFormat:@"Tag has an invalid value: \"%@\".", valueDict[@".tag"]]
               userInfo:nil]);
}

@end
