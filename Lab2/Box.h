//
//  Box.h
//  Lab2
//
//  Created by Uji Saori on 2021-02-24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Box : NSObject

- (instancetype)initWithHeight:(float) height AndWidth:(float) width AndLength:(float) length;
- (float) calculateVolume;
- (int) maxFillBoxesWith:(Box *) parentBox;

@end

NS_ASSUME_NONNULL_END
