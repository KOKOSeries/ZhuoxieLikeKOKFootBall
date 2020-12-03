//
//  KOKPersistence.h
//  LightBoom
//
//  Created by JOY CHOW on 2020/12/3.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface KOKPersistence : NSObject
+ (void) saveObject: (NSObject*) thisObject withFileName: (NSString *) filename;
+ (id) loadObjectfromFileName: (NSString *) filename;
@end

NS_ASSUME_NONNULL_END
