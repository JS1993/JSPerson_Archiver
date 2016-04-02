//
//  JSPerson.m
//  Demo4_JS_Person
//
//  Created by  江苏 on 16/3/12.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "JSPerson.h"

@implementation JSPerson
- (void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeInt:self.age forKey:@"age"];
}
- (nullable instancetype)initWithCoder:(NSCoder *)aDecoder{
    self=[super init];
    if (self) {
        self.name=[aDecoder decodeObjectForKey:@"name"];
        self.age=[aDecoder decodeIntForKey:@"age"];
    }
    return self;
}
@end
