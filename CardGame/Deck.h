//
//  Deck.h
//  CardGame
//
//  Created by Nishant Jani on 8/19/15.
//  Copyright (c) 2015 Nishant Jani. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL) atTop;
- (void)addCard:(Card *)card;

- (Card *)drawRandomCard;

@end
