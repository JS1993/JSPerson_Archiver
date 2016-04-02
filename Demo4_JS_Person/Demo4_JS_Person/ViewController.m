//
//  ViewController.m
//  Demo4_JS_Person
//
//  Created by  江苏 on 16/3/12.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"
#import "JSPerson.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //归档
    JSPerson* person=[[JSPerson alloc]init];
//    person.name=@"高富帅";
//    person.age=23;
//    NSMutableData* data=[NSMutableData data ];
//    NSKeyedArchiver* arch=[[NSKeyedArchiver alloc]initForWritingWithMutableData:data];
//    [arch encodeObject:person forKey:@"person"];
//    [arch finishEncoding];
    NSString* filePath=[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0] stringByAppendingPathComponent:@"person"];
//    [data writeToFile:filePath atomically:YES];
//    NSLog(@"%lu",(unsigned long)data.length);
    //反归档
    NSData* data=[NSData dataWithContentsOfFile:filePath];
    NSKeyedUnarchiver* unarch=[[NSKeyedUnarchiver alloc]initForReadingWithData:data];
    person=[unarch decodeObjectForKey:@"person"];
    NSLog(@"%@----%d",person.name,person.age);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
