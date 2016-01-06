//
//  MusicLibrary.h
//  algorhythm1
//
//  Created by William Lam on 2015-12-27.
//  Copyright © 2015 William Lam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MusicLibrary : NSObject

extern NSString *const kTitle;
extern NSString *const kDescription;
extern NSString *const kIcon;
extern NSString *const kLargeIcon;
extern NSString *const kBackgroundColor;
extern NSString *const kArtists;

@property (strong, nonatomic) NSArray *library;


@end
