//
//  RPSController.h
//  RockPaperScissors
//
//  Created by Sujata on 29/05/20.
//  Copyright © 2020 Sujata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSGame.h"

NS_ASSUME_NONNULL_BEGIN

@interface RPSController : NSObject

@property (nonatomic) RPSGame* game;
-(NSString*)resultString:(RPSGame*)game;
-(void)throwDown:(Move) playersMove;
-(NSString*)messageForGame:(RPSGame*)game;

@end

NS_ASSUME_NONNULL_END
