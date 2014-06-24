//
//  Creature.h
//  GameOfLife
//
//  Created by Ember Baker on 6/24/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CCSprite.h"

@interface Creature : CCSprite

@property (nonatomic, assign) BOOL isAlive;                 //saves current state of creature
@property (nonatomic, assign) NSInteger livingNeighbors;    //stores the amount of living neighbors

-(id)initCreature;

@end
