//
//  snfFestbeizenTableViewCell.m
//  snf
//
//  Created by Cédric Waldburger on 7/16/13.
//  Copyright (c) 2013 mediasign. All rights reserved.
//

#import "snfFestbeizenTableViewCell.h"

@implementation snfFestbeizenTableViewCell

@synthesize festbeizenNr = _festbeizenNr;
@synthesize festbeizenTitle = _festbeizenTitle;
@synthesize festbeizenDesc = _festbeizenDesc;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
