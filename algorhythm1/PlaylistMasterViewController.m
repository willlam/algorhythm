//
//  ViewController.m
//  algorhythm1
//
//  Created by William Lam on 2015-12-26.
//  Copyright © 2015 William Lam. All rights reserved.
//

#import "PlaylistMasterViewController.h"
#import "PlaylistDetailViewController.h"
#import "Playlist.h"

@interface PlaylistMasterViewController ()

@end

@implementation PlaylistMasterViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  
  
  for (NSUInteger index = 0; index <self.playlistImageViews.count; index++) {
    
    Playlist *playlist = [[Playlist alloc] initWithIndex:index];
    
    UIImageView *playlistImageView = self.playlistImageViews[index];
    
    playlistImageView.image = playlist.playlistIcon;
    playlistImageView.backgroundColor = playlist.backgroundColor;
    
  }
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  if ([segue.identifier isEqual:@"showPlaylistDetail"]) {
    
    UIImageView *playlistImageview = (UIImageView *)[sender view];
    
    if ([self.playlistImageViews containsObject: playlistImageview]) {
      
      NSUInteger index = [self.playlistImageViews indexOfObject:playlistImageview];
      
      PlaylistDetailViewController *playlistDetailController = (PlaylistDetailViewController *)segue.destinationViewController;
      
      playlistDetailController.playlist = [[Playlist alloc] initWithIndex:0];
    }
    

  }
}

- (IBAction)showPlaylistDetail:(id)sender {
  [self performSegueWithIdentifier:@"showPlaylistDetail" sender:sender];
}

@end
