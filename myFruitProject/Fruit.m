//
//  Fruit.m
//  myFruitProject
//
//  Created by rentit on 2015. 11. 09..
//  Copyright © 2015. rentit. All rights reserved.
//

#import "Fruit.h"

@implementation Fruit

- (id) init{
    self = [super init];
    if (self){
        self.color = rand() % 2 == 0 ? @"green" : @"yellow";
    }
    return self;
}

-(void) setColor:(NSString *)color{
    _color = color;
    
    if ([color isEqual:@"red"] && self.onRipe != nil) {
        self.onRipe(self);
    }else if ([color isEqual:@"brown"] && self.onRot){
        self.onRot(self);
    }
}

-(void)setupEventsOnRipe: (FruitDidRipeBlock)onRipe
                   onRot: (FruitDidRotBlock)onRot{
    self.onRipe = onRipe;
    self.onRot = onRot;
}

-(NSString *) description{
    return [NSString stringWithFormat:@"This is a fruit with color: %@", self.color];
}

@end
