//
//  main.m
//  DylibDemo
//
//  Created by w22543 on 2018/6/4.
//  Copyright © 2018年 Hytera. All rights reserved.
//

#import <LibPersonFramework/LibPersonFramework.h>
#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
  
    LibPerson *person = [LibPerson new];
    person.name = @"wang";
    
    [person watch];
    [person eat];
}

