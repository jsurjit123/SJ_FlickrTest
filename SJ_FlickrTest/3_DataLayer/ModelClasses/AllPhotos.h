//
//  AllPhotos.h
//  SJ_FlickrTest
//
//  Created by Surjit Joshi on 14/03/18.
//  Copyright © 2018 Surjit Joshi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OnePhoto.h"

@interface AllPhotos : NSObject

@property (nonatomic, weak) NSString        *currentPage;
@property (nonatomic, weak) NSString        *pages;
@property (nonatomic, weak) NSString        *perpage;
@property (nonatomic, weak) NSMutableArray  *allPhotosArray;

@end
