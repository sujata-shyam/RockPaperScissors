//
//  RPSController.m
//  RockPaperScissors
//
//  Created by Sujata on 29/05/20.
//  Copyright © 2020 Sujata. All rights reserved.
//

#import "RPSController.h"
#import "RPSTurn.h"

@implementation RPSController

-(void)throwDown:(Move) playersMove {
    
    //Here the RPSTurn class generates the opponent's move
    RPSTurn *playersTurn = [[RPSTurn alloc] initWithMove:playersMove];
    RPSTurn *computersTurn = [[RPSTurn alloc] init];
    
    //The RPSGame class stores the results of a game
    self.game = [[RPSGame alloc] initWithFirstTurn:playersTurn
                                        secondTurn:computersTurn];
}

-(NSString*)resultString:(RPSGame*)game {
    return [game.firstTurn defeats:game.secondTurn] ? @"You Win!" : @"You Lose!";
}

-(NSString*)messageForGame:(RPSGame*)game{
    //Handle the tie
    if(game.firstTurn.move == game.secondTurn.move){
        return @"It's a tie";
    }
    else{
        //Here we build up the results message "Rock crushes scissors. You win!" etc.
        
        NSString *winnerString = [[game winner] description];
        NSString *loserString = [[game loser] description];
        NSString *resultsString = [self resultString: game];
    
        NSString *wholeString =  [NSString stringWithFormat:@"%@ %@ %@ %@ %@", winnerString, @" defeats ", loserString, @".",  resultsString];

        return wholeString ;
    }
}


@end
