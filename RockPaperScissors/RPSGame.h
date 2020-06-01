//
//  RPSGame.h
//  RockPaperScissors
//
//  Created by Sujata on 28/05/20.
//  Copyright © 2020 Sujata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSTurn.h"

NS_ASSUME_NONNULL_BEGIN

@interface RPSGame : NSObject

@property (nonatomic) RPSTurn *firstTurn;
@property (nonatomic) RPSTurn *secondTurn;

-(instancetype) initWithFirstTurn:(RPSTurn*) playerTurn secondTurn:(RPSTurn*) computerTurn ;

-(RPSTurn*)winner ;
-(RPSTurn*)loser ;

@end

NS_ASSUME_NONNULL_END
