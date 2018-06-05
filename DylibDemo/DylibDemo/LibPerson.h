//
//  LibPerson.h
//  LibPerson
//
//  Created by w22543 on 2018/6/4.
//  Copyright © 2018年 Hytera. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LibPerson : NSObject

@property (nonatomic, copy) NSString *name ;

- (void)watch __attribute__((visibility("default")));

- (void)eat __attribute__((visibility("hidden")));

@end
