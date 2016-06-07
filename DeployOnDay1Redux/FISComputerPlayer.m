//
//  FISComputerPlayer.m
//  DeployOnDay1Redux
//
//  Created by Timothy Clem on 9/22/15.
//  Copyright © 2015 The Flatiron School. All rights reserved.
//

#import "FISComputerPlayer.h"

@implementation FISComputerPlayer

+(BOOL)isEnabled
{
    return YES;
}

-(FISTicTacToePosition)nextPlay
    {
    NSUInteger randomColumn = arc4random_uniform(3);
    NSUInteger randomRow = arc4random_uniform(3);

//            }else if (([board[1][0] isEqualToString: board[1][1]])&& !([board[1][0] isEqualToString: @""])) {
//                    return FISTicTacToePositionMake(1, 2);
//            }else if (([board[2][0] isEqualToString: board[2][1]]) && !([board[2][0] isEqualToString: @""])) {
//                return FISTicTacToePositionMake(2, 2);
//            }else if (([board[0][1] isEqualToString: board[0][2]]  && !([board[0][1] isEqualToString: @""])) {
//                return FISTicTacToePositionMake(0, 0);
//            }else if (([board[1][1] isEqualToString: board[1][2]])  && !([board[1][1] isEqualToString: @""])) {
//                return FISTicTacToePositionMake(1, 0);
//            }else if (([board[2][1] isEqualToString: board[2][2]]) && !([board[2][1] isEqualToString: @""])) {
//                return FISTicTacToePositionMake(2, 0);
//            }else{
        
            while (![self.game canPlayAtColumn:randomColumn row:randomRow]){
                     randomColumn = arc4random_uniform(3);
                        randomRow = arc4random_uniform(3);
               }
                return FISTicTacToePositionMake(randomColumn, randomRow);
    }
        
        
        
//        NSArray *board = self.game.board;
//        
//        if () {
//            return FISTicTacToePositionMake(2, 0);
//        }else
@end
