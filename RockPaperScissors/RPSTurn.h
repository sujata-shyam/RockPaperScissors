//
//  RPSTurn.h
//  RockPaperScissors
//
//  Created by Sujata on 28/05/20.
//  Copyright © 2020 Sujata. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, Move){
    Rock,
    Paper,
    Scissors,
    Invalid
};

@interface RPSTurn : NSObject

@property (nonatomic) Move move;

-(instancetype)initWithMove:(Move)move;
-(NSString*)description;
-(BOOL)defeats:(RPSTurn *) opponent;

@end

NS_ASSUME_NONNULL_END
