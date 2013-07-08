//
//  ProgrammData.h
//  snf
//
//  Created by Cédric Waldburger on 3/16/13.
//  Copyright (c) 2013 mediasign. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ProgrammData : NSObject

@property (strong) NSString *title;
@property (assign) float rating;

-(id)initWithTitle:(NSString*)title rating:(float)rating;

@end
