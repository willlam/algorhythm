//
//  PlaylistDetailViewController.h
//  algorhythm1
//
//  Created by William Lam on 2015-12-26.
//  Copyright © 2015 William Lam. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Playlist; // let's the detail view controller know about the playlist class 

@interface PlaylistDetailViewController : UIViewController

@property (strong, nonatomic) Playlist *playlist;
@property (weak, nonatomic) IBOutlet UIImageView *playlistCoverImage;

@property (weak, nonatomic) IBOutlet UILabel *playlistTitle;

@property (weak, nonatomic) IBOutlet UILabel *playlistDescription;

@property (weak, nonatomic) IBOutlet UILabel *playlistArtist0;
@property (weak, nonatomic) IBOutlet UILabel *playlistArtist1;

@property (weak, nonatomic) IBOutlet UILabel *playlistArtist2;

@end
