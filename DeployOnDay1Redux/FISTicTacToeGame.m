//
//  FISTicTacToeGame.m
//  DeployOnDay1Redux
//
//  Created by Timothy Clem on 9/22/15.
//  Copyright © 2015 The Flatiron School. All rights reserved.
//

#import "FISTicTacToeGame.h"

@interface FISTicTacToeGame ()


@property (nonatomic, strong) NSMutableArray *rowOne;

@property (nonatomic, strong) NSMutableArray *rowTwo;

@property (nonatomic, strong) NSMutableArray *rowThree;


@end


@implementation FISTicTacToeGame

-(instancetype)init
{
    self = [super init];
    if(self) {
        [self resetBoard];
        
        
        _rowOne = [NSMutableArray arrayWithObjects:@"",@"",@"", nil];
        _rowTwo= [NSMutableArray arrayWithObjects:@"",@"",@"", nil];
        _rowThree = [NSMutableArray arrayWithObjects:@"",@"",@"", nil];
        _board = [NSMutableArray arrayWithObjects:_rowOne,_rowTwo,_rowThree, nil];
       
        
        
        
        
        
      
        // Do initialization of your game here, inside this if statement.
        // Leave the rest of this method alone :)
        //column down
        //row across

    }

    return self;
}

-(void)resetBoard
{
    _rowOne = [NSMutableArray arrayWithObjects:@"",@"",@"", nil];
    _rowTwo= [NSMutableArray arrayWithObjects:@"",@"",@"", nil];
    _rowThree = [NSMutableArray arrayWithObjects:@"",@"",@"", nil];
    _board = [NSMutableArray arrayWithObjects:_rowOne,_rowTwo,_rowThree, nil];
    
}

-(NSString *)playerAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    NSLog(@"*********************** playerAtColumn CALLED");
    NSString *playerAtColumn = self.board[row][column];
    NSString *postionResult;
    NSString *playerOne = @"X";
    NSString *playerTwo = @"O";
    NSString *empty = @"";
    if ([playerAtColumn isEqualToString: playerOne]){
            postionResult = playerOne;
            NSLog (@"Player One is at this position");
        }else if ([playerAtColumn isEqualToString: playerTwo]){
         postionResult = playerTwo;
            NSLog (@"Player two is at this position");
    }else{
            postionResult = empty;
            NSLog (@"This Postion is Free");
        }
    return postionResult;
}

-(BOOL)canPlayAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    
    NSLog(@"*********************** canPlayAtColumn   CALLED");
    BOOL canPlayAtColumn;
    NSString *playerAtColumn = self.board[row][column];
    if ([playerAtColumn isEqualToString: @""]){
            canPlayAtColumn = YES;
        }else{
            canPlayAtColumn = NO;
        }
    return canPlayAtColumn;
}

-(void)playXAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    NSLog(@"*********************** playXAtColumn CALLED");
    self.board[row][column] = @"X";

}

-(void)playOAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    NSLog(@"*********************** playOAtColumn CALLED");
    self.board[row][column] = @"O";
}

-(NSString *)winningPlayer
{
//    NSLog(@"*********************** winningPlayer CALLED");
//
//    
//    NSArray*verticleArrayOne = @[_rowOne[0],_rowTwo[0],_rowThree[0]];
//    NSArray*verticleArrayTwo = @[_rowOne[1],_rowTwo[1],_rowThree[1]];
//    NSArray*verticleArrayThree = @[_rowOne[2],_rowTwo[2],_rowThree[2]];
//    NSArray*diagonalArrayOne = @[_rowOne[0], _rowTwo[1], _rowThree[2]];
//    NSArray*diagonalArraytwo = @[_rowOne[2], _rowTwo[1], _rowThree[0]];
//   
//    NSSet *setOne = [NSSet setWithArray:_rowOne];
//    NSSet *setTwo = [NSSet setWithArray:_rowTwo];
//    NSSet *setThree = [NSSet setWithArray:_rowThree];
//    NSSet *verticleSetOne = [NSSet setWithArray:verticleArrayOne];
//    NSSet *verticleSetTwo = [NSSet setWithArray:verticleArrayTwo];
//    NSSet *verticleSetThree = [NSSet setWithArray:verticleArrayThree];
//    NSSet *diagonalSetOne = [NSSet setWithArray:diagonalArrayOne];
//    NSSet *diagonalSetTwo = [NSSet setWithArray:diagonalArraytwo];
//    
//    NSString *playerOne = @"X";
//    NSString *playerTwo = @"O";
//    NSString *empty = @"";
//    NSString *winner = nil;
//    //
//    if (([setOne count] == 1) && ([_rowOne containsObject:playerOne])){
//        
//        NSLog(@"PLAYERONE WINS!!!!!!!!!!!!+++++++++++++++");
//        winner = playerOne;
//             }else if (([setOne count] == 1) && ([_rowOne containsObject:playerTwo])){
//        NSLog(@"PLAYERTWO WINS!!!!!!!!!!!!");
//        winner = playerTwo;
//        }else
//    if (([setTwo count] == 1) && ([_rowTwo containsObject:playerOne])){
//        NSLog(@"PLAYERONE WINS!!!!!!!!!!!!");
//        winner = playerOne;
//        }else if (([setTwo count] == 1) && ([_rowTwo containsObject:playerTwo])){
//        NSLog(@"PLAYERTWO WINS!!!!!!!!!!!!");
//            winner = playerTwo;
//        }else
//    if (([setThree count] == 1) && ([_rowThree containsObject:playerOne])){
//        NSLog(@"PLAYERONE WINS!!!!!!!!!!!!");
//        winner = playerOne;
//        }else if (([setThree count] == 1) && ([_rowThree containsObject:playerTwo])){
//        NSLog(@"PLAYERTWO WINS!!!!!!!!!!!!");
//            winner = playerTwo;
//        }else
//    if (([verticleSetOne count] == 1) && ([verticleArrayOne containsObject:playerOne])){
//        NSLog(@"PLAYERONE WINS!!!!!!!!!!!!");
//        winner = playerOne;
//        }else if (([verticleSetOne count] == 1) && ([verticleArrayOne containsObject:playerTwo])){
//            NSLog(@"PLAYERTWO WINS!!!!!!!!!!!!");
//            winner = playerTwo;
//        }else
//    if (([verticleSetTwo count] == 1) && ([verticleArrayTwo containsObject:playerOne])){
//        NSLog(@"PLAYERONE WINS!!!!!!!!!!!!");
//        winner = playerOne;
//        }else if (([verticleSetTwo count] == 1) && ([verticleArrayTwo containsObject:playerTwo])){
//            NSLog(@"PLAYERTWO WINS!!!!!!!!!!!!");
//            winner = playerTwo;
//        }else if (([verticleSetThree count] == 1) && ([verticleArrayThree containsObject:playerOne])){
//        NSLog(@"PLAYERONE WINS!!!!!!!!!!!!");
//            winner = playerOne;
//        }else if (([verticleSetThree count] == 1) && ([verticleArrayThree containsObject:playerTwo])){
//            NSLog(@"PLAYERTWO WINS!!!!!!!!!!!!");
//            winner = playerTwo;
//        }else
//    if (([diagonalSetOne count] == 1) && ([diagonalArrayOne containsObject:playerOne])){
//        NSLog(@"PLAYERONE WINS!!!!!!!!!!!!");
//        winner = playerOne;
//        }else if (([diagonalSetOne count] == 1) && ([diagonalArrayOne containsObject:playerTwo])){
//            NSLog(@"PLAYERTWO WINS!!!!!!!!!!!!");
//            winner = playerTwo;
//        }else if (([diagonalSetTwo count] == 1) && ([diagonalArraytwo containsObject:playerOne])){
//        NSLog(@"PLAYERONE WINS!!!!!!!!!!!!");
//            winner = playerOne;
//        }else if (([diagonalSetTwo count] == 1) && ([diagonalArraytwo containsObject:playerTwo])){
//        NSLog(@"PLAYERTWO WINS!!!!!!!!!!!!");
//            winner = playerTwo;
//        }else{
//            [winner isEqualToString: empty];
//        }
//            return winner;
//            NSLog(@"%@-----------------------------------------------", winner);
//        }




NSArray *board = self.board;
     for (NSUInteger i = 0; i < 3; i++){
    if (([board[0][i] isEqualToString: board[1][i]]) && ([board[1][i] isEqualToString: board[2][i]])){
        return board[0][i];
        }else if (([board[i][0] isEqualToString: board[i][1]]) && ([board[i][1] isEqualToString: board[i][2]])){
        return board[i][0];
    }else if (([board[0][0] isEqualToString: board[1][1]]) && ([board[1][1] isEqualToString: board[2][2]])){
        return board[0][0];
    }else if (([board[0][2] isEqualToString: board[1][1]]) && ([board[1][1] isEqualToString: board[2][0]])){
        return board[0][2];
    }
       
     }
    return nil;
    NSLog(@"-----------------------------------------------");
}







-(BOOL)isADraw{
    BOOL isADraw;
    NSString *empty = @"";

    if (!([_rowOne containsObject:empty]) && !([_rowTwo containsObject:empty]) && !([_rowThree containsObject:empty])){
        isADraw = YES;
    }else{
        isADraw = NO;
    }
    return isADraw;
    
}




@end
