//
//  ProgrammDoc.m
//  snf
//
//  Created by Cédric Waldburger on 3/16/13.
//  Copyright (c) 2013 mediasign. All rights reserved.
//

#import "ProgrammDoc.h"
#import "ProgrammData.h"

@implementation ProgrammDoc
@synthesize data = _data;
@synthesize thumbImage = _thumbImage;
@synthesize fullImage = _fullImage;

- (id)initWithTitle:(NSString*)title rating:(float)rating thumbImage:(UIImage *)thumbImage fullImage:(UIImage *)fullImage {
    if ((self = [super init])) {
        self.data = [[ProgrammData alloc] initWithTitle:title rating:rating];
        self.thumbImage = thumbImage;
        self.fullImage = fullImage;
    }
    return self;
}

@end
