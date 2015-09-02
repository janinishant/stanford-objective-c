//
//  PlayingCardDeck.m
//  CardGame
//
//  Created by Nishant Jani on 8/20/15.
//  Copyright (c) 2015 Nishant Jani. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

/*
 * NEVER call init without wrapping it around an alloc
 * INIT ALWAYS returns self
 */
- (instancetype)init
{
    //calling parent init
    self = [super init];

    if (self) {
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSUInteger rank = 1; rank <=[PlayingCard maxRank]; rank++) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.suit = suit;
                card.rank = rank;
                [self addCard:card];
            }
        }
    }
    //should always return self.
    return self;
}

@end
