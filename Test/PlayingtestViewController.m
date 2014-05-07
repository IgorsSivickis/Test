//
//  PlayingtestViewController.m
//  Test
//
//  Created by Igors.Sivickis on 5/7/14.
//  Copyright (c) 2014 accenture. All rights reserved.
//

#import "PlayingtestViewController.h"
#import "PlayingCardDeck.h"

@interface PlayingtestViewController ()

@end

@implementation PlayingtestViewController

-(Deck *)createDeck
{
    return [[PlayingCardDeck alloc] init];
}

@end
