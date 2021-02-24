//
//  Box.m
//  Lab2
//
//  Created by Uji Saori on 2021-02-24.
//

#import "Box.h"

@interface Box()

@property (assign) float height;
@property (assign) float width;
@property (assign) float length;

@end

@implementation Box 


- (instancetype)initWithHeight:(float) height AndWidth:(float) width AndLength:(float) length
{
    self = [super init];
    if (self) {
        _height = height;
        _width = width;
        _length = length;
    }
    return self;
}

- (float) calculateVolume
{
    return self.height * self.width * self.length;
}

- (int) maxFillBoxesWith:(Box *) parentBox
{
    float childBoxVolume = self.calculateVolume;
    float parentBoxVolume = parentBox.calculateVolume;
    if (childBoxVolume > parentBoxVolume) {
        return 0;
    }
    float maxBoxes = parentBoxVolume / childBoxVolume;
    return (int) maxBoxes;
}


@end
