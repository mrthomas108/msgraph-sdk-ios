// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOutlookItem()
{
    NSDate* _createdDateTime;
    NSDate* _lastModifiedDateTime;
    NSString* _changeKey;
    NSArray* _categories;
}
@end

@implementation MSGraphOutlookItem

- (NSDate*) createdDateTime
{
    if(!_createdDateTime){
        _createdDateTime = [NSDate ms_dateFromString: self.dictionary[@"createdDateTime"]];
    }
    return _createdDateTime;
}
- (void) setCreatedDateTime: (NSDate*) val
{
    _createdDateTime = val;
    self.dictionary[@"createdDateTime"] = val;
}
- (NSDate*) lastModifiedDateTime
{
    if(!_lastModifiedDateTime){
        _lastModifiedDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastModifiedDateTime"]];
    }
    return _lastModifiedDateTime;
}
- (void) setLastModifiedDateTime: (NSDate*) val
{
    _lastModifiedDateTime = val;
    self.dictionary[@"lastModifiedDateTime"] = val;
}
- (NSString*) changeKey
{
    return self.dictionary[@"changeKey"];
}
- (void) setChangeKey: (NSString*) val
{
    self.dictionary[@"changeKey"] = val;
}
- (NSArray*) categories
{
    return self.dictionary[@"categories"];
}
- (void) setCategories: (NSArray*) val
{
    self.dictionary[@"categories"] = val;
}

@end
