//
//  main.m
//  DylibDemo-Runtime
//
//  Created by w22543 on 2018/6/4.
//  Copyright © 2018年 Hytera. All rights reserved.
//

#import "LibPerson.h"
#import <objc/runtime.h>
#import <dlfcn.h>
#import <UIKit/UIKit.h>
#import "AppDelegate.h"

void loadWhenRunTime(void);

int main(int argc, char * argv[]) {
    @autoreleasepool {
        loadWhenRunTime();
    }
}


void loadWhenRunTime(){

    // Open the library.
    NSString *bundlePath = [[NSBundle mainBundle]pathForResource:@"LibPersonFramework" ofType:nil];
    void* lib_handle = dlopen([bundlePath UTF8String], RTLD_LOCAL);
    
    if (!lib_handle) {
        
        NSLog(@"[%s] main: Unable to open library: %s\n",
              
              __FILE__, dlerror());
        exit(EXIT_FAILURE);
    }
    
    Class class_person = objc_getClass("LibPerson");
    
    LibPerson *person = [class_person new];
    person.name = @"wang";
    [person watch];
    [person eat];

    // Close the library.
    if (dlclose(lib_handle) != 0) {
        
        NSLog(@"[%s] Unable to close library: %s\n",
              __FILE__, dlerror());
        exit(EXIT_FAILURE);
        
    }
}

