//
//  PlayingCard.h
//  CardGame
//
//  Created by Nishant Jani on 8/20/15.
//  Copyright (c) 2015 Nishant Jani. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (nonatomic, strong) NSString* suit;
@property (nonatomic) NSUInteger rank;
+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;
@end
