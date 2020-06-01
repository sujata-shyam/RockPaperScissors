//
//  main.m
//  RockPaperScissors
//
//  Created by Sujata on 28/05/20.
//  Copyright © 2020 Sujata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        RPSController *gameController = [[RPSController alloc] init];
        [gameController throwDown: Rock];
        NSString *resultMessage = [gameController messageForGame:gameController.game];
        
        NSLog(@"%@", resultMessage);
    }
    return 0;
}
