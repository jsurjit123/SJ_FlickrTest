//
//  CustomCollectionCell.m
//  SJ_FlickrTest
//
//  Created by Surjit Joshi on 13/03/18.
//  Copyright © 2018 Surjit Joshi. All rights reserved.
//

#import "CustomCollectionCell.h"

@interface CustomCollectionCell()

@property (nonatomic, weak) IBOutlet UIImageView               *cellThumbnail;
@property (nonatomic, weak) IBOutlet UIActivityIndicatorView   *activityIndicator;
@property (nonatomic, weak) IBOutlet UILabel                   *imageTitleLabel;

@end


@implementation CustomCollectionCell

- (void)prepareForReuse
{
    [self.cellThumbnail setImage:nil];
    [self.imageTitleLabel setText:@""];
}


@end
