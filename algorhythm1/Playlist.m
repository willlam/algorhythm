//
//  Playlist.m
//  algorhythm1
//
//  Created by William Lam on 2015-12-28.
//  Copyright © 2015 William Lam. All rights reserved.
//

#import "Playlist.h"
#import "MusicLibrary.h"

@implementation Playlist

- (instancetype)initWithIndex:(NSUInteger)index {
  
  self = [super init];
  if (self) {
    MusicLibrary *musicLibrary = [[MusicLibrary alloc] init];
    NSArray *library = musicLibrary.library;
    
    NSDictionary *playlistDictionary = library[index];
    
    _playlistTitle = [playlistDictionary objectForKey:kTitle];
    _playlistDescription = [playlistDictionary objectForKey:kDescription];
    
    // retrieve values of dictionary and title for our playlist dictionaries in the muisc library array and assignted those values to the relevant properties in our playlist data model (kTitle etc)
    NSString *iconName = [playlistDictionary objectForKey:kIcon];
    _playlistIcon = [UIImage imageNamed: iconName];
    NSString *largeIconName = [playlistDictionary objectForKey:kLargeIcon];
    _playlistIconLarge = [UIImage imageNamed:largeIconName];
    
    _playlistArtists = [NSArray arrayWithArray:[playlistDictionary objectForKey:kArtists]];
    
    NSDictionary *colorDictionary = [playlistDictionary objectForKey:kBackgroundColor];
    _backgroundColor = [self rgbColorFromDictionary:colorDictionary];
    
    
    
  }
  
  return self;
}

- (UIColor *)rgbColorFromDictionary:(NSDictionary *)colorDictionary {
  CGFloat red = [[colorDictionary objectForKey:@"red" ] doubleValue];//what we're getting back is a NSNumber object, CGFloat is a primitive type of float, so we need to convert this from a NSNumber to a CGFloat using a second method called a double value.
  
  CGFloat green = [[colorDictionary objectForKey:@"green" ] doubleValue];
  CGFloat blue = [[colorDictionary objectForKey:@"blue" ] doubleValue];
  CGFloat alpha = [[colorDictionary objectForKey:@"alpha" ] doubleValue];
  
  return [UIColor colorWithRed: red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
}
@end
