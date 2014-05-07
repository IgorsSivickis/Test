//
//  PlayingCard2.h
//  Test
//
//  Created by Igors.Sivickis on 5/7/14.
//  Copyright (c) 2014 accenture. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (nonatomic, strong) NSString * suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end