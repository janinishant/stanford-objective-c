//
//  Card.m
//  CardGame
//
//  Created by Nishant Jani on 8/19/15.
//  Copyright (c) 2015 Nishant Jani. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int) match:(NSArray *)otherCards
{
    int score = 0;
    
    for(Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    
    return score;
}

@end
