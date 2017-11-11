//
//  FrameworkLoader.m
//  Example
//
//  Created by Alex Chase on 11/11/17.
//  Copyright © 2017 Lasha Efremidze. All rights reserved.
//

#import "FrameworkLoader.h"
#import <objc/runtime.h>
#import <dlfcn.h>
@implementation FrameworkLoader

+ (void)loadFramework {
    @autoreleasepool {
        void* lib_handle = dlopen("./AvatarKit.dylib", RTLD_LOCAL);
        if (!lib_handle) {
            NSLog(@"[%s] main: Unable to open library: %s\n",
                  __FILE__, dlerror());
            exit(EXIT_FAILURE);
        }
        
        // Get the Person class (required with runtime-loaded libraries).
        Class Puppet_class = objc_getClass("AVTPuppetView");
        if (!Puppet_class) {
            NSLog(@"[%s] main: Unable to get Person class", __FILE__);
            exit(EXIT_FAILURE);
        }
        
        
        //Log puppet names
        NSLog(@"[%s] main: [Puppet_class puppetNames] = %@", __FILE__, [Puppet_class puppetNames]);
        
        //Instantiate/Persist/Do whatever
        
        // Close the library.
        if (dlclose(lib_handle) != 0) {
            NSLog(@"[%s] Unable to close library: %s\n",
                  __FILE__, dlerror());
            exit(EXIT_FAILURE);
        }
    }
    return(EXIT_SUCCESS);
    }
}

@end
