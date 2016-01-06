//
//  PlaylistDetailViewController.m
//  algorhythm1
//
//  Created by William Lam on 2015-12-26.
//  Copyright © 2015 William Lam. All rights reserved.
//

#import "PlaylistDetailViewController.h"
#import "Playlist.h"

@interface PlaylistDetailViewController ()

@end

@implementation PlaylistDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 // so it's not nil
  if (self.playlist) {
    self.playlistCoverImage.image = self.playlist.playlistIconLarge;
    self.playlistCoverImage.backgroundColor = self.playlist.backgroundColor;
    self.playlistTitle.text = self.playlist.playlistTitle;
    self.playlistDescription.text = self.playlist.playlistDescription;
    self.playlistArtist0.text = self.playlist.playlistArtists[0];
    self.playlistArtist1.text = self.playlist.playlistArtists[1];
    self.playlistArtist2.text = self.playlist.playlistArtists[2];
  }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
