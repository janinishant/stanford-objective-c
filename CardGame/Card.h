//
//  Card.h
//  CardGame
//
//  Created by Nishant Jani on 8/19/15.
//  Copyright (c) 2015 Nishant Jani. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

@end
