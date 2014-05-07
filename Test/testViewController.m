//
//  testViewController.m
//  Test
//
//  Created by Igors.Sivickis on 5/6/14.
//  Copyright (c) 2014 accenture. All rights reserved.
//

#import "testViewController.h"
#import "PlayingCardDeck.h"

@interface testViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (nonatomic, strong) Deck * deck;
@end

@implementation testViewController

-(Deck *)deck
{
    if (!_deck) _deck = [self createDeck];
    return _deck;
}

-(Deck *)createDeck
{
    return [[PlayingCardDeck alloc] init];
}

- (IBAction)touchcardButton:(UIButton *)sender
{
    if([sender.currentTitle length]){
        
        [sender setBackgroundImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
            self.flipCount++;
        
    }else
    {
        Card *card = [self.deck drawRandomCard];
        if (card)
        {
            [sender setBackgroundImage:[UIImage imageNamed:@"front"] forState:UIControlStateNormal];
            [sender setTitle:card.contents forState:UIControlStateNormal];
                self.flipCount++;
        }
    }

}

-(void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}


@end
