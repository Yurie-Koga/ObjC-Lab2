//
//  main.m
//  Lab2
//
//  Created by Uji Saori on 2021-02-24.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        float height = 10.0;
        float width = 20.0;
        float length = 30.0;
        Box *boxChild = [[Box alloc] initWithHeight:height AndWidth:width AndLength:length];
        
        float volume = height * width * length;
        if (boxChild.calculateVolume == volume) {
            NSLog(@"\n===== same result =====");
        } else {
            NSLog(@"\n===== different result =====");
        }
        
        Box *boxParent = [[Box alloc] initWithHeight:100.0 AndWidth:20.0 AndLength:30.0];
        NSLog(@"\n===== max boxes: %d =====", [boxChild maxFillBoxesWith: boxParent]);
    }
    return 0;
}
