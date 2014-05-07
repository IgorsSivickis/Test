//
//  Card.m
//  Test
//
//  Created by Igors.Sivickis on 5/6/14.
//  Copyright (c) 2014 accenture. All rights reserved.
//

#import "Card.h"

@interface Card()

@end

@implementation Card

- (int)match:(NSArray *)otherCards {
    int score = 0;
    
    for (Card *card in otherCards) { // fast enumeration
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    
    return score;
}
@end
