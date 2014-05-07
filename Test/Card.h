//
//  Card.h
//  Test
//
//  Created by Igors.Sivickis on 5/6/14.
//  Copyright (c) 2014 accenture. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (nonatomic, strong) NSString *contents;

@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;


- (int)match:(NSArray *)otherCards;

@end
