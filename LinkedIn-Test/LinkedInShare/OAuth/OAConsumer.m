//
//  OAConsumer.m
//  OAuthConsumer
//
//  Created by Jon Crosby on 10/19/07.
//  Copyright 2007 Kaboomerang LLC. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

#import "OAConsumer.h"


@implementation OAConsumer
@synthesize key, secret, realm;

#pragma mark init

- (id)initWithKey:(const NSString *)aKey secret:(const NSString *)aSecret realm:(const NSString *)aRealm {
	[super init];
	self.key = [aKey retain];
	self.secret = [aSecret retain];
    self.realm = [aRealm retain];
	return self;
}

- (BOOL)isEqual:(id)object {
	if ([object isKindOfClass:[self class]]) {
		return [self isEqualToConsumer:(OAConsumer*)object];
	}
	return NO;
}

- (BOOL)isEqualToConsumer:(OAConsumer *)aConsumer {
	return ([self.key isEqualToString:aConsumer.key] &&
			[self.secret isEqualToString:aConsumer.secret] &&
            [self.realm isEqualToString:aConsumer.realm]);
}

-(void)encodeWithCoder:(NSCoder *)encoder{
    [encoder encodeObject:self.key forKey:@"OAConsumer_key"];
    [encoder encodeObject:self.secret forKey:@"OAConsumer_secret"];
    [encoder encodeObject:self.realm forKey:@"OAConsumer_realm"];
}

- (id)initWithCoder:(NSCoder *)decoder {
    if (self = [super init]) {
        self.key = [decoder decodeObjectForKey:@"OAConsumer_key"];
        self.secret = [decoder decodeObjectForKey:@"OAConsumer_secret"];
        self.realm = [decoder decodeObjectForKey:@"OAConsumer_realm"];
    }
    return self;
}

@end
