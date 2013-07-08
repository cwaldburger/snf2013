//
//  ProgrammData.m
//  snf
//
//  Created by Cédric Waldburger on 3/16/13.
//  Copyright (c) 2013 mediasign. All rights reserved.
//

#import "ProgrammData.h"

@implementation ProgrammData

@synthesize title = _title;
@synthesize rating = _rating;

- (id)initWithTitle:(NSString *)title rating:(float)rating {
    if ((self = [super init])) {
        self.title = title;
        self.rating = rating;
    }
    return self;
}

@end
