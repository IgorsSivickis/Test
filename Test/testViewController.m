//
//  testViewController.m
//  Test
//
//  Created by Igors.Sivickis on 5/6/14.
//  Copyright (c) 2014 accenture. All rights reserved.
//

#import "testViewController.h"
#import "PlayingCardDeck.h"
#import "CardMatchingGame.h"

@interface testViewController ()


@property (nonatomic) int flipCount;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (nonatomic, strong) Deck * deck;
@property (nonatomic, strong) CardMatchingGame *game;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@end

@implementation testViewController



- (CardMatchingGame *)game {
    if (!_game) _game = [[CardMatchingGame alloc] initWithCardCount:[self.cardButtons count]
                                                          usingDeck:[self createDeck]];
    return _game;
}


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
    int cardIndex = [self.cardButtons indexOfObject:sender];
    [self.game chooseCardAtIndex:cardIndex];
    [self updateUI];
}

-(void)updateUI
{
for (UIButton *cardButton in self.cardButtons)
    {
        int cardIndex = [self.cardButtons indexOfObject:cardButton];
        Card *card = [self.game cardAtIndex:cardIndex];
        [cardButton setTitle:[self titleForCard:card] forState:UIControlStateNormal];
        [cardButton setBackgroundImage:[self backgroundForCard:card] forState:UIControlStateNormal];
        cardButton.enabled = !card.isMatched;
    }
    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %d", self.game.score ];

}

-(NSString *)titleForCard:(Card *) card
{
    return card.isChosen ? card.contents : @"";
}

-(UIImage *)backgroundForCard:(Card *) card
{
    return [UIImage imageNamed:card.isChosen ? @"front" : @"back"];
}




@end
