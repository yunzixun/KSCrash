//
//  KSSafeCollections.m
//
//  Created by Karl Stenerud on 2012-08-21.
//
//  Copyright (c) 2012 Karl Stenerud. All rights reserved.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall remain in place
// in this source code.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//


#import "KSSafeCollections.h"


static inline id safeValue(id value)
{
    return value == nil ? [NSNull null] : value;
}

@implementation NSMutableArray (KSSafeCollections)

- (void) safeAddObject:(id) object
{
    [self addObject:safeValue(object)];
}

- (void) safeInsertObject:(id)anObject atIndex:(NSUInteger)index
{
    [self insertObject:safeValue(anObject) atIndex:index];
}

@end

@implementation NSMutableDictionary (KSSafeCollections)

- (void) safeSetObject:(id)anObject forKey:(id)aKey
{
    [self setObject:safeValue(anObject) forKey:aKey];
}

- (void) safeSetValue:(id)value forKey:(NSString *)key
{
    [self setValue:safeValue(value) forKey:key];
}

@end
