//
//  MainMenuScene.m
//  ZombieConga
//
//  Created by Ryan Kojan on 5/28/14.
//  Copyright (c) 2014 Ryan Kojan. All rights reserved.
//

#import "MainMenuScene.h"
#import "MyScene.h"

@implementation MainMenuScene

- (instancetype)initWithSize:(CGSize)size{
    
    if (self = [super initWithSize:size]) {
        SKSpriteNode * bg = [SKSpriteNode spriteNodeWithImageNamed:@"MainMenu"];
        bg.anchorPoint = CGPointMake(0.5, 0.5);
        bg.position = CGPointMake(self.size.width / 2, self.size.height / 2);
        [self addChild:bg];
    }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    SKScene * myScene = [[MyScene alloc] initWithSize:self.size];
    SKTransition *openDoor = [SKTransition doorsOpenHorizontalWithDuration:0.5];
    [self.view presentScene:myScene transition:openDoor];
}

@end
