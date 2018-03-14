//
//  CustomCollectionCell.h
//  SJ_FlickrTest
//
//  Created by Surjit Joshi on 13/03/18.
//  Copyright © 2018 Surjit Joshi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCollectionCell : UICollectionViewCell

@property (nonatomic, weak, readonly) UIImageView               *cellThumbnail;
@property (nonatomic, weak, readonly) UIActivityIndicatorView   *activityIndicator;
@property (nonatomic, weak, readonly) UILabel                   *imageTitleLabel;

@end
