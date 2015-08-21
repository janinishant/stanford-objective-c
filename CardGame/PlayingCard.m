//
//  PlayingCard.m
//  CardGame
//
//  Created by Nishant Jani on 8/20/15.
//  Copyright (c) 2015 Nishant Jani. All rights reserved.
//

#import "PlayingCard.h"

/*
 * This demonstrates 
 */
@implementation PlayingCard

//If you define both setter and getter we need to declare this
@synthesize suit = _suit;

//This method has + instead of - becuase its a CLASS METHOD.
+ (NSArray *)validSuits
{
    return @[@"♥️",@"♣️",@"♠️",@"♦️"];
}

+ (NSArray *)rankStrings
{
    return @[@"?", @"A", @"2",  @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

+ (NSUInteger)maxRank
{
    return [[self rankStrings] count] -1;
}

/**
 * Getter for rank. It returns the contents in a decent format like 10 heart or Q Spade
 * Notice when rank is 0, it returns a ?
 */
- (NSString *) contents
{
    //The `@` sign is to convert strings to string objects
    //In Objective C, strings are string objects and not char *
    //So when you declare a string @"" compiler will create a string object
    //More over, NSArray will only take string objects since its an array of string objects.
    NSArray *rankString = [PlayingCard rankStrings];
    return [rankString[self.rank] stringByAppendingString:self.suit];
}

/*
 * Setter for rank.
 * Ensures no one sets the rank as 15 or something odd.
 */
- (void) setRank:(NSUInteger)rank
{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

/*
 * Setter for suit.
 * Ensure you only set the suit to one of the defined ones only.
 */
- (void)setSuit:(NSString *) suit
{
    if ([ [PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

/*
 * Getter for suit.
 * Similar to the rank, if suit is also 0, which is it when it starts, we want to return a ?
 */
- (NSString *) suit
{
    return _suit? _suit : @"?";
}

@end
