//
//  FISAppDelegate.m
//  WWDCBadgesMethods
//
//  Created by Chris Gonzales on 5/28/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    return YES;
}

- (NSString *)badgeForSpeaker:(NSString *)speaker {
    
    NSString *badge = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    return badge;
}


- (NSArray *)badgesForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *mSpeakers = [[NSMutableArray alloc]init];
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        NSString *badge = [NSString stringWithFormat:@"Hello, my name is %@.", speakers[i]];
        mSpeakers[i] = badge;
    }
    return mSpeakers;
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *mGreetingsAndRoomAssignments = [[NSMutableArray alloc]init];
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        NSString *badge = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i],(i+1)];
        mGreetingsAndRoomAssignments[i] = badge;
    }
    return mGreetingsAndRoomAssignments;
}

@end
