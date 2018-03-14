//
//  AppDelegate.h
//  SJ_FlickrTest
//
//  Created by Surjit Joshi on 12/03/18.
//  Copyright © 2018 Surjit Joshi. All rights reserved.
//

#import <UIKit/UIKit.h>

// data storage
#import "AllPhotos.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic, retain) AllPhotos *firstRowData;
@property (nonatomic, retain) AllPhotos *secondRowData;
@property (nonatomic, retain) AllPhotos *publicFeedData;

@end

