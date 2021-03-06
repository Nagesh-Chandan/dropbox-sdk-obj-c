///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBASYNCPollError.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBASYNCPollError

#pragma mark - Constructors

- (instancetype)initWithInvalidAsyncJobId {
  self = [super init];
  if (self) {
    _tag = DBASYNCPollErrorInvalidAsyncJobId;
  }
  return self;
}

- (instancetype)initWithInternalError {
  self = [super init];
  if (self) {
    _tag = DBASYNCPollErrorInternalError;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBASYNCPollErrorOther;
  }
  return self;
}

#pragma mark - Instance field accessors

#pragma mark - Tag state methods

- (BOOL)isInvalidAsyncJobId {
  return _tag == DBASYNCPollErrorInvalidAsyncJobId;
}

- (BOOL)isInternalError {
  return _tag == DBASYNCPollErrorInternalError;
}

- (BOOL)isOther {
  return _tag == DBASYNCPollErrorOther;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBASYNCPollErrorInvalidAsyncJobId:
    return @"DBASYNCPollErrorInvalidAsyncJobId";
  case DBASYNCPollErrorInternalError:
    return @"DBASYNCPollErrorInternalError";
  case DBASYNCPollErrorOther:
    return @"DBASYNCPollErrorOther";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBASYNCPollErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBASYNCPollErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBASYNCPollErrorSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBASYNCPollErrorSerializer

+ (NSDictionary *)serialize:(DBASYNCPollError *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isInvalidAsyncJobId]) {
    jsonDict[@".tag"] = @"invalid_async_job_id";
  } else if ([valueObj isInternalError]) {
    jsonDict[@".tag"] = @"internal_error";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else {
    @throw([NSException exceptionWithName:@"InvalidTag"
                                   reason:@"Object not properly initialized. Tag has an unknown value."
                                 userInfo:nil]);
  }

  return jsonDict;
}

+ (DBASYNCPollError *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"invalid_async_job_id"]) {
    return [[DBASYNCPollError alloc] initWithInvalidAsyncJobId];
  } else if ([tag isEqualToString:@"internal_error"]) {
    return [[DBASYNCPollError alloc] initWithInternalError];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBASYNCPollError alloc] initWithOther];
  }

  @throw([NSException
      exceptionWithName:@"InvalidTag"
                 reason:[NSString stringWithFormat:@"Tag has an invalid value: \"%@\".", valueDict[@".tag"]]
               userInfo:nil]);
}

@end
