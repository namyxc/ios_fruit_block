//
//  Tree.m
//  myFruitProject
//
//  Created by rentit on 2015. 11. 09..
//  Copyright © 2015. rentit. All rights reserved.
//

#import "Tree.h"
#import "Fruit.h"

@implementation Tree

-(id) init {
    self = [super init];
    if (self) {
        Fruit* myFirstFruit = [Fruit new];
        Fruit* mySecondFruit = [Fruit new];
        
        NSMutableArray* fruits = [[NSMutableArray alloc] initWithArray:@[myFirstFruit, mySecondFruit]];
        
        for (int i = 0; i < 20; i++) {
            Fruit* f = [Fruit new];
            
            [f setupEventsOnRipe:^(Fruit *fruit) {
                NSLog(@"RIPE: %@",fruit);
            } onRot:^(Fruit *fruit) {
                NSLog(@"ROT: %@",fruit);
            }];
            [fruits addObject: f];
            
            if (rand() % 2 == 0) {
                f.color = @"red";
                if (rand() % 2 == 0) {
                    f.color = @"brown";
                }
            }
        }
        NSLog(@"fruits: %@", fruits);
    }
    return self;
}

-(void)fruitDidRipe:(Fruit *)fruit{
    NSLog(@"the following fruit did ripe: %@", fruit);
}

-(void) fruitDidRot:(Fruit *)fruit{
    NSLog(@"the following fruit did rot: %@", fruit);
}

@end
