//
//  NetworkController.h
//  Invent Value Prototype
//
//  Created by Daniel Fairbanks on 9/10/14.
//  Copyright (c) 2014 Fairbanksdan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetworkController : NSObject

-(void)handleOAuthCallbackWithURL:(NSURL *)url;

//-(void)retrieveReposForCurrentUser:(void(^)(NSMutableArray *repos))completionBlock;

-(void)requestOAuthAccess:(id)sender withCompletion:(void(^)())completionOfOAuthAccess;

-(BOOL)checkForToken;

@end
