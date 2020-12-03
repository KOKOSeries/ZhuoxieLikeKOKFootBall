//
//  KOKJewel.h
//  LightBoom
//
//  Created by JOY CHOW on 2020/12/3.
//

#import <UIKit/UIKit.h>
#import "KOKGame.h"
NS_ASSUME_NONNULL_BEGIN

@interface KOKJewel : UIView
@property int myColor;

// this is the UIColor equivalent - based on a preset saturation and brightness
@property UIColor *jewelColor;
@property UIColor *jewelColorBright;
@property UIColor *jewelColorDull;

@property CGFloat red;
@property CGFloat green;
@property CGFloat blue;
@property CGFloat alpha;
@end

NS_ASSUME_NONNULL_END
