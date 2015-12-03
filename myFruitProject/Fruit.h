//
//  Fruit.h
//  myFruitProject
//
//  Created by rentit on 2015. 11. 09..
//  Copyright © 2015. rentit. All rights reserved.
//

#import <Foundation/Foundation.h>


@class Fruit;
typedef void(^FruitDidRipeBlock)(Fruit* fruit);
typedef void(^FruitDidRotBlock)(Fruit* fruit);

@interface Fruit : NSObject

@property (nonatomic, strong) NSString *color;
@property (nonatomic, assign) BOOL rotten;

@property (nonatomic, copy) FruitDidRipeBlock onRipe;
@property (nonatomic, copy) FruitDidRotBlock onRot;

-(void)setupEventsOnRipe: (FruitDidRipeBlock)onRipe
                   onRot: (FruitDidRotBlock)onRot;

@end
