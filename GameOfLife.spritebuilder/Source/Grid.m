//
//  Grid.m
//  GameOfLife
//
//  Created by Ember Baker on 6/24/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Grid.h"
#import "Creature.h"

static const int GRID_ROWS = 8;
static const int GRID_COLUMNS = 10;

@implementation Grid {
    
    NSMutableArray *_gridArray;
    
    float _cellWidth;
    float _cellHeight;
}

-(void)onEnter {
    
    [super onEnter];
    [self setUpGrid];
    
    self.userInteractionEnabled = YES;                          //Accepts touch on the grid
    
}

-(void)setUpGrid {
    
    _cellWidth  = self.contentSize.width / GRID_COLUMNS;        //divide the grids size by the number of columns and rows
    _cellHeight = self.contentSize.height / GRID_ROWS;          //to figure out the the right size for the cells
    
    float x = 0;
    float y = 0;
    
    _gridArray = [NSMutableArray array];                        //init the array as a black mustable array
    
    for(int i =0; i <GRID_ROWS; i++) {                          //this is how to set up a 2-d array in Obj-c
        
        _gridArray[i] = [NSMutableArray array];
        x = 0;
        
        for (int j=0; j<GRID_COLUMNS; j++) {
            
            Creature *creature = [[Creature alloc] initCreature];
            creature.anchorPoint = ccp(0,0);
            creature.position = ccp(x,y);
            [self addChild:creature];
            
            _gridArray[i][j] = creature;
            
            creature.isAlive = YES;
            
            x += _cellWidth;
        }
        
        y += _cellHeight;
    }
}

@end
