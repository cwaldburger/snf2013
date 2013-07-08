//
//  ProgrammDoc.h
//  snf
//
//  Created by Cédric Waldburger on 3/16/13.
//  Copyright (c) 2013 mediasign. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ProgrammData;

@interface ProgrammDoc : NSObject

@property (strong) ProgrammData *data;
@property (strong) UIImage *thumbImage;
@property (strong) UIImage *fullImage;

- (id)initWithTitle:(NSString*)title rating:(float)rating thumbImage:(UIImage *)thumbImage fullImage:(UIImage *)fullImage;


@end
