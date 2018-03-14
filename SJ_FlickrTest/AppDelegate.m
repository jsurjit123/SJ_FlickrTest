//
//  AppDelegate.m
//  SJ_FlickrTest
//
//  Created by Surjit Joshi on 12/03/18.
//  Copyright © 2018 Surjit Joshi. All rights reserved.
//

#import "AppDelegate.h"
#import "Reachability.h"

@implementation AppDelegate

@synthesize firstRowData;
@synthesize secondRowData;
@synthesize publicFeedData;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    /*
     
     SJ_FlickrTest
     Key:
     74783acb589ec78dd57662ccb255d3ea
     
     Secret:
     e8d387963e7e799c
     
     */
    
//    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
//    [manager GET:@"https://api.flickr.com/services/rest"
//      parameters:@{@"method":@"flickr.people.getPublicPhotos",
//                   @"api_key":flickrApiKey,
//                   @"user_id":flickrUserId,
//                   @"format":@"json",
//                   @"nojsoncallback":@"1"}
//         success:^(AFHTTPRequestOperation *operation, id responseObject)
//     {
//         NSLog(@"JSON: %@", responseObject);
//         CGFloat total = [[responseObject objectForKey:@"photos.total"] floatValue];
//         flickrPhotos = [responseObject objectForKey:@"photos.photo"];
//         
//         NSLog(@"total : %f", total);
//         [self.animationCollectionView reloadData];
//     } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
//         NSLog(@"Error: %@", error.localizedDescription);
//     }];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    // Saves changes in the application's managed object context before the application terminates.

}



/*
 
https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=3c03078e77027f6dff150def60771df4
                                                                 &text=bmw
                                                                 &sort=date-posted-asc
                                                                 &privacy_filter=1
                                                                 &extras=url_s
                                                                 &per_page=5
                                                                 &page=1
                                                                 &format=json
                                                                 &nojsoncallback=1
                                                                 &auth_token=72157666705214808-1df855d8f5ba720d
                                                                 &api_sig=47dc8009bfac1a384625c744c884edac
 
 
 {"photos":{"page":1,"pages":67192,"perpage":5,"total":"335959","photo":[
 
 {
 "id":"14952437135",
 "owner":"125684736@N04",
 "secret":"7d0fc79cbb",
 "server":"3891",
 "farm":4,
 "title":"BMW",
 "ispublic":1,
 "isfriend":0,
 "isfamily":0,
 "url_o":"https:\/\/farm4.staticflickr.com\/3891\/14952437135_4308b7a256_o.jpg",
 "height_o":"1061",
 "width_o":"1600"
 
 },
 
 {"id":"1358259878","owner":"12833430@N05","secret":"1e899d043c","server":"1387","farm":2,"title":"BMW.jpg","ispublic":1,"isfriend":0,"isfamily":0,"url_o":"https:\/\/farm2.staticflickr.com\/1387\/1358259878_5c96c43643_o.jpg","height_o":"304","width_o":"461"},
 {"id":"722528018","owner":"7147366@N04","secret":"82272f07a5","server":"1284","farm":2,"title":"Even the cops have BMWs!","ispublic":1,"isfriend":0,"isfamily":0,"url_o":"https:\/\/farm2.staticflickr.com\/1284\/722528018_6c8e7ef9f7_o.jpg","height_o":"395","width_o":"567"},
 {"id":"1302343959","owner":"29909302@N00","secret":"37edc6ae19","server":"1017","farm":2,"title":"Wheel","ispublic":1,"isfriend":0,"isfamily":0,"url_o":"https:\/\/farm2.staticflickr.com\/1017\/1302343959_49de96f7e1_o.jpg","height_o":"480","width_o":"640"},
 {"id":"1590586809","owner":"12369810@N00","secret":"c91c5314a2","server":"2397","farm":3,"title":"Dubai Airport near a BMW","ispublic":1,"isfriend":0,"isfamily":0,"url_o":"https:\/\/farm3.staticflickr.com\/2397\/1590586809_ff569e53fb_o.jpg","height_o":"239","width_o":"348"}]},"stat":"ok"}
 
 
 */





@end
