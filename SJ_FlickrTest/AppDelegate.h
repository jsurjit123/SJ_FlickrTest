//
//  AppDelegate.h
//  SJ_FlickrTest
//
//  Created by Surjit Joshi on 12/03/18.
//  Copyright © 2018 Surjit Joshi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

