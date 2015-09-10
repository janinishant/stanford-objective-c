//
//  CardMatchingGame.h
//  CardGame
//
//  Created by Nishant Jani on 9/8/15.
//  Copyright (c) 2015 Nishant Jani. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchingGame : NSObject
//This is the designated initializer
- (instancetype) initWithCardCount:(NSInteger) count usingDeck:(Deck *) deck;
- (void) chooseCardAtIndex: (NSInteger) index;
- (Card *) cardAtIndex: (NSInteger) index;

@property (nonatomic, readonly) NSInteger score;

@end
