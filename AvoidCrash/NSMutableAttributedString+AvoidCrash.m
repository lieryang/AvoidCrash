//
//  NSMutableAttributedString+AvoidCrash.m
//  https://github.com/chenfanfang/AvoidCrash
//
//  Created by mac on 16/10/15.
//  Copyright © 2016年 chenfanfang. All rights reserved.
//

#import "NSMutableAttributedString+AvoidCrash.h"

#import "AvoidCrash.h"

@implementation NSMutableAttributedString (AvoidCrash)

+ (void)avoidCrashExchangeMethod {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        Class NSConcreteMutableAttributedString = NSClassFromString(@"NSConcreteMutableAttributedString");
        
        //initWithString:
        [AvoidCrash exchangeInstanceMethod:NSConcreteMutableAttributedString method1Sel:@selector(initWithString:) method2Sel:@selector(avoidCrashInitWithString:)];
        
        //initWithString:attributes:
        [AvoidCrash exchangeInstanceMethod:NSConcreteMutableAttributedString method1Sel:@selector(initWithString:attributes:) method2Sel:@selector(avoidCrashInitWithString:attributes:)];
        
        //addAttribute:value:range:
        [AvoidCrash exchangeInstanceMethod:NSConcreteMutableAttributedString method1Sel:@selector(addAttribute:value:range:) method2Sel:@selector(avoidCrashAddAttribute:value:range:)];
        
        //addAttributes:range:
        [AvoidCrash exchangeInstanceMethod:NSConcreteMutableAttributedString method1Sel:@selector(addAttributes:range:) method2Sel:@selector(avoidCrashAddAttributes:range:)];
        
        //removeAttribute:range:
        [AvoidCrash exchangeInstanceMethod:NSConcreteMutableAttributedString method1Sel:@selector(removeAttribute:range:) method2Sel:@selector(avoidCrashRemoveAttributes:range:)];

        //replaceCharactersInRange:withAttributedString:
        [AvoidCrash exchangeInstanceMethod:NSConcreteMutableAttributedString method1Sel:@selector(replaceCharactersInRange:withAttributedString:) method2Sel:@selector(avoidCrashReplaceCharactersInRange:withAttributedString:)];
        
        //insertAttributedString:atIndex:
        [AvoidCrash exchangeInstanceMethod:NSConcreteMutableAttributedString method1Sel:@selector(insertAttributedString:atIndex:) method2Sel:@selector(avoidCrashInsertAttributedString:atIndex:)];
    });
}

//=================================================================
//                          initWithString:
//=================================================================
#pragma mark - initWithString:


- (instancetype)avoidCrashInitWithString:(NSString *)str {
    id object = nil;
    
    @try {
        object = [self avoidCrashInitWithString:str];
    }
    @catch (NSException *exception) {
        NSString *defaultToDo = AvoidCrashDefaultReturnNil;
        [AvoidCrash noteErrorWithException:exception defaultToDo:defaultToDo];
    }
    @finally {
        return object;
    }
}


//=================================================================
//                     initWithString:attributes:
//=================================================================
#pragma mark - initWithString:attributes:


- (instancetype)avoidCrashInitWithString:(NSString *)str attributes:(NSDictionary<NSString *,id> *)attrs {
    id object = nil;
    
    @try {
        object = [self avoidCrashInitWithString:str attributes:attrs];
    }
    @catch (NSException *exception) {
        NSString *defaultToDo = AvoidCrashDefaultReturnNil;
        [AvoidCrash noteErrorWithException:exception defaultToDo:defaultToDo];
    }
    @finally {
        return object;
    }
}

//=================================================================
//                     addAttribute:value:range:
//=================================================================
#pragma mark - addAttribute:value:range:
- (void)avoidCrashAddAttribute:(NSAttributedStringKey)name value:(id)value range:(NSRange)range{
    @try {
        [self avoidCrashAddAttribute:name value:value range:range];
    }
    @catch (NSException *exception) {
        [AvoidCrash noteErrorWithException:exception defaultToDo:AvoidCrashDefaultIgnore];
    }
    @finally {

    }
}


//=================================================================
//                     addAttributes:range:
//=================================================================
#pragma mark - addAttributes:range:
- (void)avoidCrashAddAttributes:(NSDictionary<NSAttributedStringKey, id> *)attrs range:(NSRange)range{
    @try{
        [self avoidCrashAddAttributes:attrs range:range];
    }
    @catch (NSException *exception){
        [AvoidCrash noteErrorWithException:exception defaultToDo:AvoidCrashDefaultIgnore];
    }
    @finally {

    }
}


//=================================================================
//                     removeAttribute:range:
//=================================================================
#pragma mark - removeAttribute:range:
- (void)avoidCrashRemoveAttributes:(NSAttributedStringKey)name range:(NSRange)range{
    @try {
        [self avoidCrashRemoveAttributes:name range:range];
    }
    @catch (NSException *exception) {
        [AvoidCrash noteErrorWithException:exception defaultToDo:AvoidCrashDefaultIgnore];
    }
    @finally {

    }
}

//=================================================================
//                     replaceCharactersInRange:withAttributedString:
//=================================================================
#pragma mark - replaceCharactersInRange:withAttributedString:
- (void)avoidCrashReplaceCharactersInRange:(NSRange)range withAttributedString:(NSAttributedString *)attrString{
    @try {
        [self avoidCrashReplaceCharactersInRange:range withAttributedString:attrString];
    }
    @catch (NSException *exception) {
        [AvoidCrash noteErrorWithException:exception defaultToDo:AvoidCrashDefaultIgnore];
    }
    @finally {

    }
}

//=================================================================
//                     insertAttributedString:atIndex:
//=================================================================
#pragma mark - insertAttributedString:atIndex:
- (void)avoidCrashInsertAttributedString:(NSAttributedString *)attrString atIndex:(NSUInteger)loc{
    @try {
        [self avoidCrashInsertAttributedString:attrString atIndex:loc];
    }
    @catch (NSException *exception) {
        [AvoidCrash noteErrorWithException:exception defaultToDo:AvoidCrashDefaultIgnore];
    }
    @finally {

    }
}


@end
