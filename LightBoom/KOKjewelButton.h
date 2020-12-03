//
//  KOKjewelButton.h
//  LightBoom
//
//  Created by JOY CHOW on 2020/12/3.
//

#import <UIKit/UIKit.h>
#import "KOKJewel.h"
NS_ASSUME_NONNULL_BEGIN

@interface KOKjewelButton : UIButton
@property KOKJewel *jewel;
@property int myColor;

-(void) fadeIn;
-(void) fadeOut;
@end

NS_ASSUME_NONNULL_END
