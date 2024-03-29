//
//  ViewController.m
//  ZombieConga
//
//  Created by Ryan Kojan on 5/16/14.
//  Copyright (c) 2014 Ryan Kojan. All rights reserved.
//

#import "ViewController.h"
#import "MyScene.h"
#import "MainMenuScene.h"

@implementation ViewController

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];

    // Configure the view.
    SKView * skView = (SKView *)self.view;
    if (!skView.scene)
    {
        skView.showsFPS = NO;
        skView.showsNodeCount = YES;
    }
    
    // Create and configure the scene.
    SKScene * scene = [MainMenuScene sceneWithSize:skView.bounds.size];
    scene.scaleMode = SKSceneScaleModeAspectFill;
    
    
    // Present the scene.
    [skView presentScene:scene];
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

@end
