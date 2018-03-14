//
//  OnePhoto.h
//  SJ_FlickrTest
//
//  Created by Surjit Joshi on 14/03/18.
//  Copyright © 2018 Surjit Joshi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OnePhoto : NSObject

@property (nonatomic, weak) NSString *photoId;
@property (nonatomic, weak) NSString *title;
@property (nonatomic, weak) NSString *url_o;
@property (nonatomic, weak) NSString *url_p;

@end
