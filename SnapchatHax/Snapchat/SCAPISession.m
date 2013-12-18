//
//  SCAPISession.m
//  SnapchatHax
//
//  Created by Alex Nichol on 12/17/13.
//  Copyright (c) 2013 Alex Nichol. All rights reserved.
//

#import "SCAPISession.h"

@implementation SCAPISession

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@ authToken=%@, snaps=%@>", NSStringFromClass(self.class), self.authToken, self.snaps];
}

- (SCAPIRequest *)requestForBlob:(NSString *)blobIdentifier {
    NSDictionary * params = @{@"username": self.username,
                              @"id": blobIdentifier};
    return [[SCAPIRequest alloc] initWithConfiguration:self.configuration
                                                  path:@"/bq/blob"
                                                 token:self.authToken
                                            dictionary:params];
}

@end