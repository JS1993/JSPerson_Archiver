//
//  JSPerson.h
//  Demo4_JS_Person
//
//  Created by  江苏 on 16/3/12.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JSPerson : NSObject<NSCoding>
@property(nonatomic,copy)NSString* name;
@property(nonatomic)int age;
@end
